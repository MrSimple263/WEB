package Controls;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;

import Model.DAO;
@WebServlet("/demo")
public class demo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DAO dao=new DAO();
    public demo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String query="select * from table";
		Connection con=dao.CON();
		try{
		PreparedStatement stm=con.prepareStatement(query);
		ResultSet rs=dao.MyExcuteQuery(stm);
		}catch(SQLException ex){
			ex.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
