package controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;





public class EmailCheckAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		MemberDAO mDAO = MemberDAO.getInstance();
		int result = mDAO.confirm(email);
		request.setAttribute("email", email);
		request.setAttribute("result", result);
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("register/emailcheck.jsp");
		dispatcher.forward(request, response);
	}
		
		

	
	

}
