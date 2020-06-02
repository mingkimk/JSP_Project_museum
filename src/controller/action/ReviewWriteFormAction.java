package controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import dao.ReCommentDAO;
import dto.MemberDTO;
import dto.ReCommentDTO;

public class ReviewWriteFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String url = "/reviewcomm/ReviewWrite.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
//		String url = "";
//		request.setCharacterEncoding("UTF-8");
//		ReCommentDTO rVo = new ReCommentDTO();
//		url = "/reviewcomm/ReviewInsert.jsp";
//		String email = request.getParameter("email");
//		ReCommentDAO rdao = ReCommentDAO.getInstance();
//		rdao.insertReview(rVo);
//		HttpSession session = request.getSession();
//		session.setAttribute("email", email);
//		email = (String) session.getAttribute("email");
//
//		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
//		dispatcher.forward(request, response);
	}

}
