package controll;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.action.Action;

/**
 * Servlet implementation class ControllServlet
 */
@WebServlet("/ControllServlet")
public class ControllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ControllServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//		request.setCharacterEncoding("UTF-8");
//		HttpSession session = request.getSession();
//		String email = (String) session.getAttribute("useremail");
//		String userName = request.getParameter("nowuser");
//
//		if ((email == null || !email.equals(userName)) && userName != null) {
//			System.out.println("세션설정");
//			session.setAttribute("useremail", userName);
//		}


			String command = request.getParameter("command");

			ActionFactory af = ActionFactory.getInstance();
			Action action = af.getAction(command);

			if (action != null) {
				action.execute(request, response);
			System.out.println("ControllServlet에서 요청을 받음을 확인 : " + command);
			if(command.equals("reviewWrite")) {
				// 여기를 바꿔주면 다운받는 경로가 바뀜
				String savePath = "./reviewcomm/upload";
				System.out.println("savePath");
				ServletContext context = getServletContext();// 실제 물리적인 루트 디렉토리
				String uploadFilePath = context.getRealPath(savePath);
				request.setAttribute("uploadFilePath", uploadFilePath);
				System.out.println(uploadFilePath + "컨트롤러");
			}

			}
		}

	}