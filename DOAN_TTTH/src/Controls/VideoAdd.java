package Controls;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/VideoAdd")
public class VideoAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public VideoAdd() {
        super();
      
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/jsps/VideoAdd.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String des=request.getParameter("des");
		String link=request.getParameter("link");
		String name=request.getParameter("name");
		int idclass=Integer.parseInt(request.getParameter("idclass"));
		Connection con= new Model.DAO().CON();
		try{
			String query="insert into video(DESCRIPTION,LINK,IDCLASS,NAME)"
					+ "values('"+des+"','"+link+"',"+idclass+",'"+name+"')";
			con.prepareStatement(query).executeUpdate();
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		response.sendRedirect("Video?id="+idclass+"");
	}

}
