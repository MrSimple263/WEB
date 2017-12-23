package Controls;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import Model.*;
import java.sql.*;
import java.util.ArrayList;
@WebServlet("/GroupsubjectAdd")
@MultipartConfig(fileSizeThreshold=1024*1024*2,maxFileSize = 1024 * 1024 * 10,
maxRequestSize = 1024 * 1024 * 50)
public class GroupsubjectAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public GroupsubjectAdd() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String fileName=null;
		Model.Upload upload=new Model.Upload();
		fileName=upload.upload("imggroup", request);
		String name=request.getParameter("namegroup");
		Model.DAO dao=new DAO();
		Connection con=dao.CON();
		String query="insert into group_subject(NAMEGROUP,IMG) values(N'"+name.trim()+"',N'"+fileName+"')";
		try{
			PreparedStatement stm=con.prepareStatement(query);
			stm.executeUpdate();
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		response.sendRedirect("Groupsubject");
	}
}
