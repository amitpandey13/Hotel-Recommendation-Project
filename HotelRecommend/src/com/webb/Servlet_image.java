package com.webb;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Servlet_image
 */
@WebServlet("/Servlet_image")
public class Servlet_image extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet_image() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            
           byte[] img = null;
           String name = null;
           String ratings = null;
           ServletOutputStream sos = null;
          
			

		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
	    
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
			
			String g = "Select photo,name,ratings from hotel_add";
			PreparedStatement pstmt = con.prepareStatement(g);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				
				img = rs.getBytes(1);
				 name=  rs.getString("name");
				 ratings = rs.getString("ratings");
				 
				
			
			}
			HttpSession s1 = request.getSession();
			   s1.setAttribute("user2",name);
			   HttpSession s2 = request.getSession();
			   s2.setAttribute("ratings0",ratings);
			
			sos = response.getOutputStream();
			sos.write(img);	
			 String q = "select * from hotel_add";
				PreparedStatement pstmt1 = con.prepareStatement(q);
				ResultSet rs1 = pstmt.executeQuery();
				while(rs1.next()) {
					
				 
				  
				  String address=  rs1.getString("address");
				  String contact=  rs1.getString("contact");
				 // String ratings=  rs1.getString("ratings");
					
					
				
				}
		} 
		
		  
	  catch(ClassNotFoundException e)
		{
		  
		  e.printStackTrace();
		//   out.println("error65");
		}
	    
		catch(SQLException e)
		{
		  
		  e.printStackTrace();
		//  out.println("error55");
		  System.out.println("error404");
		}
		
		
	}

}
