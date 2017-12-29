package Controls;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.User;

@WebServlet("/Userupdate")
@MultipartConfig(fileSizeThreshold=1024*1024*2,maxFileSize = 1024 * 1024 * 10,
maxRequestSize = 1024 * 1024 * 50)
public class Userupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Userupdate() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int is=-1;
		int id=Integer.parseInt(request.getParameter("iduser"));
		String fullname=request.getParameter("fullname");
		String pass=request.getParameter("pass");
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String add=request.getParameter("address");
		int role=Integer.parseInt(request.getParameter("role"));
		String img=new Model.Upload().upload("imguser",request);
		Connection con=new Model.DAO().CON();
		String query="call userupdate(?,?,?,?,?,?,?,?,?)";
		try{
			PreparedStatement stm=con.prepareStatement(query);
			stm.setInt(1, id);
			stm.setString(2,username);
			stm.setString(3, pass);
			stm.setString(4, fullname);
			stm.setString(5,add);
			stm.setString(6,phone);
			stm.setString(7, email);
			stm.setInt(8, role);
			stm.setString(9, img);
			is=stm.executeUpdate();
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		if(is!=-1){
			String query1="select * from users where IDUSERS="+id+"";
			User user=new User();
			try{
			PreparedStatement stm=con.prepareStatement(query1);
			ResultSet rs1=stm.executeQuery();
			while(rs1.next()){
				user.setId(rs1.getInt(1));
				user.setUsername(rs1.getString(2));
				user.setPass(rs1.getString(3));
				user.setFullname(rs1.getString(4));
				user.setAdd(rs1.getString(5));
				user.setPhone(rs1.getString(6));
				user.setEmail(rs1.getString(7));
				user.setRole(Integer.parseInt(rs1.getString(8)));
				user.setImg(rs1.getString(9));
			}
			}catch(SQLException ex){
				
			}
			request.setAttribute("user", user);
			request.getRequestDispatcher("/WEB-INF/jsps/TrangThongTinCaNhan.jsp").forward(request, response);
		}
		
		
	}

}
