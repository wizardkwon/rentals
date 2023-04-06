package vehicle.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DBManager;
import vehicle.Vehicle;
import vehicle.VehicleDto;
import venue.Venue;
import venue.VenueDto;

public class VehicleDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public VehicleDao() {}
	
	private static VehicleDao instance = new VehicleDao();
	
	public static VehicleDao getInstance() {
		return instance;
	}
	
	public void joinVenue(VehicleDto vehicleDto) {
		Vehicle vehicle = new Vehicle(vehicleDto);
		this.conn = DBManager.getConnectionFromMySQL();
		
		if(this.conn != null) {
			String sql = "INSERT INTO vehicle VALUES (?,?,?,?,?,?)";
			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.pstmt.setString(1, vehicle.getVehicleId());
				this.pstmt.setString(2, vehicle.getVenueId());
				this.pstmt.setString(3, vehicle.getVehicleName());
				this.pstmt.setString(4, vehicle.getHourRate());
				this.pstmt.setString(5, vehicle.getDateTime());
				this.pstmt.setInt(6, vehicle.getVehicleType());
				
				this.pstmt.execute();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				DBManager.close(this.conn, this.pstmt, this.rs);
			}

		}
	}
}
