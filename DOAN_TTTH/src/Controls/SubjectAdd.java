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

@WebServlet("/SubjectAdd")
@MultipartConfig(fileSizeThreshold=1024*1024*2,maxFileSize = 1024 * 1024 * 10,
maxRequestSize = 1024 * 1024 * 50)
public class SubjectAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SubjectAdd() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Model.DAO dao=new Model.DAO();
		Connection con=dao.CON();
		List<Model.Groupsubject> names=new ArrayList<>();
		String query="select IDGROUP,NAMEGROUP from group_subject";
		try{
			ResultSet rs=con.prepareStatement(query).executeQuery(); 
			while(rs.next()){
				Model.Groupsubject name=new Model.Groupsubject()  ;
				name.setIdsubject(rs.getInt(1));
				name.setName(rs.getString(2));
				names.add(name);
			}
		}catch(SQLException e){
			
		}
		request.setAttribute("select", names);
		request.getRequestDispatcher("/WEB-INF/jsps/MonHoc.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name=request.getParameter("name");
		int idgroup=Integer.parseInt(request.getParameter("select"));
		String infor=request.getParameter("infor");
		String filename=new Model.Upload().upload("imgsubject",request);
		Model.DAO dao=new Model.DAO();
		Connection con=dao.CON();
		String query="call subjectinsert(?,?,?,?)";
		try{
			PreparedStatement stm=con.prepareStatement(query);
			stm.setString(1, name.trim());
			stm.setString(2, filename.trim());
			stm.setInt(3, idgroup);
			stm.setString(4, infor.trim());
			stm.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}
		response.sendRedirect("Subject");
	}
}
