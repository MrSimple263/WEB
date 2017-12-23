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
import Model.DAO;

@WebServlet("/Groupsubject")
public class Groupsubject extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public Groupsubject() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DAO dao=new DAO();
		Connection con=dao.CON();
		ArrayList<Model.Groupsubject> groupsubjects=new ArrayList<>();
		String query="select * from group_subject";
		try{
			PreparedStatement stm=con.prepareStatement(query);
			ResultSet rs=stm.executeQuery();
			while(rs.next()){
				Model.Groupsubject groupsubject=new Model.Groupsubject();
				groupsubject.setIdsubject(rs.getInt(1));
				groupsubject.setName(rs.getString(2));
				groupsubject.setImg(rs.getString(3));
				groupsubjects.add(groupsubject);
			}
		}catch(SQLException ex){
			
		}
		request.setAttribute("group", groupsubjects);
		request.getRequestDispatcher("WEB-INF/jsps/TrangQuanLiNhomMonHoc.jsp").forward(request, response);
	}

}
