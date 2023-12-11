package Pack;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Userinsert")
public class Userinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String age =request.getParameter("age");
		String mobile =request.getParameter("mobile");
		String NIC = request.getParameter("NIC");
		
		boolean isTrue;
		
		isTrue =UserDBUtil.insertcustomer(firstname, lastname, email, age, mobile, NIC);
		
		
		if(isTrue == true)
		{
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}
		else
		{
			RequestDispatcher dis2 = request.getRequestDispatcher("userinfo.jsp");
			dis2.forward(request, response);
		}
	}

}
