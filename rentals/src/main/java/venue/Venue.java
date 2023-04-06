package venue;

public class Venue {
	private String venueId;
	private String venueName;
	private String dateTime;
	
	public Venue(String venueId, String venueName, String dateTime) {
		this.venueId = venueId;
		this.venueName = venueName;
		this.dateTime = dateTime;
		
	}
	public Venue(VenueDto venueDto) {
		this.venueId = venueDto.getVenueId();
		this.venueName = venueDto.getVenueName();
		this.dateTime = venueDto.getDateTime();
	
	}

	public String getVenueId() {
		return venueId;
	}

	public String getVenueName() {
		return venueName;
	}

	public String getDateTime() {
		return dateTime;
	}
	
}
