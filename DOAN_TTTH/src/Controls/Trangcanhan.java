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
import Model.*;

@WebServlet("/Trangcanhan")
public class Trangcanhan extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Trangcanhan() {
        super();
   
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DAO dao=new DAO();
		Connection con=null;
		User user=new User();
		con=dao.CON();
		String query="select * from users";
		try{
		PreparedStatement stm=con.prepareStatement(query);
		ResultSet rs=stm.executeQuery();
		while(rs.next()){
			user.setId(rs.getInt(1));
			user.setUsername(rs.getString(2));
			user.setPass(rs.getString(3));
			user.setFullname(rs.getString(4));
			user.setAdd(rs.getString(5));
			user.setPhone(rs.getString(6));
			user.setEmail(rs.getString(7));
			user.setImg(rs.getString(9));
		}
		}catch(SQLException ex){
			
		}
		request.setAttribute("user", user);
		request.getRequestDispatcher("/WEB-INF/jsps/TrangThongTinCaNhan.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
