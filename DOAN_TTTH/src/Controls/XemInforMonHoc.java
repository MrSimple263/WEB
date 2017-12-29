package Controls;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/XemInforMonHoc")
public class XemInforMonHoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public XemInforMonHoc() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		Connection con=new Model.DAO().CON();
		try{
			String query="select infor from subject where IDSUBJECT="+id+"";
			ResultSet rs=con.prepareStatement(query).executeQuery();
			while(rs.next()){
				request.setAttribute("infor",rs.getString(1));
				request.getRequestDispatcher("/WEB-INF/jsps/XemChiTietMonHoc.jsp").forward(request, response);
			}
			
		}catch(SQLException ex){
			ex.printStackTrace();
		}
	}

}
