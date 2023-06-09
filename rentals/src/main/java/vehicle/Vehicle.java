package vehicle;

import venue.VenueDto;

public class Vehicle {
	private String vehicleId;
	private String venueId;
	private String venueName;
	private String vehicleName;
	private int vehicleType;
	private String hourRate;
	private String dateTime;
	private String checkRes;
	
	public Vehicle(String vehicleId, String vehicleName,String venueId,String venueName,int vehicleType, String hourRate, String dateTime,String checkRes ) {
		this.vehicleId = vehicleId;
		this.vehicleName = vehicleName;
		this.venueId = venueId;
		this.venueName = venueName;
		this.hourRate = hourRate;
		this.dateTime = dateTime;
		this.vehicleType = vehicleType;
		this.checkRes = checkRes;
	}
	
	public Vehicle(VehicleDto vehicleDto) {
		this.vehicleId = vehicleDto.getVehicleId();
		this.venueId = vehicleDto.getVenueId();
		this.venueName = vehicleDto.getVenueName();
		this.vehicleName = vehicleDto.getVehicleName();
		this.hourRate = vehicleDto.getHourRate();
		this.dateTime = vehicleDto.getDateTime();
		this.vehicleType = vehicleDto.getVehicleType();
		this.checkRes = vehicleDto.getCheckRes();
	}

	public String getCheckRes() {
		return checkRes;
	}

	public String getVenueId() {
		return venueId;
	}

	public String getVehicleName() {
		return vehicleName;
	}

	public String getVehicleId() {
		return vehicleId;
	}

	public String getVenueName() {
		return venueName;
	}

	public String getHourRate() {
		return hourRate;
	}

	public String getDateTime() {
		return dateTime;
	}

	public int getVehicleType() {
		return vehicleType;
	}
	
	
}
