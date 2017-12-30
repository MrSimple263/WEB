package Controls;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/VideoDel")
public class VideoDel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public VideoDel() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		int idclass=Integer.parseInt(request.getParameter("idclass"));
		Connection con= new Model.DAO().CON();
		try{
			String query="delete from video where IDVIDEO="+id+"";
			con.prepareStatement(query).executeUpdate();
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		response.sendRedirect("Video?id="+idclass+"");
	}

}
