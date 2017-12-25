package Controls;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.mysql.fabric.xmlrpc.base.Array;

@WebServlet("/Userinclass")
public class Userinclass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Userinclass() {
        super();
        // TODO Auto-generated constructor stub
    }
    int idclass;
    List<String> list=new ArrayList<>();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			idclass=Integer.parseInt(request.getParameter("idclass"));		
			list.clear();
			Connection con=new Model.DAO().CON();
			String query="select IDSTUDENT from student_class where IDCLASS="+idclass+"";
			try{
				ResultSet rs=con.prepareStatement(query).executeQuery();
				while(rs.next()){
					list.add(""+rs.getInt(1));
				}
			}catch(SQLException ex){
				ex.printStackTrace();
			}
			String json = new Gson().toJson(list);
		    response.setContentType("application/json");
		    response.setCharacterEncoding("UTF-8");
			response.getWriter().write(json);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String[] listuser = request.getParameterValues("listuser[]");
		List<String> listusermoi=new ArrayList<String>(Arrays.asList(listuser));
		List<String> listthem=new ArrayList<>();
		List<String> listxoa=new ArrayList<>();
		for(String str:listuser){
			if(!list.contains(str)&& !str.equals("")){
				listthem.add(str);
			}
		}
		for(String str:list){
			if(!listusermoi.contains(str)){
				listxoa.add(str);
			}
		}
		//Them vao bang student_class
		Connection con=new Model.DAO().CON();
		for(String str:listthem){
			System.out.println("day them:");
			System.out.println(str);
			String query="insert into student_class values("+Integer.parseInt(str)+","+idclass+")";
			try{
				con.prepareStatement(query).executeUpdate(query);
			}catch(SQLException ex){
				ex.printStackTrace();
			}
		}
		for(String str:listxoa){
			System.out.println(str);
			String query="delete from student_class where IDSTUDENT='"+Integer.parseInt(str)+"' and IDCLASS='"+idclass+"'";
			try{
				con.prepareStatement(query).executeUpdate(query);
			}catch(SQLException ex){
				ex.printStackTrace();
			}
		}
		
	}

}
