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
       System.out.println(args[0]) ; 
       FileInputStream fin = new FileInputStream(args[0]);
       ObjectInputStream ois = new ObjectInputStream(fin);
       UtTest uttest = (UtTest) ois.readObject();
       
       TestCodeStructure tcs = uttest.getTestCodeStructure() ;
       UtUserCode uuc = tcs.getGlobalUserCode() ; 
       System.out.println(uuc.getUserCode()) ; 
       ois.close();
       
       uuc.setUserCode(String.join("\r\n" , 
                                   "void testsc_track_set(uint32_t id, network_track_data_ptr t ) ; " , 
                                   "void testsc_init(int testnum, const char *cmd, const char *homepath ) ; " , 
                                   "void testsc_eval(const char *cmdxx) ; ")) ;
       // tcs.setGlobalUserCode(uuc) ; 
       // uttest.setTestCodeStructure(tcs) ; 

       ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(args[0]));
       oos.writeObject(uttest) ; 
       
     }
     catch(Exception ex){
       ex.printStackTrace() ; 
     }
   }

}
