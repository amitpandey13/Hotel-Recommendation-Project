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
 * Servlet implementation class EditServlet
 */
@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 PrintWriter out = response.getWriter();
		 String userName = request.getParameter("user_name");
		 String userEmail = request.getParameter("user_email");
		 String userCode = request.getParameter("user_code");
		 String userNumber = request.getParameter("user_number");
		 String userType = request.getParameter("user_type");
		 String userPassword = request.getParameter("user_password");
		 
		//get the user from session
		 HttpSession s = request.getSession();
		 Signup user1 =  (Signup) s.getAttribute("currrentUser");
		 user1.setUname(userName);
		 user1.setUemail(userEmail);
		 user1.setPid(userCode);
		 user1.setUno(userNumber);
		 user1.setUser(userType);
		 user1.setUpass(userPassword);
		 //update to db..
		 
		 UserDao userDao = new UserDao(ConnectionProvider.getConnection());
		 boolean ans = userDao.updateUser(user1);
		 if(ans)
		 {
			response.sendRedirect("homes.jsp");
		 }
		 else
		 {
			 out.println("not updated");
		 }
		 
	}

}
