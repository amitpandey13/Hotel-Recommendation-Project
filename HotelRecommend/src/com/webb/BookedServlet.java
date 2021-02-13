package com.webb;

import java.io.FileInputStream;
import java.io.IOException;
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
 * Servlet implementation class BookedServlet
 */
@WebServlet("/BookedServlet")
public class BookedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookedServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out=  res.getWriter();
	    
		String usermail1=req.getParameter("cusemail");
		String hotelname1 =req.getParameter("hotname");
		String numperson1=req.getParameter("numperson");
		String numbed1  = req.getParameter("numbed");
		String contactnum1  =req.getParameter("cumcontact");
		String checkin1 =req.getParameter("checkin");
		String checkout1 =req.getParameter("checkout");
		
		String rating1 =req.getParameter("rating");
		String aadhar1=req.getParameter("aadhar");
		String status1 = "booked";
		
		
		
	
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
	    
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
			
			String g = "Insert into bookhotel(usermail,hotelname,numperson,numbed,contactnum,aadhar,status,rating,checkin,checkout) values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(g);
			
			

			pstmt.setString(1,usermail1);
			pstmt.setString(2,hotelname1);
			pstmt.setString(3,numperson1);
			pstmt.setString(4,numbed1);
			pstmt.setString(5,contactnum1);
			pstmt.setString(6,aadhar1);
			pstmt.setString(7,status1);
			pstmt.setString(8,rating1);
			pstmt.setString(9,checkin1);
			pstmt.setString(10,checkout1);
			pstmt.executeUpdate();
			//RequestDispatcher rd = req.getRequestDispatcher("helpsection.jsp");
		    res.sendRedirect("homes.jsp");
			
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
