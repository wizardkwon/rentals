package client;

import java.sql.Timestamp;

public class ClientDto {
	private String clientId;
	private String clientPassword;
	private String clinetName;
	private String dateTime;
	
	
	public ClientDto(String clientId, String clientPassword ,String clientName, String dateTime) {
		this.clientId = clientId;
		this.clientPassword = clientPassword;
		this.clinetName = clientName;
		this.dateTime = dateTime;
		
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

	public String getClinetName() {
		return clinetName;
	}

	public void setClinetName(String clinetName) {
		this.clinetName = clinetName;
	}

	public String getDateTime() {
		return dateTime;
	}

	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}

	
	
}
