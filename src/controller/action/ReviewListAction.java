package controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReCommentDAO;
import dto.ReCommentDTO;



public class ReviewListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "./reviewcomm/ReviewList.jsp";
		ReCommentDAO rDAO = ReCommentDAO.getInstance();
		List<ReCommentDTO> recommList = rDAO.selectAllReviews();
		request.setAttribute("recommList", recommList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
