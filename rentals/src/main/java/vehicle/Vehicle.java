package vehicle;

import venue.VenueDto;

public class Vehicle {
	private String vehicleId;
	private String venueId;
	private String vehicleName;
	private String hourRate;
	private String dateTime;
	private int vehicleType;
	
	public Vehicle(String vehicleId, String venueId,String vehicleName, String hourRate, String dateTime, int vehicleType) {
		this.vehicleId = vehicleId;
		this.venueId = venueId;
		this.vehicleName = vehicleName;
		this.hourRate = hourRate;
		this.dateTime = dateTime;
		this.vehicleType = vehicleType;
	}
	
	public Vehicle(VehicleDto vehicleDto) {
		this.vehicleId = vehicleDto.getVehicleId();
		this.venueId = vehicleDto.getVenueId();
		this.vehicleName = vehicleDto.getVehicleName();
		this.hourRate = vehicleDto.getHourRate();
		this.dateTime = vehicleDto.getDateTime();
		this.vehicleType = vehicleDto.getVehicleType();
	}

	public String getVehicleName() {
		return vehicleName;
	}

	public String getVehicleId() {
		return vehicleId;
	}

	public String getVenueId() {
		return venueId;
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
