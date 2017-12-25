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


@WebServlet("/ClassEdit")
public class ClassEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ClassEdit() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("idclass"));
		Model.DAO dao=new Model.DAO();
		Connection con=dao.CON();
		String query="call hocsinhcotronglop("+id+")";
		ArrayList<Model.User> users=new ArrayList<>();
		try{
			ResultSet rs=con.prepareStatement(query).executeQuery();
				while(rs.next()){
					Model.User user=new Model.User();
					user.setId(rs.getInt(1));
					user.setUsername(rs.getString(2));
					user.setFullname(rs.getString(3));
					users.add(user);
				}
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		request.setAttribute("user", users);
		
		String query2="call hocsinhkocotronglop("+id+")";
		ArrayList<Model.User> usersout=new ArrayList<>();
		try{
			ResultSet rs=con.prepareStatement(query2).executeQuery();
				while(rs.next()){
					Model.User user=new Model.User();
					user.setId(rs.getInt(1));
					user.setUsername(rs.getString(2));
					user.setFullname(rs.getString(3));
					usersout.add(user);
				}
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		request.setAttribute("userout", usersout);
		
		String query3="select * from subject";
		ArrayList<Model.Subject> subjects=new ArrayList<>();
		try{
			ResultSet rs=con.prepareCall(query3).executeQuery();
				while(rs.next()){
					Model.Subject subject=new Model.Subject();
					subject.setIdsubject(rs.getInt(1));
					subject.setName(rs.getString(2));
					subjects.add(subject);
				}
		}catch(SQLException ex){
			
		}
		request.setAttribute("subject", subjects);
		
		String query4="select * from users where role=2";
		ArrayList<Model.User> teachers=new ArrayList<>();
		try{
			ResultSet rs=con.prepareCall(query4).executeQuery();
				while(rs.next()){
					Model.User teacher=new Model.User();
					teacher.setId(rs.getInt(1));
					teacher.setFullname(rs.getString(4));
					teachers.add(teacher);
				}
		}catch(SQLException ex){
			
		}
		request.setAttribute("teacher", teachers);
	
		request.getRequestDispatcher("WEB-INF/jsps/LopEdit.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Model.DAO dao=new Model.DAO();
		Connection con=dao.CON();
		int idclass=Integer.parseInt(request.getParameter("idclass"));
		int idsub=Integer.parseInt(request.getParameter("monhoc"));
		int idteacher=Integer.parseInt(request.getParameter("gv"));
		String query="update class set IDSUBJECT="+idsub+",IDTEACHER="+idteacher+""
				+ " where IDCLASS="+idclass+"";
		try{
			con.prepareCall(query).executeUpdate();
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		response.sendRedirect("Class");
	}

}
