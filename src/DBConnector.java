import java.sql.DriverManager;
import java.sql.Connection;
public class DBConnector {
	public static Connection connect(){
		Connection con = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/affinityfinder","root","");
		}catch(Exception e){
			e.printStackTrace();
		}
	return con;
	}
}
