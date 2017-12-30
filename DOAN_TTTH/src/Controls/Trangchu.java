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
import Model.DAO;
/**
 * Servlet implementation class Trangchu
 */
@WebServlet("/Trangchu")
public class Trangchu extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DAO dao=new DAO();
    public Trangchu() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con=new Model.DAO().CON();
		String query="select NAME,IDSUBJECT from subject where IDGROUP is not null";
		ArrayList<String>names=new ArrayList<>();
		ArrayList<String>ids=new ArrayList<>();
		try{
			ResultSet rs=con.prepareStatement(query).executeQuery();
			while(rs.next()){
				names.add(rs.getString(1));
				ids.add(""+rs.getInt(2));
			}
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		request.setAttribute("subject",names);
		request.setAttribute("id",ids);
		request.getRequestDispatcher("/WEB-INF/jsps/Giaodien.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
