package controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Action;
import venue.Venue;
import venue.controller.VenueDao;

public class SearchAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String search = request.getParameter("search");
		VenueDao venue = VenueDao.getInstance();
		ArrayList<Venue> list = venue.getVenueSearch(search);
		response.sendRedirect("venue_info");
		for(int i=0;i<list.size();i++) {
			System.out.println(list.get(i).getVenueName());
		}
	}

}
