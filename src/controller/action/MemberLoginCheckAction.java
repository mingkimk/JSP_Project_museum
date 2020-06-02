package controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;



public class MemberLoginCheckAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");

		HttpSession session = request.getSession();

		String email = request.getParameter("email");
		String pass1 = request.getParameter("pass1");
		String view = "";
		MemberDAO mDAO = MemberDAO.getInstance();
		if (mDAO.idpwd(email,pass1) == null) {
			view = "./login/Log.jsp";
		} else {
			view = "Main";
			session.setAttribute("login", email);
		}

		// session.getAttribute("login");
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);

	}
	

}
