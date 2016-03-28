import com.codescroll.ut.core.common.model.UtTest ; 
import com.codescroll.ut.core.common.model.TestCodeStructure ; 
import com.codescroll.ut.core.common.model.UtUserCode ; 
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

public class javaut {

   public static void main (String args[]) {
     try{
       Boolean changed = false ; 
       System.out.println(args[0]) ; 
       FileInputStream fin = new FileInputStream(args[0]);
       ObjectInputStream ois = new ObjectInputStream(fin);
       UtTest uttest = (UtTest) ois.readObject();
       
       TestCodeStructure tcs = uttest.getTestCodeStructure() ;
       UtUserCode uuc = tcs.getGlobalUserCode() ;
       UtUserCode ucs = tcs.getUserCodeStart() ;

       String usercode = uuc.getUserCode() ; 
       ois.close();

       System.out.println(usercode) ; 

       if( "" == usercode.trim() ){
         uuc.setUserCode(String.join("\r\n" , 
                                     "void testsc_ivalue(const char* name) ; ", 
                                     "void testsc_dvalue(const char* name) ; ", 
                                     "char* testsc_strvalue(const char* name) ; ", 
                                     "void testsc_eval(const char *cmd) ; ",
                                     "void testsc_init(int testnum, const char *cmd, const char *homepath ) ; "  
                                     )) ;
         changed = true ; 
       }

       usercode = ucs.getUserCode() ; 

       if( "" == usercode.trim() ){

         String uc =
           String.join("\r\n" ,
                       String.format("testsc_init(CS_TESTCASENO(), \"(testsc-require %s/t-0)\")", args[1]) , 
                       String.format("testsc_eval( \"(testsc-require %s/t-%x)\")", args[1], args[2]), 
                     )         
         ucs.setUserCode(uc) ; 
         changed = true ; 
       }
       
       if(changed){
         ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(args[0]));
         oos.writeObject(uttest) ;
       }
       else{
         System.out.println(String.format("%s file not changed", args[0])) ;
       }
         
       
     }
     catch(Exception ex){
       ex.printStackTrace() ; 
     }
   }

}
