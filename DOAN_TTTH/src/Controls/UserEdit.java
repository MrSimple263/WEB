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

/**
 * Servlet implementation class UserEdit
 */
@WebServlet("/UserEdit")
public class UserEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public UserEdit() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		String query1="select * from users where IDUSERS="+id+"";
		Model.User user=new Model.User();
		try{
			Connection con=new Model.DAO().CON();
		PreparedStatement stm=con.prepareStatement(query1);
		ResultSet rs=stm.executeQuery();
		while(rs.next()){
			user.setId(rs.getInt(1));
			user.setUsername(rs.getString(2));
			user.setPass(rs.getString(3));
			user.setFullname(rs.getString(4));
			user.setAdd(rs.getString(5));
			user.setPhone(rs.getString(6));
			user.setEmail(rs.getString(7));
			user.setRole(rs.getInt(8));
			user.setImg(rs.getString(9));
		}
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		request.setAttribute("user", user);
		request.getRequestDispatcher("/WEB-INF/jsps/UserEdit.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int id=Integer.parseInt(request.getParameter("id"));
		String fullname=request.getParameter("name");
		String pass=request.getParameter("matkhau");
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String add=request.getParameter("address");
		int role=Integer.parseInt(request.getParameter("role"));
		Connection con=new Model.DAO().CON();
		String query="call userupdate(?,?,?,?,?,?,?,?,?)";
		try{
			PreparedStatement stm=con.prepareStatement(query);
			stm.setInt(1,id);
			stm.setString(2,username);
			stm.setString(3,pass);
			stm.setString(4,fullname);
			stm.setString(5,add);
			stm.setString(6,phone);
			stm.setString(7,email);
			stm.setInt(8,role);
			stm.setString(9,null);
			stm.executeUpdate();
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		response.sendRedirect("User");
	}

}
