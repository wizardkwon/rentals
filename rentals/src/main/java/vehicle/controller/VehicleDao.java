package vehicle.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
	
	public void joinVehicle(VehicleDto vehicleDto) {
		Vehicle vehicle = new Vehicle(vehicleDto);
		this.conn = DBManager.getConnectionFromMySQL();
		
		if(this.conn != null) {
			String sql = "INSERT INTO vehicle VALUES (?,?,?,?,?,?,?)";
			try {
				
				this.pstmt = this.conn.prepareStatement(sql);
				this.pstmt.setString(1, vehicle.getVehicleId());
				this.pstmt.setString(2, vehicle.getVenueId());
				this.pstmt.setString(3, vehicle.getVehicleName());
				this.pstmt.setString(4, vehicle.getHourRate());
				this.pstmt.setString(5, vehicle.getDateTime());
				this.pstmt.setInt(6, vehicle.getVehicleType());
				this.pstmt.setString(7, "y");
				
				this.pstmt.execute();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				DBManager.close(this.conn, this.pstmt);
			}

		}
	}
	
	public ArrayList<Vehicle> getVehicleSearch(String search) {
		ArrayList<Vehicle> list = new ArrayList<Vehicle>();
		this.conn = DBManager.getConnectionFromMySQL();
		if (this.conn != null) {
			String sql = "SELECT * FROM vehicle_list WHERE vehicle_name like ? ORDER BY vehicle_type";
			
			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.pstmt.setString(1, '%'+search+'%');
				this.rs = this.pstmt.executeQuery();
				while (this.rs.next()) {
					String vehicleId = this.rs.getString(1);
					String vehicleName = this.rs.getString(4);
					String venueId = this.rs.getString(2);
					String venueName = this.rs.getString(3);
					int vehicleType = this.rs.getInt(5);
					String hourRate = this.rs.getString(6);
					String dateTime = this.rs.getString(7);
					String checkRes = this.rs.getString(8);
					System.out.println("checkRes: "+checkRes);
					Vehicle vehicle = new Vehicle(vehicleId, vehicleName,venueId,venueName,vehicleType,hourRate,dateTime,checkRes );
					list.add(vehicle);
				}

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				DBManager.close(this.conn, this.pstmt, this.rs);
			}
		}
		return list;
	}
	
	public Vehicle getVehicleById(String code) {
		Vehicle vehicle = null;
		this.conn = DBManager.getConnectionFromMySQL();
		if (this.conn != null) {
			String sql = "SELECT * FROM vehicle_list WHERE vehicle_id=?";
			
			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.pstmt.setString(1, code);
				this.rs = this.pstmt.executeQuery();
				while(this.rs.next()) {
					
					String vehicleId = this.rs.getString(1);
					String venueId = this.rs.getString(2);
					String venueName = this.rs.getString(3);
					String vehicleName = this.rs.getString(4);
					int vehicleType = this.rs.getInt(5);
					String hourRate = this.rs.getString(6);
					String dateTime = this.rs.getString(7);
					String checkRes = this.rs.getString(8);
					
					vehicle = new Vehicle(vehicleId, vehicleName, venueId, venueName, vehicleType, hourRate,dateTime,checkRes);
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				DBManager.close(this.conn, this.pstmt, this.rs);
			}
		}
		return vehicle;
	}
}
