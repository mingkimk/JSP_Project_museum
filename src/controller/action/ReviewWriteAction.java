package controller.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.ReCommentDAO;
import dto.ReCommentDTO;

public class ReviewWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ReCommentDAO rDAO = ReCommentDAO.getInstance();
		int indexNum = rDAO.nowNum();
		// 파일 업로드
		System.out.println("writeaction");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		// 여기를 바꿔주면 다운받는 경로가 바뀜
		String savePath = "./reviewcomm/upload";
		System.out.println("found savapath");
		
		int uploadFileSizeLimit = 5 * 1024 * 1024;
		String encType = "UTF-8";
		String uploadFilePath = (String) request.getAttribute("uploadFilePath");
		System.out.println("서버상의 실제 디렉토리 :" + uploadFilePath);
		try {
			MultipartRequest multi = new MultipartRequest(request, // request 객체
					uploadFilePath, 
					uploadFileSizeLimit, 
					encType,
					new DefaultFileRenamePolicy());
			String picurl = multi.getFilesystemName("uploadFile");
			System.out.println("??"+picurl);
			if (picurl == null) { 
				System.out.print("파일 업로드 되지 않았음");
			} else { 
				System.out.println("업로드 성공!!" + multi.getParameter("email"));
			} 
			if (indexNum != -1) {
				ReCommentDTO rVo = new ReCommentDTO();
				rVo.setNum(indexNum);
				rVo.setEmail(multi.getParameter("email"));
				rVo.setTitle(multi.getParameter("title"));
				rVo.setContent(multi.getParameter("content"));
				rVo.setPicurl(picurl);
				rDAO.insertReview(rVo);
			}
		} catch (Exception e) {
			System.out.print("예외 발생 : " + e);
		}

		//

		new ReviewListAction().execute(request, response);
	}

}

//		ReCommentDTO rVo = new ReCommentDTO();
//		System.out.println("ReviewInsertAction1");
//		rVo.setEmail(request.getParameter("email"));
//		rVo.setTitle(request.getParameter("title"));
//		rVo.setContent(request.getParameter("content"));
//	//	rVo.setFilename(request.getParameter("filename"));
//		ReCommentDAO rDAO = ReCommentDAO.getInstance();
//		rDAO.insertReview(rVo);
//		System.out.println(" ReviewWrite//");
//		new ReviewListAction().execute(request, response);
//	}

//}
