package venue;

public class VenueDto {
	private String venueId;
	private String venueName;
	private String dateTime;
	
	public VenueDto(String venueId, String venueName, String dateTime) {
		this.venueId = venueId;
		this.venueName = venueName;
		this.dateTime = dateTime;
	}

	public String getVenueId() {
		return venueId;
	}

	public void setVenueId(String venueId) {
		this.venueId = venueId;
	}

	public String getVenueName() {
		return venueName;
	}

	public void setVenueName(String venueName) {
		this.venueName = venueName;
	}

	public String getDateTime() {
		return dateTime;
	}

	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}
	
}
