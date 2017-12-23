package Controls;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SubjectEdit")
@MultipartConfig(fileSizeThreshold=1024*1024*2,maxFileSize = 1024 * 1024 * 10,
maxRequestSize = 1024 * 1024 * 50)
public class SubjectEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SubjectEdit() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		Connection con=new Model.DAO().CON();
		List<Model.Groupsubject> names=new ArrayList<>();	
		try{
			String query="select * from group_subject";
			ResultSet rs=con.prepareStatement(query).executeQuery(); 
			while(rs.next()){
				Model.Groupsubject name=new Model.Groupsubject()  ;
				name.setIdsubject(rs.getInt(1));
				name.setName(rs.getString(2));
				name.setImg(rs.getString(3));
				names.add(name);
			}
		}catch(SQLException e){
			
		}
		
		Model.Subject subject=new Model.Subject();
		try{
			String query="select * from subject where IDSUBJECT="+id+"";
			ResultSet rs=con.prepareStatement(query).executeQuery(); 
			while(rs.next()){
				subject.setName(rs.getString(2));
				subject.setImg(rs.getString(3));
				subject.setIdgroup(rs.getInt(4));
				subject.setInfor(rs.getString(5));
			}
		}catch(SQLException ex){
			
		}
		request.setAttribute("select", names);
		request.setAttribute("subject", subject);
		request.setAttribute("id", id);
		request.getRequestDispatcher("/WEB-INF/jsps/MonHocEdit.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int id=Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("name");
		int idgroup=Integer.parseInt(request.getParameter("select"));
		String infor=request.getParameter("infor");
		String filename=new Model.Upload().upload("imgsubject",request);
		Model.DAO dao=new Model.DAO();
		Connection con=dao.CON();
		String query="call subjectupdate(?,?,?,?,?)";
		try{
			PreparedStatement stm=con.prepareStatement(query);
			stm.setInt(1, id);
			stm.setString(2, name.trim());
			stm.setString(3, filename.trim());
			stm.setInt(4, idgroup);
			stm.setString(5, infor.trim());
			stm.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}
		response.sendRedirect("Subject");
	}

}
