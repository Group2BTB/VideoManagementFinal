package utilities;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	private Connection con = null;
	public Connection getConnection() throws ClassNotFoundException, SQLException{
		Class.forName("org.postgresql.Driver");// load driver of database postgres
		/*use to connect to database*/
		con = DriverManager.getConnection("jdbc:postgresql://192.168.178.148:5432/DBVMS","postgres","72241993vichet");

		//System.out.println(con.getMetaData().getDatabaseProductName());
		return con;// return connection
	}
	
	/*public static void main(String[] args) throws ClassNotFoundException, SQLException {
		DBConnection connect = new DBConnection();
		connect.getConnection();
	}*/
}
 