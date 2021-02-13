package com.webb;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.webb.UserDao;
import com.webb.ConnectionProvider;
import com.webb.Message;
import com.webb.Signup;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/Login_Servlet")
public class Login_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String userEmail = request.getParameter("uemail1");
		String userPassword = request.getParameter("upass1");
	   UserDao dao = new UserDao(ConnectionProvider.getConnection());
	   Signup u =  dao.getUserByEmailAndPassword(userEmail, userPassword);
	   if(u==null)
	   {
		   ///error
		 // out.println("invalid details...Please try with another account...");
		   Message msg = new Message("wrong information!! try once more..","error", "alert-danger");
		   HttpSession s = request.getSession();
		   s.setAttribute("msg",msg);
		  response.sendRedirect("login.jsp");
	   }
	   else
	   {
		   //login success
		   
		   HttpSession s = request.getSession();
		   s.setAttribute("currrentUser",u);
		  out.println("success");
		  if(userEmail.contains("aspp9308@gmail.com")) {
		 
		
		 response.sendRedirect("admin.jsp");
		  }
		  else
		  {
			  response.sendRedirect("previous.jsp");
		  }
		  
	   }
	    
		
		
	}
}
