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

@WebServlet("/Class")
public class Class extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Class() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Model.DAO dao=new Model.DAO();
		Connection con=dao.CON();
		String query="call classselect()";
		ArrayList<Model.Lop> classs=new ArrayList<>();
		try{
			ResultSet rs=con.prepareCall(query).executeQuery();
				while(rs.next()){
					Model.Lop clas=new Model.Lop();
					clas.setIdclass(rs.getInt(1));
					clas.setName(rs.getString(2));
					clas.setIdsubject(rs.getInt(3));
					clas.setIdteacher(rs.getInt(4));
					clas.setNamete(rs.getString(5));
					classs.add(clas);
				}
		}catch(SQLException ex){
			
		}
		request.setAttribute("lop",classs);
		request.getRequestDispatcher("/WEB-INF/jsps/TrangQuanLiClass.jsp").forward(request, response);
	}

}
