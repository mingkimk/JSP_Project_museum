package controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReCommentDAO;
import dto.ReCommentDTO;



public class ReviewDetailAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("dddd");
		String url = "/reviewcomm/ReviewDetail.jsp";
		String num = request.getParameter("num");
		System.out.println("red1");
		ReCommentDAO rDAO = ReCommentDAO.getInstance();
		ReCommentDTO rVo = rDAO.selectOneReCommentByNum(num);
		System.out.println("세상에나");
		request.setAttribute("review", rVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		System.out.println("red2");
	}
	

}
