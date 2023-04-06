package controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import client.Client;
import client.ClientDto;
import client.controller.ClientDao;
import controller.Action;

public class LoginAction implements Action {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		
		String clientId = request.getParameter("clientId");
		String clientPassword = request.getParameter("clientPassword");
	

//		Client clientLog = new Client(clientId,clientPassword);
		
		ClientDao client = ClientDao.getInstance();
		ArrayList<Client> list = client.getClientAll();
		HttpSession session = null;
		boolean check = false;
		for (Client clientList : list) {
			if (clientList.getClientId().equals(clientId) && clientList.getClientPassword().equals(clientPassword)) {
				
				session = request.getSession();
				session.setAttribute("log", clientList);
				check = true;
			}
		}
		if (check) {
			System.out.println("로그인성공");
			
			Client whoIsLog = (Client)session.getAttribute("log");
			System.out.println(whoIsLog.getClientId());
			if(whoIsLog.getClientId().equals("admin")) {
				response.sendRedirect("admin_menu");
			}else {
				response.sendRedirect("client_menu");
			}
		} else {
			System.out.println("로그인 실패");
			response.sendRedirect("login");
		}
	}
}
