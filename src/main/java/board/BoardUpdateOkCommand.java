package board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BoardUpdateOkCommand implements BoardInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idx = request.getParameter("idx")==null ? 0 : Integer.parseInt(request.getParameter("idx"));
		int pag = request.getParameter("pag")==null ? 0 : Integer.parseInt(request.getParameter("pag"));
		int pageSize = request.getParameter("pageSize")==null ? 0 : Integer.parseInt(request.getParameter("pageSize"));
		
		HttpSession session = request.getSession();
		String nickName = session.getAttribute("sNickName")==null ? "" : (String) session.getAttribute("sNickName");
		
		String title = request.getParameter("title")==null ? "" : request.getParameter("title");
		String content = request.getParameter("content")==null ? "" : request.getParameter("content");
		String email = request.getParameter("email")==null ? "" : request.getParameter("email");
		String homePage = request.getParameter("homePage")==null ? "" : request.getParameter("homePage");
		String hostIp = request.getParameter("hostIp")==null ? "" : request.getParameter("hostIp");
		String openSw = request.getParameter("openSw")==null ? "" : request.getParameter("openSw");
		
		BoardVO vo = new BoardVO();
		
		vo.setIdx(idx);
		vo.setNickName(nickName);
		vo.setTitle(title);
		vo.setContent(content);
		vo.setOpenSw(openSw);
		//System.out.println("vo : " + vo);
		BoardDAO dao = new BoardDAO();
		
		int res = dao.setBoardUpdateOk(vo);
		
		if(res == 1) {
			request.setAttribute("msg", "게시글이 수정되었습니다.");
		}
		else {
			request.setAttribute("msg", "게시글 수정실패~~");
		}
		request.setAttribute("url", request.getContextPath()+"/BoardContent.bo?idx="+idx+"&pag="+pag+"&pageSize="+pageSize);
	}

}
