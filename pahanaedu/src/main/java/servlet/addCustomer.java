package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.customer;
import services.customerService;


@WebServlet("/addCustomer")
public class addCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public addCustomer() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
	    String address = request.getParameter("address");
	    String telephone = request.getParameter("telephone");
	    String email = request.getParameter("email");

	    customerService service = new customerService();
	    String accountNumber = service.generateNextAccountNumber();

	    customer c = new customer();
	    c.setAccountNumber(accountNumber);
	    c.setName(name);
	    c.setAddress(address);
	    c.setTelephone(telephone);
	    c.setEmail(email);

	    boolean success = service.addCustomer(c);

	    if (success) {
	        request.setAttribute("message", "Customer added successfully.");
	    } else {
	        request.setAttribute("error", "Error adding customer.");
	    }

	    RequestDispatcher rd = request.getRequestDispatcher("addCustomer.jsp");
	    rd.forward(request, response);
	}
	
}