package controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import dto.MemberDTO;

public class MemberRegisterAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url="";
		request.setCharacterEncoding("UTF-8");
		MemberDTO mVo = new MemberDTO();
		mVo.setEmail(request.getParameter("email"));
		mVo.setPass1(request.getParameter("pass1"));
		mVo.setPass2(request.getParameter("pass2"));
		mVo.setName(request.getParameter("name"));
		mVo.setTel(request.getParameter("tel"));
		MemberDAO mDao = MemberDAO.getInstance();
		int result =mDao.insert(mVo);
		if (result == 1) {
		HttpSession session = request.getSession();
			session.setAttribute("email", mVo.getEmail());
			request.setAttribute("message", "회원 가입에 성공했습니다.");
			url = "./main.jsp";
		} else if (result == -1) {
			request.setAttribute("message", "조건에 맞지 않습니다.");
		
		}
	
		new MainAction().execute(request, response);
	}

}
