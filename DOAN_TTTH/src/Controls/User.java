package Controls;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/User")
public class User extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public User() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String query1="select * from users";
		
		ArrayList<Model.User> users=new ArrayList<>();
		try{
			Connection con=new Model.DAO().CON();
		PreparedStatement stm=con.prepareStatement(query1);
		ResultSet rs1=stm.executeQuery();
		while(rs1.next()){
			Model.User user=new Model.User();
			user.setId(rs1.getInt(1));
			user.setUsername(rs1.getString(2));
			user.setFullname(rs1.getString(4));
			user.setEmail(rs1.getString(7));
			users.add(user);
		}
		}catch(SQLException ex){
			
		}
		request.setAttribute("user", users);
		request.getRequestDispatcher("/WEB-INF/jsps/QuanLiCacUser.jsp").forward(request, response);
	}

}
