package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Action;
import vehicle.VehicleDto;
import vehicle.controller.VehicleDao;
import venue.VenueDto;
import venue.controller.VenueDao;

public class VehicleJoinAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("UTF-8");
		
		String vehicleId = request.getParameter("vehicleId");
		String venueId = request.getParameter("venueId");
		String checkRes = request.getParameter("checkRes");
		String venueName = request.getParameter("venueName");
		String vehicleName = request.getParameter("vehicleName");
		String hourRate = request.getParameter("hourRate");
		String dateTime = request.getParameter("dateTime");
		int vehicleType = Integer.parseInt(request.getParameter("vehicleType"));
		
		VehicleDao vehicleDao = VehicleDao.getInstance();
		VehicleDto vehicleDto = new VehicleDto(vehicleId,vehicleName,venueId,venueName,vehicleType,hourRate,dateTime,checkRes);
		vehicleDao.joinVehicle(vehicleDto);
		
		response.sendRedirect("vehicle_info");
		
	}

}
