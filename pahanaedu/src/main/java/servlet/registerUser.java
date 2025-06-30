package servlet;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.user;
import services.userService;



@WebServlet("/registerUser")
public class registerUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public registerUser() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Fill the User object
       user user = new user();
                
	   user.setFullname(request.getParameter("fullname"));
	   user.setUsername(request.getParameter("username"));
	   user.setEmail(request.getParameter("email"));
	   user.setPassword(request.getParameter("password"));
	   user.setRole(request.getParameter("role"));
	   	   

	   
	    userService service = new userService();
		service.regUser(user);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");  
		
		dispatcher.forward(request, response);
		
		     
    	
	}


	
}
