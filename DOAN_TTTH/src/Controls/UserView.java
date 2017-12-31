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


@WebServlet("/UserView")
public class UserView extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public UserView() {
        super();
       
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
		request.setAttribute("u", user);
		request.getRequestDispatcher("/WEB-INF/jsps/UserView.jsp").forward(request, response);
	}
}
