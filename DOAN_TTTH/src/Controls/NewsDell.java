package Controls;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NewsDell
 */
@WebServlet("/NewsDell")
public class NewsDell extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewsDell() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Model.DAO dao=new Model.DAO();
		Connection con=dao.CON();
		int id=Integer.parseInt(request.getParameter("id"));
		String query="delete from news where IDNEWS="+id+"";
		try{
		con.prepareStatement(query).executeUpdate();
		}catch(SQLException ex){
			
		}
		response.sendRedirect("News");
	}

}
