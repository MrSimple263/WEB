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



@WebServlet("/ClassAdd")
public class ClassAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ClassAdd() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Model.DAO dao=new Model.DAO();
		Connection con=dao.CON();
		String query="select * from subject";
		ArrayList<Model.Subject> subjects=new ArrayList<>();
		try{
			ResultSet rs=con.prepareCall(query).executeQuery();
				while(rs.next()){
					Model.Subject subject=new Model.Subject();
					subject.setIdsubject(rs.getInt(1));
					subject.setName(rs.getString(2));
					subjects.add(subject);
				}
		}catch(SQLException ex){
			
		}
		request.setAttribute("subject", subjects);
		
		String query2="select * from users where role=2";
		ArrayList<Model.User> teachers=new ArrayList<>();
		try{
			ResultSet rs=con.prepareCall(query2).executeQuery();
				while(rs.next()){
					Model.User teacher=new Model.User();
					teacher.setId(rs.getInt(1));
					teacher.setFullname(rs.getString(4));
					teachers.add(teacher);
				}
		}catch(SQLException ex){
			
		}
		request.setAttribute("teacher", teachers);
	
		
		
		String nameclass=null;
		String query4="SELECT AUTO_INCREMENT "
				+ "FROM information_schema.TABLES "
				+ "WHERE TABLE_SCHEMA = 'qlttth' "
				+ "AND TABLE_NAME = 'class'";
		try{
			ResultSet rs=con.prepareStatement(query4).executeQuery();
			while(rs.next()){
				nameclass="CLASS_"+rs.getInt(1);
			}
		}catch(SQLException ex){
			
		}
		request.setAttribute("name", nameclass);
		request.getRequestDispatcher("/WEB-INF/jsps/ThemLop.jsp").forward(request, response);
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int idsub=Integer.parseInt(request.getParameter("monhoc"));
		int idtea=Integer.parseInt(request.getParameter("gv"));
		String nameclass=request.getParameter("name");
		Model.DAO dao=new Model.DAO();
		Connection con=dao.CON();
		String query="call classadd(?,?,?)";
		try{
			PreparedStatement stm=con.prepareStatement(query);
			stm.setString(1,nameclass.trim());
			stm.setInt(2, idsub);
			stm.setInt(3, idtea);
			stm.executeUpdate();
		}catch(SQLException ex){
			
		}
		response.sendRedirect("Class");
	}

}
