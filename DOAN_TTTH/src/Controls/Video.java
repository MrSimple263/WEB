package Controls;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Video")
public class Video extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public Video() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		Connection con=new Model.DAO().CON();
		try{
			String query="select * from video where IDCLASS="+id+"";
			ResultSet rs=con.prepareStatement(query).executeQuery();
			ArrayList<Model.Video> vids=new ArrayList<>();
			while(rs.next()){
				Model.Video vid=new Model.Video();
				vid.setId(rs.getInt(1));
				vid.setDes(rs.getString(2));
				vid.setLink(rs.getString(3));
				vid.setName(rs.getString(5));
				vids.add(vid);
			}
			request.setAttribute("video",vids);
			request.setAttribute("idclass",id);
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		request.getRequestDispatcher("/WEB-INF/jsps/Video.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
