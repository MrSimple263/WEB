package Controls;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NewsAdd
 */
@WebServlet("/NewsAdd")
@MultipartConfig(fileSizeThreshold=1024*1024*2,maxFileSize = 1024 * 1024 * 10,
maxRequestSize = 1024 * 1024 * 50)
public class NewsAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public NewsAdd() {
        super();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/jsps/TrangVietTinTuc.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String title=request.getParameter("title");
		String content=request.getParameter("content"); 
		String des=request.getParameter("des");
		String fileName=null;
		Model.Upload upload=new Model.Upload();
		fileName=upload.upload("imgnews", request);
		Connection con=new Model.DAO().CON();
		String query="call newsinsert(?,?,?,?)";
		try{
			PreparedStatement stm=con.prepareStatement(query);
			stm.setString(1,title.trim());
			stm.setString(2,des.trim());
			stm.setString(3,content);
			stm.setString(4,fileName);
			stm.executeUpdate();
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		response.sendRedirect("News");
	}

}
