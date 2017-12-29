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


@WebServlet("/Giangvien")
public class Giangvien extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public Giangvien() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		Connection con=new Model.DAO().CON();
		request.setAttribute("id",id);
		request.getRequestDispatcher("/WEB-INF/jsps/TrangQuanLiGV.jsp").forward(request, response);
	}

}
