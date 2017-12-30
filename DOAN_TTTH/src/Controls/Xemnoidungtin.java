package Controls;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.DAO;
@WebServlet("/Xemnoidungtin")
public class Xemnoidungtin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Xemnoidungtin() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		DAO dao=new DAO();
		Connection con=dao.CON();
		String query="select CONTENT from news where IDNEWS="+id+"";
		try{
			PreparedStatement stm=con.prepareStatement(query);
			ResultSet rs=stm.executeQuery();
			String content="adadas";
			while(rs.next()){
				content=rs.getString(1);
			}
			System.out.println(content);
			request.setAttribute("news",content);
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		request.getRequestDispatcher("WEB-INF/jsps/Xemnoidungtin.jsp").forward(request, response);
	}
}
