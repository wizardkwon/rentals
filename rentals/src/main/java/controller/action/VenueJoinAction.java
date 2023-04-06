package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Action;
import venue.VenueDto;
import venue.controller.VenueDao;

public class VenueJoinAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String venueId = request.getParameter("venueId");
		String venueName = request.getParameter("venueName");
		String dateTime = request.getParameter("dateTime");
		VenueDao venueDao = VenueDao.getInstance();
		VenueDto venueDto = new VenueDto(venueId,venueName,dateTime);
		venueDao.joinVenue(venueDto);
		response.sendRedirect("carInfo");
	}

}
