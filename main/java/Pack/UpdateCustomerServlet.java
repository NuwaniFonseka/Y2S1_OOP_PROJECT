package Pack;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateCustomerServlet")
public class UpdateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String age =request.getParameter("age");
		String mobile =request.getParameter("mobile");
		String NIC = request.getParameter("NIC");
		
boolean isTrue;

isTrue = UserDBUtil.updateCustomer(id, firstname, lastname, email, age, mobile , NIC );

if(isTrue == true) {
	
	List<User> userDetails = UserDBUtil.getCustomerDetails(id);
	request.setAttribute("userDetails", userDetails);
	
	RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
	dis.forward(request, response);
}
else {
	
	List<User> userDetails = UserDBUtil.getCustomerDetails(id);
	request.setAttribute("userDetails", userDetails);
	
	RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
	dis.forward(request, response);
}
		
	}

}
