package controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import dao.MemberDAO;
import dto.MemberDTO;

public class MemberLoginAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		request.setCharacterEncoding("UTF-8");
//		MemberDTO mVo = new MemberDTO();
//		String email = request.getParameter("email");
//		String pass1 = request.getParameter("pass1");
//		System.out.println(email);
//		System.out.println(pass1);
////		mVo.setPass1(request.getParameter("pass1"));
//		MemberDAO mDAO = MemberDAO.getInstance();
//		mDAO.insert(mVo);
//		HttpSession session = request.getSession();
//		session.setAttribute("email", email);
//		session.setAttribute("pass1", pass1);
//		email = (String) session.getAttribute("email");
//		pass1 = (String) session.getAttribute("pass1");
//		System.out.println(email);
		

		String url = "./login/log.jsp";
		String email = request.getParameter("email");
		String pass1 = request.getParameter("pass1");
		MemberDAO mDAO = MemberDAO.getInstance();
		int result = mDAO.userCheck(email, pass1);
		if (result == 1) {
			MemberDTO mVo = mDAO.getMember(email);
			HttpSession session = request.getSession(true);
			session.setAttribute("email", email);
			request.setAttribute("message", "로그인에 성공했습니다.");
			url = "./main.jsp";
		} else if (result == 0) {
			request.setAttribute("message", "비밀번호가 맞지 않습니다.");
		} else if (result == -1) {
			request.setAttribute("message", "존재하지 않는 회원입니다.");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	

	//	 new MainAction().execute(request, response);
		


}

}
