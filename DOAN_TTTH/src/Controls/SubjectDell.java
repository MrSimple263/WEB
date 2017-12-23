package Controls;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SubjectDell")
public class SubjectDell extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SubjectDell() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		Connection con=new Model.DAO().CON();
		String query="call subjectdell("+id+")";
		try{
			con.prepareStatement(query).executeUpdate();
		}catch(SQLException ex){
			
		}
		response.sendRedirect("Subject");
	}

}
