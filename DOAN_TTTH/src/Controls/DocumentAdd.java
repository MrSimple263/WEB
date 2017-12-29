package Controls;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DocumentAdd")
public class DocumentAdd extends HttpServlet {
	private static final long serialVersionUID = 1L; 
    public DocumentAdd() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.getRequestDispatcher("/WEB-INF/jsps/DocumentAdd.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String des=request.getParameter("des");
		String link=request.getParameter("link");
		int idclass=Integer.parseInt(request.getParameter("idclass"));
		Connection con= new Model.DAO().CON();
		try{
			String query="insert into document(DESCRIPTION,LINK,IDCLASS)"
					+ "values('"+des+"','"+link+"',"+idclass+")";
			con.prepareStatement(query).executeUpdate();
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		response.sendRedirect("Document?id="+idclass+"");
	}

}
