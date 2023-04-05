package client;

import java.sql.Timestamp;

import client.controller.ClientDao;

public class Client {
	private String clientId;
	private String clientPassword;
	private String clinetName;
	private String dateTime;
	
	public Client(String clientId, String clientPassword, String clientName, String dateTime) {
		this.clientId = clientId;
		this.clientPassword = clientPassword;
		this.clinetName = clientName;
		this.dateTime = dateTime;
		
	}
	
	public Client(ClientDto clientDto) {
		this.clientId = clientDto.getClientId();
		this.clientPassword = clientDto.getClientPassword();
		this.clinetName = clientDto.getClinetName();
		this.dateTime = clientDto.getDateTime();
	
	}

	public String getClientId() {
		return clientId;
	}

	public String getClinetName() {
		return clinetName;
	}

	public String getDateTime() {
		return dateTime;
	}

	public String getClientPassword() {
		return clientPassword;
	}
	
	

}
