package Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Groupsubject {
	int idsubject=-1;
	String name=null;
	String img=null;
	List<Subject> subjects=new ArrayList<>();
	public List<Subject> getSubjects() {
		return subjects;
	}
	public void setSubjects() {
		DAO dao=new DAO();
		Connection con=dao.CON();
		String query="select * from subject where IDGROUP="+idsubject+"";
		try{
			ResultSet rs=con.prepareStatement(query).executeQuery();
			while(rs.next()){
				Subject sb=new Subject();
				sb.setIdsubject(rs.getInt(1));
				sb.setName(rs.getString(2));
				sb.setImg(rs.getString(3));
				sb.setInfor(rs.getString(5));
				this.subjects.add(sb);
			}
		}catch(SQLException ex){
			
		}
	}
	public Groupsubject(){
		
	}
	public int getIdsubject() {
		return idsubject;
	}
	public void setIdsubject(int idsubject) {
		this.idsubject = idsubject;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
}
