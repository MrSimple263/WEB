package Controls;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class VideoEdit
 */
@WebServlet("/VideoEdit")
public class VideoEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public VideoEdit() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		int idclass=Integer.parseInt(request.getParameter("idclass"));
		Connection con=new Model.DAO().CON();
		try{
			String query="select * from video where IDVIDEO="+id+"";
			ResultSet rs=con.prepareStatement(query).executeQuery();
			Model.Video vid=new Model.Video();
			while(rs.next()){
				vid.setId(rs.getInt(1));
				vid.setDes(rs.getString(2));
				vid.setLink(rs.getString(3));
				vid.setName(rs.getString(5));
			}
			request.setAttribute("video",vid);
			request.setAttribute("idclass",id);
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		request.getRequestDispatcher("/WEB-INF/jsps/VideoEdit.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String des=request.getParameter("des");
		String link=request.getParameter("link");
		String name=request.getParameter("name");
		int idclass=Integer.parseInt(request.getParameter("idclass"));
		int id=Integer.parseInt(request.getParameter("id"));
		Connection con= new Model.DAO().CON();
		try{
			String query="update video set DESCRIPTION='"+des+"',"
					+ "LINK='"+link+"',IDCLASS="+idclass+",NAME='"+name+"'"
							+ " where IDVIDEO="+id+"";
			con.prepareStatement(query).executeUpdate();
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		response.sendRedirect("Video?id="+idclass+"");
	}

}
