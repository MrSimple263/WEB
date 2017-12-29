package Controls;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/TrangXemMonHoc")
public class TrangXemMonHoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public TrangXemMonHoc() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con=new Model.DAO().CON();
		List<Model.Groupsubject> groups=new ArrayList<>();
		String query="select * from group_subject";
		try{
			ResultSet rs=con.prepareStatement(query).executeQuery();
			while(rs.next()){
				Model.Groupsubject group=new Model.Groupsubject();
				group.setIdsubject(rs.getInt(1));
				group.setName(rs.getString(2).toString());
				group.setSubjects();
				groups.add(group);
			}
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		request.setCharacterEncoding("UTF-8");
		request.setAttribute("groups",groups);
		request.getRequestDispatcher("/WEB-INF/jsps/TrangMonHoc.jsp").forward(request, response);
	}
}
