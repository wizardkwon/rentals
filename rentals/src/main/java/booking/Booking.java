package booking;

public class Booking {
	private String vehicleId;
	private String venueId;
	private String clientId;
	private String startDate;
	private String endDate;
	private String dateTime;
	private String hour;
	private String totalPayment;
	
	public Booking(String vehicleId,String venueId,String clientId,String startDate,String endDate,String dateTime,String hour ,String totalPayment) {
		this.vehicleId = vehicleId;
		this.venueId = venueId;
		this.clientId = clientId;
		this.startDate = startDate;
		this.endDate = endDate;
		this.dateTime = dateTime;
		this.hour = hour;
		this.totalPayment = totalPayment;
	}

	public String getVehicleId() {
		return vehicleId;
	}

	public String getVenueId() {
		return venueId;
	}

	public String getClientId() {
		return clientId;
	}

	public String getStartDate() {
		return startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public String getDateTime() {
		return dateTime;
	}

	public String getHour() {
		return hour;
	}

	public String getTotalPayment() {
		return totalPayment;
	}
	
	
}
