package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import client.ClientDto;
import client.controller.ClientDao;
import controller.Action;

public class JoinAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String clientId = request.getParameter("clientId");
		String clientPassword = request.getParameter("clientPassword");
		String clientName = request.getParameter("clientName");
		String dateTime = request.getParameter("dateTime");
		

		ClientDao client = ClientDao.getInstance();
		ClientDto clientDto = new ClientDto(clientId, clientPassword, clientName, dateTime);
		client.joinClient(clientDto);
		
		response.sendRedirect("index");
		
	}
	
}
