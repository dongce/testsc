import com.codescroll.ut.core.common.UtTest
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

public class javaut {

   public static void main (String args[]) {
       FileInputStream fin = new FileInputStream(args[1]);
       ObjectInputStream ois = new ObjectInputStream(fin);
       UtTest uttest = (UtTest) ois.readObject();

       System.output.println(uttest.testCodeStructure.globalUserCode.userCode) ; 

       ois.close();
   }

}
