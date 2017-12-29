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

/**
 * Servlet implementation class DocumentEdit
 */
@WebServlet("/DocumentEdit")
public class DocumentEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DocumentEdit() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		int idclass=Integer.parseInt(request.getParameter("idclass"));
		Connection con=new Model.DAO().CON();
		try{
			String query="select * from document where IDDOCUMENT="+id+"";
			ResultSet rs=con.prepareStatement(query).executeQuery();
			Model.Document doc=new Model.Document();
			while(rs.next()){
				doc.setId(rs.getInt(1));
				doc.setDes(rs.getString(2));
				doc.setLink(rs.getString(3));
			}
			request.setAttribute("doc",doc);
			request.setAttribute("idclass",id);
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		request.getRequestDispatcher("/WEB-INF/jsps/DocumentEdit.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String des=request.getParameter("des");
		String link=request.getParameter("link");
		int idclass=Integer.parseInt(request.getParameter("idclass"));
		int id=Integer.parseInt(request.getParameter("id"));
		Connection con= new Model.DAO().CON();
		try{
			String query="update document set DESCRIPTION='"+des+"',"
					+ "LINK='"+link+"',IDCLASS="+idclass+""
							+ " where IDDOCUMENT="+id+"";
			con.prepareStatement(query).executeUpdate();
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		response.sendRedirect("Document?id="+idclass+"");
	}

}
