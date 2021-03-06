package admin.book.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import admin.book.svc.QnReModifyProService;
import vo.ActionForward;
import vo.BoardBean;

public class QModifyProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		// 페이지, 문의글 ReRef, boardNum 파라미터와 답변 제목,내용 불러오기
		String page = request.getParameter("page");
		System.out.println("QModifyProAction옴!!!!");
		
		String boardTitle = request.getParameter("boardTitle");
		String boardContent = request.getParameter("boardContent");
		int boardReRef = Integer.parseInt(request.getParameter("boardReRef"));
		int boardNum = Integer.parseInt(request.getParameter("boardNum"));
		
		// 관리자 id 가져오기
		HttpSession session = request.getSession();
		String boardWriter = (String)session.getAttribute("uID");
		
		// 문의 답변 글 수정하기
		int kID = 102;
		QnReModifyProService qModifyProService = new QnReModifyProService();
		BoardBean board = new BoardBean(
				boardNum,
				boardWriter,
				boardTitle, 
				boardContent);
		
		qModifyProService.modifyAnswerBoard(board, kID);
		
		forward = new ActionForward();
		
		// 문의 답변 작성한거 상세보기 창으로 이동
		forward.setPath("QDetail.abook?boardReRef=" + boardReRef + "&page=" + page);
		forward.setRedirect(true);
		
		return forward;
	}

}
