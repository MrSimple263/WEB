package Controls;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.User;
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Login() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String username=request.getParameter("taikhoan");
		String matkhau=request.getParameter("matkhau");
		User user=new User();
		Connection con=new Model.DAO().CON();
		try{
			ResultSet rs=con.prepareCall("select checklogin('"+username+"','"+matkhau+"')").executeQuery();
			int id=-1;
			while(rs.next()){
				id=rs.getInt(1);
			}
			if(id!=-1){
				
				try{
					String query="select * from users where IDUSERS="+id+"";
				PreparedStatement stm=con.prepareStatement(query);
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
					ex.printStackTrace();
				}
				request.setAttribute("user", user);
				//Lấy thông tin lop đang hoc
			switch (user.getRole()){
				case 3:{
					ArrayList<Model.Lopdanghoc> lops=new ArrayList<>();
					try{
						String query="call lopdanghoc("+user.getId()+")";
					PreparedStatement stm=con.prepareStatement(query);
					ResultSet rs1=stm.executeQuery();
					while(rs1.next()){
						Model.Lopdanghoc lop=new Model.Lopdanghoc();
						lop.setId(rs1.getInt(1));
						lop.setNameclas(rs1.getString(2));
						lop.setNamesub(rs1.getString(3));
						lops.add(lop);
					}
					}catch(SQLException ex){
						ex.printStackTrace();
					}
					request.setAttribute("lop",lops);
					break;
				}
				case 2:{
					ArrayList<Model.Lopdanghoc> lops=new ArrayList<>();
					try{
						String query="call lopdangday("+user.getId()+")";
					PreparedStatement stm=con.prepareStatement(query);
					ResultSet rs1=stm.executeQuery();
					while(rs1.next()){
						Model.Lopdanghoc lop=new Model.Lopdanghoc();
						lop.setId(rs1.getInt(1));
						lop.setNameclas(rs1.getString(2));
						lop.setNamesub(rs1.getString(3));
						lops.add(lop);
					}
					}catch(SQLException ex){
						ex.printStackTrace();
					}
					request.setAttribute("lop",lops);
					break;
				}
			}		
				request.getRequestDispatcher("/WEB-INF/jsps/TrangThongTinCaNhan.jsp").forward(request, response);
			}else{
				
			}
		}catch(SQLException ex){
			ex.printStackTrace();
		}
	
	}

}
