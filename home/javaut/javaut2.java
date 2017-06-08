import com.codescroll.ut.core.common.model.UtTest ; 
import com.codescroll.ut.core.common.model.TestCodeStructure ; 
import com.codescroll.ut.core.common.model.UtUserCode ; 
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

public class javaut2 {

   public static void main (String args[]) {
     try{
       
       Boolean changed = false ; 
       FileInputStream fin = new FileInputStream(args[0]);
       ObjectInputStream ois = new ObjectInputStream(fin);
       UtTest uttest = (UtTest) ois.readObject();
       
       TestCodeStructure tcs = uttest.getTestCodeStructure() ;
       UtUserCode uuc = tcs.getGlobalUserCode() ;
       UtUserCode ucs = tcs.getUserCodeStart() ;

       String usercode = uuc.getUserCode().trim() ; 
       ois.close();
       String compare = String.join("\n" , 
                   "long testsc_ivalue(const char* name) ; ", 
                   "double testsc_dvalue(const char* name) ; ", 
                   "char* testsc_strvalue(const char* name) ; ",
                   "int testsc_admin_length( void ) ;",
                   "void testsc_admin_erase(int index ) ;",
                   "void testsc_track_set(uint32_t id , network_track_data_ptr t ) ;",
                   "void testsc_eval(const char *cmd) ; ",
                   "void testsc_init(int testnum, const char *cmd, const char *homepath ) ; "  
                                    ).trim() ; 

       String comp2 = "void testsc_init(int testnum, const char *cmd, const char *homepath = 0) ;" ;
       comp2 = comp2.trim() ; 
       System.out.println(usercode) ; 
       System.out.println(usercode.length()) ; 
       System.out.println(compare.length()) ; 
       
       if( compare.equals( usercode.trim()  ) || usercode.trim().length() == 0 ) {
         uuc.setUserCode("#include \"link11_sc.h\"") ; 
         changed = true ; 
       }
       if( comp2.equals( usercode.trim()  ) || usercode.trim().length() == 0 ) {
         uuc.setUserCode("#include \"link11_sc.h\"") ; 
         changed = true ; 
       }

         // usercode = ucs.getUserCode() ; 

         // String [] sarray = usercode.split("\n") ;

         // for(int i = 0 ; i < sarray.length; i++){
         //   sarray[i] += ";" ; 
         // }

         //   String uc = String.join("\r\n" ,sarray) ;          
         //  ucs.setUserCode(uc) ; 
         //   changed = true ; 
         //   System.out.println(uc) ; 
       
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
