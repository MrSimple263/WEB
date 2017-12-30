package Controls;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserAdd")
public class UserAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserAdd() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/jsps/Dangki.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name=request.getParameter("name");
		String username=null;
		String pass=request.getParameter("matkhau");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String add=request.getParameter("add");
		int role=Integer.parseInt(request.getParameter("role"));
		Connection con=new Model.DAO().CON();
		try{
			String query="SELECT AUTO_INCREMENT "
					+ "FROM information_schema.TABLES "
					+ "WHERE TABLE_SCHEMA = 'qlttth' "
					+ "AND TABLE_NAME = 'users'";
			ResultSet rs=con.prepareStatement(query).executeQuery();
			while(rs.next()){
				username="user000"+rs.getInt(1);
			}
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		try{
			String query="call userinsert(?,?,?,?,?,?,?,?)";
			PreparedStatement stm=con.prepareStatement(query);
			stm.setString(1,username);
			stm.setString(2,pass);
			stm.setString(3,name);
			stm.setString(4,add);
			stm.setString(5,phone);
			stm.setString(6,email );
			stm.setString(8,null);
			stm.setInt(7, role);
			stm.executeUpdate();
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		response.sendRedirect("User");
	}

}
