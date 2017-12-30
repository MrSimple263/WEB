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

/**
 * Servlet implementation class XemTinTuc
 */
@WebServlet("/XemTinTuc")
public class XemTinTuc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public XemTinTuc() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DAO dao=new DAO();
		Connection con=dao.CON();
		List<Model.News> listnews=new ArrayList<>();
		String query="select * from news";
		try{
			PreparedStatement stm=con.prepareStatement(query);
			ResultSet rs=stm.executeQuery();
			while(rs.next()){
				Model.News news=new Model.News();
				news.setId(rs.getInt(1));
				news.setTitle(rs.getString(2));
				news.setDescri(rs.getString(3));
				news.setImg(rs.getString(5));
				news.setDate(rs.getDate(6).toString());
				listnews.add(news);
			}
		}catch(SQLException ex){
			
		}
		request.setAttribute("listnews",listnews);
		request.getRequestDispatcher("WEB-INF/jsps/TrangTinTuc.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
