package controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ExhibitDAO;
import dto.ExhibitDTO;

public class ReceiptAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "./exhibition/receipt.jsp";
		ExhibitDAO eDAO = ExhibitDAO.getInstance();
		List<ExhibitDTO> exList = eDAO.selectAllExhibitions();
		request.setAttribute("exList", exList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
