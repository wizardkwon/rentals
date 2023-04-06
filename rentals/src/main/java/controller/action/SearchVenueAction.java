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
		response.setCharacterEncoding("UTF-8");
		String keyword = request.getParameter("keyword");

		VenueDao dao = VenueDao.getInstance();
		ArrayList<Venue> list = dao.getVenueSearch(keyword);

//		JSONObject data = new JSONObject();
//		data.put("venueId", list.get(0).getVenueId());
//		data.put("venueName", list.get(0).getVenueName());
//		data.put("dateTime",  list.get(0).getDateTime());

		JSONArray data = new JSONArray();
		for(Venue venue : list) {
			JSONObject obj = new JSONObject();
			obj.put("venueId", venue.getVenueId());
			obj.put("venueName", venue.getVenueName());
			obj.put("dateTime", venue.getDateTime());
			System.out.println("venue.getVenueName() : " + venue.getVenueName());
			data.put(obj);
		}

		PrintWriter out = response.getWriter();
		response.setContentType("application/json charset=utf8");
	    response.setHeader("Content-Type", "application/json charset=utf8");
	    
	  
		out.print(data);
		out.flush();
	}

}
