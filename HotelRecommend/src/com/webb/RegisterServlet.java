package com.webb;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out=  res.getWriter();
		
		String uname=req.getParameter("uname1");
		String uemail=req.getParameter("uemail1");
		String pid=req.getParameter("pid1");
		String uno=req.getParameter("uno1");
 
		String user=req.getParameter("user2");
		String upass=req.getParameter("upass1");
	
	 //create Signup object and set all data to that object
		Signup user1 = new Signup(uname,uemail,pid,uno,user,upass);
		 HttpSession s = req.getSession();
		   s.setAttribute("user0",user1);
		UserDao dao = new UserDao(ConnectionProvider.getConnection());
	    if(dao.saveUser(user1)) {
	    	res.sendRedirect("login.jsp");
	    	out.println("<div>" + "<h1>Your Registration has been done now..</h1>"+"</div>");
	    	out.println("<h3>you can go back and login to your account..</h3>");
	    	out.println("<h5>Be happy and shopping</h5>");
	    	
	    }
	    else
	    {
	    	out.println("error");
	    }
	
		
		
	}

}
