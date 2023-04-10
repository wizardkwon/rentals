package client;


public class ClientDto {
	private String clientId;
	private String clientPassword;
	private String clientName;
	private String dateTime;
	
	
	public ClientDto(String clientId, String clientPassword ,String clientName, String dateTime) {
		this.clientId = clientId;
		this.clientPassword = clientPassword;
		this.clientName = clientName;
		this.dateTime = dateTime;
		
	}
	
	public ClientDto() {
		
	}
public ClientDto(String clientName) {
		this.clientName = clientName;
	}

	public String getClientId() {
		return clientId;
	}

	public void setClientId(String clientId) {
		this.clientId = clientId;
	}
	public String getClientPassword() {
		return clientPassword;
	}
	
	public void setClientPassword(String clientPassword) {
		this.clientPassword = clientPassword;
	}

	public String getClientName() {
		return clientName;
	}

	public void setClinetName(String clientName) {
		this.clientName = clientName;
	}

	public String getDateTime() {
		return dateTime;
	}

	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}

	
	
}
