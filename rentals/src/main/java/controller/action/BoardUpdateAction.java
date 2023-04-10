package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.BoardDto;
import board.controller.BoardDao;
import controller.Action;

public class BoardUpdateAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int postNo = Integer.parseInt(request.getParameter("postNo"));
		String postTitle = request.getParameter("postTitle");
		String contents = request.getParameter("contents");
		
		BoardDao boardDao = BoardDao.getInstance();
		BoardDto boardDto = new BoardDto(postNo,postTitle, contents);
		boardDao.updateBoard(boardDto);
		
		response.sendRedirect("notice");
	}

}
