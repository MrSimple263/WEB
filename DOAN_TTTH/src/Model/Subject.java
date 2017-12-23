package Model;

public class Subject {
	int idsubject=-1;
	String name=null;
	String img=null;
	String namegroup=null;
	String infor=null;
	int idgroup;
	public Subject(){
		
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
	public String getInfor() {
		return infor;
	}
	public void setInfor(String infor) {
		this.infor = infor;
	}
	public String getNamegroup() {
		return namegroup;
	}
	public void setNamegroup(String namegroup) {
		this.namegroup = namegroup;
	}
	public int getIdgroup() {
		return idgroup;
	}
	public void setIdgroup(int idgroup) {
		this.idgroup = idgroup;
	}
	
	
}
