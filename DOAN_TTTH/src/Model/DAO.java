package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class DAO {
	Connection con = null;  
	Statement stmt = null;
	public DAO(){
		con = null;  
	    stmt = null; 
	    try{
	    	Class.forName("com.mysql.jdbc.Driver");  
	    	con = DriverManager
	    			.getConnection("jdbc:mysql://localhost:3306/qlttth","root", "root");
	    	System.out.println("ket noi thanh cong");
	    }catch(Exception e){
	    	e.printStackTrace();
	    }
	}
	public ResultSet MyExcuteQuery(PreparedStatement stm){
		ResultSet rs=null;
		try{
			rs= stm.executeQuery();
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		return rs;
	}
	public int MyExcuteUpdate(PreparedStatement stm){
		int i=0;
		try{
			i=stm.executeUpdate();
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		return i;
	}
	public Connection CON(){
		return con;
	}
}
