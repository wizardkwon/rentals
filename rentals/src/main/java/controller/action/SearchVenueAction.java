package controller.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import controller.Action;
import venue.Venue;
import venue.controller.VenueDao;

public class SearchVenueAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String keyword = request.getParameter("keyword");

		VenueDao dao = VenueDao.getInstance();
		ArrayList<Venue> list = dao.getVenueSearch(keyword);

		JSONObject data = new JSONObject();
		data.put("venueId", list.get(0).getVenueId());
		data.put("venueName", list.get(0).getVenueName());
		data.put("dateTime",  list.get(0).getDateTime());

//		JSONArray data = new JSONArray();
//		for(Venue venue : list) {
//			JSONObject obj = new JSONObject();
//			obj.put("venueId", venue.getVenueId());
//			obj.put("venueName", venue.getVenueName());
//			obj.put("dateTime", venue.getDateTime());
//			System.out.println("venue.getVenueName() : " + venue.getVenueName());
//			data.put(obj);
//		}

		PrintWriter out = response.getWriter();
		response.setCharacterEncoding("UTF-8");
//		response.setContentType("application/json");
	    response.setHeader("Content-Type", "application/json");
		
	    response.setContentType("application/x-json; charset=UTF-8");

	  
		out.print(data);
		out.flush();
	}

}
