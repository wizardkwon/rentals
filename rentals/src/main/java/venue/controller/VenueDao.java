package venue.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import client.Client;
import util.DBManager;
import venue.Venue;
import venue.VenueDto;

public class VenueDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public VenueDao( ) {}
	
	private static VenueDao instance = new VenueDao();
	
	public static VenueDao getInstance() {
		return instance;
	}
	
	public void joinVenue(VenueDto venueDto) {
		Venue venue = new Venue(venueDto);
		this.conn = DBManager.getConnectionFromMySQL();
		
		if(this.conn != null) {
			String sql = "INSERT INTO venue VALUES (?,?,?)";
			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.pstmt.setString(1, venue.getVenueId());
				this.pstmt.setString(2, venue.getVenueName());
				this.pstmt.setString(3, venue.getDateTime());
				
				this.pstmt.execute();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				DBManager.close(this.conn, this.pstmt, this.rs);
			}

		}
	}
	
	public ArrayList<Venue> getVenueAll() {
		ArrayList<Venue> list = new ArrayList<Venue>();
		this.conn = DBManager.getConnectionFromMySQL();
		if (this.conn != null) {
			String sql = "SELECT * FROM venue ORDER BY venue_name";

			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.rs = this.pstmt.executeQuery();
				
				while (this.rs.next()) {
					String venueId = this.rs.getString(1);
					String venueName = this.rs.getString(2);
					String dateTime = this.rs.getString(3);

					Venue venue = new Venue(venueId, venueName, dateTime);
					list.add(venue);
				}

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				DBManager.close(this.conn, this.pstmt, this.rs);
			}
		}
		return list;
	}
	
	public ArrayList<Venue> getVenueSearch(String search) {
		ArrayList<Venue> list = new ArrayList<Venue>();
		this.conn = DBManager.getConnectionFromMySQL();
		if (this.conn != null) {
			String sql = "SELECT * FROM venue WHERE venue_name like ? ORDER BY venue_name";
			System.out.println("검색어: "+search);
			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.pstmt.setString(1, '%'+search+'%');
				this.rs = this.pstmt.executeQuery();
				while (this.rs.next()) {
					String venueId = this.rs.getString(1);
					String venueName = this.rs.getString(2);
					String dateTime = this.rs.getString(3);

					Venue venue = new Venue(venueId, venueName, dateTime);
					list.add(venue);
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
