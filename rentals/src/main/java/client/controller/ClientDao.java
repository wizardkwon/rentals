package client.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import client.Client;
import client.ClientDto;
import util.DBManager;

public class ClientDao {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public ClientDao() {
	}

	private static ClientDao instance = new ClientDao();

	public static ClientDao getInstance() {
		return instance;
	}

	public void joinClient(ClientDto clinetDto) {
		Client client = new Client(clinetDto);
		this.conn = DBManager.getConnectionFromMySQL();

		if (this.conn != null) {
			String sql = "INSERT INTO client VALUES (?,?,?,?)";
			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.pstmt.setString(1, client.getClientId());
				this.pstmt.setString(2, client.getClientPassword());
				this.pstmt.setString(3, client.getClientName());
				this.pstmt.setString(4, client.getDateTime());

				this.pstmt.execute();

			} catch (SQLException e) {

				e.printStackTrace();
			}
		}
	}

	public ArrayList<Client> getClientAll() {
		ArrayList<Client> list = new ArrayList<Client>();
		this.conn = DBManager.getConnectionFromMySQL();
		if (this.conn != null) {
			String sql = "SELECT * FROM `client`";

			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.rs = this.pstmt.executeQuery();
				while (this.rs.next()) {
					String clientId = this.rs.getString(1);
					String clientPassword = this.rs.getString(2);
					String clientName = this.rs.getString(3);
					String dateTime = this.rs.getString(4);

					Client client = new Client(clientId, clientPassword, clientName, dateTime);
					list.add(client);
				}

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				DBManager.close(this.conn, this.pstmt, this.rs);
			}
		}
		return list;
	}

}
