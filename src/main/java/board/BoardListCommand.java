package board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardListCommand implements BoardInterface {

	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDAO dao = new BoardDAO();
		
		int pag = request.getParameter("pag")==null ? 1 : Integer.parseInt(request.getParameter("pag"));
		int pageSize = request.getParameter("pageSize")==null ? 5 : Integer.parseInt(request.getParameter("pageSize"));
		int totRecCnt = dao.getTotRecCnt();
		int totPage = (totRecCnt % pageSize)==0 ? (totRecCnt / pageSize) : (totRecCnt / pageSize) + 1 ;
		int startIndexNo = (pag - 1) * pageSize;
		int curScrStartNo = totRecCnt - startIndexNo;
		
		int blockSize = 3;
		int curBlock = (pag - 1) / blockSize;
		int lastBlock = (totPage - 1) / blockSize;
		
		ArrayList<BoardVO> vos = dao.getBoardList(startIndexNo, pageSize);
		
		request.setAttribute("vos", vos);
		
		request.setAttribute("pag", pag);
		request.setAttribute("totPage", totPage);
		request.setAttribute("curScrStartNo", curScrStartNo);
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("blockSize", blockSize);
		request.setAttribute("curBlock", curBlock);
		request.setAttribute("lastBlock", lastBlock);
		
	}

}