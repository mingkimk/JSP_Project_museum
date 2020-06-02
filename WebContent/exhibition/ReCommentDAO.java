package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


import dto.ReCommentDTO;
import util.DBManager;

public class ReCommentDAO {
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
	Context initContext;
	Context envContext;
	DataSource ds;
private static ReCommentDAO rDAO;
	

	public static ReCommentDAO getInstance() {
		if (rDAO == null) {
			rDAO = new ReCommentDAO();
		}
		return rDAO;
	}
	private boolean connect() {
		boolean result = true;
		try {
			if (conn == null) {
				initContext = new InitialContext();
				envContext = (Context) initContext.lookup("java:/comp/env");
				ds = (DataSource) envContext.lookup("jdbc/myoracle");
				conn = ds.getConnection();
			}
			return result;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return false;
	}

	public List<ReCommentDTO> selectAllReviews() {
		// 최근 등록한 리뷰 먼저 출력하기
		String sql = "select * from review order by code desc";
		List<ReCommentDTO> recommlist = new ArrayList<ReCommentDTO>();
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				ReCommentDTO rVo = new ReCommentDTO();
				rVo.setNum(rs.getInt("num"));
				rVo.setEmail(rs.getString("email"));
				rVo.setTitle(rs.getString("tile"));
				rVo.setContent(rs.getString("content"));
				rVo.setWritedate(rs.getTimestamp("writedate"));
			//	rVo.setFilename(rs.getString("filename"));
				recommlist.add(rVo);
			}// while문 끝
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, psmt, rs);
		}
		return recommlist;
	}// selectAllProducts() {
	
	public void deleteReview(String email) {
		String sql = "delete review where email=?";
		Connection conn = null;
		PreparedStatement psmt = null;
		try {
			conn = DBManager.getConnection();
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);
			psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


	public void insertReview(ReCommentDTO rVo) {
		String sql = "insert into review("
				+ "num, email, title, content) "
				+ "values(review_seq.nextval, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement psmt = null;
		try {
			System.out.println(rVo);
			conn = DBManager.getConnection();
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, rVo.getEmail());
			psmt.setString(2, rVo.getTitle());
			psmt.setString(3, rVo.getContent());
			//psmt.setString(4, rVo.getFilename());
			psmt.executeUpdate();
			System.out.println( rVo.getEmail());
			System.out.println(rVo.getContent());
			System.out.println("저장");
		} catch (SQLException e) {
			e.printStackTrace();
			
		} finally {
			DBManager.close(conn, psmt);
		}
	}
	
}
