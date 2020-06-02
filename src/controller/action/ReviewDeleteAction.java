package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.ReCommentDAO;

public class ReviewDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int num=Integer.parseInt(request.getParameter("num"));
		ReCommentDAO rDAO=ReCommentDAO.getInstance();
		rDAO.deleteReview(num);
		new ReviewListAction().execute(request, response);
	
	}

}
