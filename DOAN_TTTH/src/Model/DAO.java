package Model;

import java.sql.*;



public class DAO {
	Connection con = null;  
	Statement stmt = null;
	public DAO(){
		con = null;  
	    stmt = null; 
	    try{
	    	Class.forName("com.mysql.jdbc.Driver");  
	    	con = (Connection) DriverManager
	    			.getConnection("jdbc:mysql://localhost:3306/qlttth","root", "root");
	    }catch(Exception e){
	    	e.printStackTrace();
	    }
	}
	public Connection CON(){
		return con;
	}
}
