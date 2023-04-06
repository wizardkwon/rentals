package controller;

import controller.action.JoinAction;
import controller.action.LoginAction;
import controller.action.LogoutAction;
import controller.action.SearchAction;
import controller.action.SearchVenueAction;
import controller.action.VenueJoinAction;

public class ActionFactory {
	private ActionFactory() {} // 싱그론 패턴은 단 하나의 객체생성을 위해
	private static ActionFactory instance = new ActionFactory();
	
	public static ActionFactory getInstance() {
		return instance;
	}
	public Action getAction(String command) {
		
		Action action = null;
		if(command.equals("join")) {
			action = new JoinAction();
		}else if(command.equals("update")) {
			
		}else if(command.equals("login")) {
			action = new LoginAction();
		}else if(command.equals("logout")) {
			action = new LogoutAction();
		}else if(command.equals("venue_join")) {
			action = new VenueJoinAction();
		}else if(command.equals("search")) {
			action = new SearchAction();
		} else if(command.equals("searchvenue")) {
			action = new SearchVenueAction();
		}
		return action;
	}
}
