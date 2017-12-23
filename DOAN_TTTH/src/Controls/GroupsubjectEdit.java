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

import com.google.gson.Gson;


@WebServlet("/GroupsubjectEdit")
@MultipartConfig(fileSizeThreshold=1024*1024*2,maxFileSize = 1024 * 1024 * 10,
maxRequestSize = 1024 * 1024 * 50)
public class GroupsubjectEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GroupsubjectEdit() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		List<String> list = new ArrayList<>();
		Model.DAO dao=new Model.DAO();
		Connection con=dao.CON();
		String query="select * from group_subject where IDGROUP="+id+"";
		try{
			ResultSet rs=con.prepareStatement(query).executeQuery();
			while(rs.next()){
				list.add(""+rs.getInt(1));
				list.add(rs.getString(2));
				list.add(rs.getString(3));
			}
		}catch(SQLException ex){
			
		}
		String json = new Gson().toJson(list);
	    response.setContentType("application/json");
	    response.setCharacterEncoding("UTF-8");
		response.getWriter().write(json);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			String fileName=new Model.Upload().upload("imggroup", request);
			int id=Integer.parseInt(request.getParameter("id"));
			String name=request.getParameter("namegroup");
			Connection con=new Model.DAO().CON();
			String query="call groupupdate(?,?,?)";
			try{
				PreparedStatement stm=con.prepareStatement(query);
				stm.setInt(1,id);
				stm.setNString(2, name.trim());
				stm.setString(3,fileName);
				stm.executeUpdate();
			}catch(SQLException ex){
				
			}
			response.sendRedirect("Groupsubject");
	}
}
