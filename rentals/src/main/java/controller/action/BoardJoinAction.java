package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.BoardDto;
import board.controller.BoardDao;

import controller.Action;

public class BoardJoinAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dateTime = request.getParameter("dateTime");
		String clientId = request.getParameter("clientId");
		String postTitle = request.getParameter("postTitle");
		String contents = request.getParameter("contents");
		int postType = Integer.parseInt(request.getParameter("postType"));
		
		BoardDao boardDao = BoardDao.getInstance();
		BoardDto boardDto = new BoardDto(clientId, postTitle, contents, dateTime,postType);
		boardDao.joinBoard(boardDto);
		
		response.sendRedirect("notice");
		
	}

}
