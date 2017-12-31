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

@WebServlet("/Subject")
public class Subject extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Subject() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DAO dao=new DAO();
		Connection con=dao.CON();
		ArrayList<Model.Subject> subjects=new ArrayList<>();
		String query="call subjectselect()";
		try{
			PreparedStatement stm=con.prepareStatement(query);
			ResultSet rs=stm.executeQuery();
			while(rs.next()){
				Model.Subject subject=new Model.Subject();
				subject.setIdsubject(rs.getInt(1));
				subject.setName(rs.getString(2));
				subject.setNamegroup(rs.getString(3));
				subjects.add(subject);
			}
		}catch(SQLException ex){
			
		}
		request.setAttribute("subject", subjects);
		request.getRequestDispatcher("WEB-INF/jsps/TrangQuanLiMonHoc.jsp").forward(request, response);
	}
	

}
