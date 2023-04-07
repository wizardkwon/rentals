package vehicle;

public class VehicleDto {
	private String vehicleId;
	private String venueId;
	private String venueName;
	private String vehicleName;
	private String hourRate;
	private String dateTime;
	private int vehicleType;
	
	public VehicleDto(String vehicleId, String vehicleName,String venueId,String venueName,int vehicleType,String hourRate, String dateTime ) {
		this.vehicleId = vehicleId;
		this.venueId = venueId;
		this.venueName = venueName;
		this.vehicleName = vehicleName;
		this.hourRate = hourRate;
		this.dateTime = dateTime;
		this.vehicleType = vehicleType;
	}

	public String getVenueName() {
		return venueName;
	}

	public void setVenueName(String venueName) {
		this.venueName = venueName;
	}

	public String getVehicleName() {
		return vehicleName;
	}

	public void setVehicleName(String vehicleName) {
		this.vehicleName = vehicleName;
	}

	public String getVehicleId() {
		return vehicleId;
	}

	public void setVehicleId(String vehicleId) {
		this.vehicleId = vehicleId;
	}

	public String getVenueId() {
		return venueId;
	}

	public void setVenueId(String venueId) {
		this.venueId = venueId;
	}

	public String getHourRate() {
		return hourRate;
	}

	public void setHourRate(String hourRate) {
		this.hourRate = hourRate;
	}

	public String getDateTime() {
		return dateTime;
	}

	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}

	public int getVehicleType() {
		return vehicleType;
	}

	public void setVehicleType(int vehicleType) {
		this.vehicleType = vehicleType;
	}
	
	
}
