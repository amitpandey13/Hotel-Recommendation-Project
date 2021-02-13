package com.webb;

import java.io.IOException;
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
 * Servlet implementation class Servletforprevious
 */
@WebServlet("/Servletforprevious")
public class Servletforprevious extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servletforprevious() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
      
        String usermail = null;
        String hotelname = null;
        String ratings = null;
        String status = null;
         
        

		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
	    
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
			
			String g = "Select usermail,hotelname,ratings,status from bookhotel";
			PreparedStatement pstmt = con.prepareStatement(g);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				
				

				   usermail=  rs.getString("usermail");
				   hotelname =  rs.getString("contact");
				   ratings=  rs.getString("ratings");
				   status = rs.getString("status");
					
				
			
			}
//			   HttpSession s1 = request.getSession();
//			   s1.setAttribute("user0",sname);
//			   HttpSession s2 = request.getSession();
//			   s2.setAttribute("ratings0",sratings);
//			
			 String q = "select * from bookhotel";
				PreparedStatement pstmt1 = con.prepareStatement(q);
				ResultSet rs1 = pstmt.executeQuery();
				while(rs1.next()) {
					
				 
				  
					
				
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
