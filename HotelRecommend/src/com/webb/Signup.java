package com.webb;



public class Signup{
	private int id;
	private String uname;
	private String uemail;
	private String pid;
	private String uno;
	private String user;
	private String upass;
	

	public Signup(int id, String uname,String uemail,String pid,String uno,String user,String upass){
         this.id = id;
	     this.uname = uname;
	     this.uemail = uemail;
	     this.pid = pid;
	     this.uno = uno;
	     this.user = user;
	     this.upass = upass;
	    
		
		
	}
	
	public Signup(String uname,String uemail,String pid,String uno,String user,String upass){
        
	     this.uname = uname;
	     this.uemail = uemail;
	     this.pid = pid;
	     this.uno = uno;
	     this.user = user;
	     this.upass = upass;
		
		
	}
	
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUemail() {
		return uemail;
	}

	public void setUemail(String uemail) {
		this.uemail = uemail;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getUno() {
		return uno;
	}

	public void setUno(String uno) {
		this.uno = uno;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getUpass() {
		return upass;
	}

	public void setUpass(String upass) {
		this.upass = upass;
	}
	
	
	

public Signup(){
	
}

}
