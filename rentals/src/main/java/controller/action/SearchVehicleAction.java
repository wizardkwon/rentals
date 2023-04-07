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
import vehicle.Vehicle;
import vehicle.controller.VehicleDao;


public class SearchVehicleAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		String keyword = request.getParameter("keyword");

		VehicleDao dao = VehicleDao.getInstance();
		ArrayList<Vehicle> list = dao.getVehicleSearch(keyword);

		JSONArray data = new JSONArray();
		for(Vehicle vehicle : list) {
			JSONObject obj = new JSONObject();
			obj.put("vehicleId", vehicle.getVehicleId());
			obj.put("venueId", vehicle.getVenueId());
			obj.put("venueName", vehicle.getVenueName());
			obj.put("vehicleName", vehicle.getVehicleName());
			obj.put("hourRate", vehicle.getHourRate());
			obj.put("dateTime", vehicle.getDateTime());
			obj.put("vehicleType", vehicle.getVehicleType());
	
			data.put(obj);
		}

		PrintWriter out = response.getWriter();
		response.setContentType("application/json charset=utf8");
	    response.setHeader("Content-Type", "application/json charset=utf8");
	    
	  
		out.print(data);
		out.flush();
	}
}

