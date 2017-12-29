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

@WebServlet("/Document")
public class Document extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Document() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		Connection con=new Model.DAO().CON();
		try{
			String query="select * from document where IDCLASS="+id+"";
			ResultSet rs=con.prepareStatement(query).executeQuery();
			ArrayList<Model.Document> docs=new ArrayList<>();
			while(rs.next()){
				Model.Document doc=new Model.Document();
				doc.setId(rs.getInt(1));
				doc.setDes(rs.getString(2));
				doc.setLink(rs.getString(3));
				docs.add(doc);
			}
			request.setAttribute("doc",docs);
			request.setAttribute("idclass",id);
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		request.getRequestDispatcher("/WEB-INF/jsps/Document.jsp").forward(request, response);
	}

}
