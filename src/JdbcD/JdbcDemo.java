package JdbcD;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class JdbcDemo 
{
 public static void main (String args[] ) throws ClassNotFoundException, SQLException
 {
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3307/firstspring","root","root");
	 Statement st= (Statement) con.createStatement();
	 ResultSet rs= st.executeQuery("select*from login where pass='patel'");
	 rs.next();
	 String name= rs.getString("user");
	 System.out.println(name);
	 st.close();
	 con.close(); 
 }
}
