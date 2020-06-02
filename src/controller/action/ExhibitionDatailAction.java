package controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ExhibitDAO;
import dto.ExhibitDTO;

public class ExhibitionDatailAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("dddd");
		String url = "./exhibition/ExDetail.jsp";
		String code = request.getParameter("code");
		ExhibitDAO eDAO = ExhibitDAO.getInstance();
		ExhibitDTO eVo = eDAO.selectOneExhibitionByCode(code);
		request.setAttribute("exhibit", eVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	
	}

}
