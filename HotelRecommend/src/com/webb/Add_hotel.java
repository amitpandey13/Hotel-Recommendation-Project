package com.webb;

import java.io.FileInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




/**
 * Servlet implementation class Add_hotel
 */
@WebServlet("/Add_hotel")
@javax.servlet.annotation.MultipartConfig
public class Add_hotel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_hotel() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
PrintWriter out=  res.getWriter();
    
		String photo1=req.getParameter("img1");
		String name1=req.getParameter("hotelname");
		String city1=req.getParameter("hotelcity");
		String adress1 =req.getParameter("hoteladress");
 
		String contact1=req.getParameter("hotelcontact");
		String ratings1=req.getParameter("hotelrating");
		
		
	
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
	    
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
			
			String g = "Insert into hotel_add(photo,name,city,address,contact,ratings) values(?,?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(g);
			FileInputStream fis = new FileInputStream("C:\\Users\\ASUS\\Desktop\\project hotel\\hotel5.jpg");
			pstmt.setBinaryStream(1,fis,fis.available());
			


			pstmt.setString(2,name1);
			pstmt.setString(3,city1);
			pstmt.setString(4,adress1);
			pstmt.setString(5,contact1);
			pstmt.setString(6,ratings1);
			pstmt.executeUpdate();
			//RequestDispatcher rd = req.getRequestDispatcher("helpsection.jsp");
		    res.sendRedirect("admin.jsp");
			
			out.println("<h1>done</h1>");
		} 
	  catch(ClassNotFoundException e)
		{
		  
		  e.printStackTrace();
		 out.println("error65");
		}
	    
		catch(SQLException e)
		{
		  
		  e.printStackTrace();
		  out.println("error55");
		  System.out.println("error404");
		}
		
		
	}

}
