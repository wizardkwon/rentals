package board.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import board.Board;
import board.BoardDto;
import util.DBManager;
import vehicle.Vehicle;
import vehicle.VehicleDto;

public class BoardDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public BoardDao() {}
	private static BoardDao instance = new BoardDao();
	
	public static BoardDao getInstance() {
		return instance;
	}
	
	public void joinBoard(BoardDto boardDto) {
		Board board = new Board(boardDto);
		this.conn = DBManager.getConnectionFromMySQL();
		
		if(this.conn != null) {
			String sql = "INSERT INTO board VALUES (?,?,?,?,?,?)";
			try {
				
				this.pstmt = this.conn.prepareStatement(sql);
				this.pstmt.setString(1, board.getClientId());
				this.pstmt.setString(2, board.getPostTitle());
				this.pstmt.setString(3, board.getContents());
				this.pstmt.setString(4, board.getDateTime());
				this.pstmt.setInt(5, board.getPostType());
				
				
				this.pstmt.execute();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				DBManager.close(this.conn, this.pstmt);
			}

		}
	}
	public ArrayList<Board> getBoardSearch(String search) {
		ArrayList<Board> list = new ArrayList<Board>();
		this.conn = DBManager.getConnectionFromMySQL();
		if (this.conn != null) {
			String sql = "SELECT * FROM notice_list WHERE client_name like ? ORDER BY post_type";
			System.out.println("검색어: "+search);
			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.pstmt.setString(1, '%'+search+'%');
				this.rs = this.pstmt.executeQuery();
				while (this.rs.next()) {
					int postNo = this.rs.getInt(1);
					String clientId = this.rs.getString(2);
					String clientName = this.rs.getString(3);
					String postTitle = this.rs.getString(4);
					String contents = this.rs.getString(5);
					String dateTime = this.rs.getString(6);
					int postType = this.rs.getInt(7);

					Board board = new Board(postNo, clientId,clientName,postTitle,contents,dateTime,postType );
					list.add(board);
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
