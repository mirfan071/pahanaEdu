package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.book;
import services.bookService;


@WebServlet("/filterBooks")
public class filterBooks extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public filterBooks() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

        String query = request.getParameter("query");
        String category = request.getParameter("category");

        bookService bookService = new bookService();
        List<book> books;

        if ((query != null && !query.trim().isEmpty()) || (category != null && !category.trim().isEmpty())) {
            books = bookService.searchBooks(query, category);
        } else {
            books = bookService.getAllBooks();
        }

        request.setAttribute("books", books);
        request.getRequestDispatcher("allBooks.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
