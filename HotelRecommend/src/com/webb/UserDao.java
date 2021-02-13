package com.webb;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.webb.Signup;



public class UserDao {
	
	private Connection con;
	public UserDao(Connection con)
	{
		this.con = con;
	}
	
	public boolean saveUser(Signup user1) {
		boolean f = false;
		try {
			String query = "Insert into signup(uname,uemail,pid,uno,user,upass) values(?,?,?,?,?,?)";
			PreparedStatement pstmt = this.con.prepareStatement(query);
			pstmt.setString(1,user1.getUname());
			pstmt.setString(2,user1.getUemail());
			pstmt.setString(3,user1.getPid());
			pstmt.setString(4,user1.getUno());
			pstmt.setString(5,user1.getUser());
			pstmt.setString(6,user1.getUpass());
			pstmt.executeUpdate();
			f = true;
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return f;
		
	}
	
	public Signup getUserByEmailAndPassword(String uemail,String upass){
		Signup user1 = null;
		try {
			
			String query = "Select * from signup where uemail =? and upass=?";
			
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1,uemail);
			pstmt.setString(2,upass);
			ResultSet set = pstmt.executeQuery();
			if(set.next())
			{
				user1 = new Signup();
				String uname = set.getString("uname");
				user1.setUname(uname);
				user1.setId(set.getInt("id"));
				
				user1.setUemail(set.getString("uemail"));
				user1.setPid(set.getString("pid"));
				user1.setUno(set.getString("uno"));
				user1.setUser(set.getString("user"));
				user1.setUpass(set.getString("upass"));
				
				
			    
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return user1;
	}
	public boolean updateUser(Signup user1)
	{   
		boolean f = false;
		try {
			
			String query = "update signup set uname=?, uemail=?, pid=?, uno=?, user=?,upass=? where id=?";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1,user1.getUname());
			pstmt.setString(2,user1.getUemail());
			pstmt.setString(3,user1.getPid());
			pstmt.setString(4,user1.getUno());
			pstmt.setString(5,user1.getUser());
			pstmt.setString(6,user1.getUpass());
			pstmt.setInt(7,user1.getId());
			
			pstmt.executeUpdate();
			f = true;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return f;
	}

}