package Controls;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 * Servlet implementation class GroupsubjectDel
 */
@WebServlet("/GroupsubjectDel")
public class GroupsubjectDel extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public GroupsubjectDel() {
        super();
        
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Model.DAO dao=new Model.DAO();
		Connection con=dao.CON();
		int id=Integer.parseInt(request.getParameter("id"));
		String query="call  deletegroup("+id+")";
		try{
		con.prepareStatement(query).executeUpdate();
		}catch(SQLException ex){
			
		}
		response.sendRedirect("Groupsubject");
		
	}
}
