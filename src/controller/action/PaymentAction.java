package controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.ExhibitDAO;
import dto.ExhibitDTO;

public class PaymentAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "./exhibition/Payment.jsp";
		
		ExhibitDAO eDAO = ExhibitDAO.getInstance();
		List<ExhibitDTO> exList = eDAO.selectAllExhibitions();
		request.setAttribute("exList", exList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		System.out.println(">>>"+"ExhibitionAction");
		
		
//		String code = request.getParameter("code");
//		ExhibitDAO eDAO = ExhibitDAO.getInstance();
//		ExhibitDTO eVo = eDAO.selectOneExhibitionByCode(code);
//		request.setAttribute("exhibit", eVo);
//		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
//		dispatcher.forward(request, response);
		
//		request.setCharacterEncoding("UTF-8");
//		ExhibitDTO eVo = new ExhibitDTO();
//		eVo.setCode(request.getParameter("email"));
//		eVo.setEname(request.getParameter("pass1"));
//		eVo.setPrice(request.getParameter("pass2"));
//		eVo.setAmount(request.getParameter("name"));
//		eVo.setTotal(request.getParameter("tel"));
//		ExhibitDAO eDAO = ExhibitDAO.getInstance();
//		int result =eDAO.insert(eVo);
//		if (result == 1) {
//		HttpSession session = request.getSession();
//			session.setAttribute("email", eVo.getEmail());
//			request.setAttribute("message", "회원 가입에 성공했습니다.");
//			url = "./main.jsp";
//		} else if (result == -1) {
//			request.setAttribute("message", "조건에 맞지 않습니다.");
//		
//		}
	
//		new MainAction().execute(request, response);
	}

}
