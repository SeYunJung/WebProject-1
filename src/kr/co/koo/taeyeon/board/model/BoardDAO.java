package kr.co.koo.taeyeon.board.model;

import java.sql.*;
import java.util.*;

import javax.naming.*;
import javax.sql.DataSource;

public class BoardDAO {
	
	private static BoardDAO dao = new BoardDAO();
	
	private DataSource ds;
	
	private BoardDAO() {
		try {
			Context ct = new InitialContext();
			ds = (DataSource)ct.lookup("java:comp/env/jdbc/mysql");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static BoardDAO getInstance() {
		if(dao == null) {
			dao = new BoardDAO();
		}
		return dao;
	}
	
	// 총 게시글 수 반환 함수
	public int selectCount() {
		int num = 0;
		
		String sql = "SELECT COUNT(*) FROM board_list";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			rs.next(); // sql이 한행만 검색됨
			num = rs.getInt(1); // 1행의 데이터를 가져온다. count집계 함수는 int형을 반환함 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return num; // 총 게시물 수 반환 
		
	}
	
	public List<BoardVO> getBoardArticles(int firstRow, int endRow) {
		
		List<BoardVO> articleList = new ArrayList<>();
		
		String sql = "SELECT * FROM board_list ORDER BY board_id desc LIMIT ?, ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, firstRow - 1);
			pstmt.setInt(2, endRow - firstRow + 1);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BoardVO article = new BoardVO(rs.getInt("board_id"),
											  rs.getString("board_name"),
											  rs.getString("board_title"),
											  rs.getString("board_content"),
											  rs.getTimestamp("board_date"),
											  rs.getInt("board_hit"));
				articleList.add(article);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return articleList;
		
	}

}
