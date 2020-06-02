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


import dto.ExhibitDTO;
import dto.MemberDTO;
import dto.ReCommentDTO;
import util.DBManager;



public class ExhibitDAO {
	
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
	Context initContext;
	Context envContext;
	DataSource ds;
private static ExhibitDAO eDAO;
	

	public static ExhibitDAO getInstance() {
		if (eDAO == null) {
			eDAO = new ExhibitDAO();
		}
		return eDAO;
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
	// 전시 상세 내용 보기 :글번호로 찾아온다. : 실패 null,
	public ExhibitDTO selectOneExhibitionByCode(String code) {
		String sql = "select * from exhibit where code = ?";
		ExhibitDTO eVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, code);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				eVo = new ExhibitDTO();
				eVo.setCode(rs.getInt("code"));
				eVo.setEname(rs.getString("ename"));
				eVo.setPrice(rs.getInt("price"));
				eVo.setInfo(rs.getString("info"));
				eVo.setAmount(rs.getInt("amount"));
				eVo.setEdate(rs.getString("edate"));
			
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return eVo;
	}
	
	
	
	public List<ExhibitDTO> selectAllExhibitions() {
		// 최근 등록한 리뷰 먼저 출력하기
		String sql = "select * from exhibit order by code asc";
		List<ExhibitDTO> exlist = new ArrayList<ExhibitDTO>();
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				ExhibitDTO eVo = new ExhibitDTO();
				eVo.setCode(rs.getInt("code"));
				eVo.setEname(rs.getString("ename"));
				eVo.setPrice(rs.getInt("price"));
				eVo.setInfo(rs.getString("info"));
				eVo.setAmount(rs.getInt("amount"));
				eVo.setEdate(rs.getString("edate"));
				exlist.add(eVo);
			}// while문 끝
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, psmt, rs);
		}
		return exlist;
		
		
	}// selectAllProducts() {
	


//	public void insertProduct(ProductVO pVo) {
//		String sql = "insert into product values(product_seq.nextval, ?, ?, ?, ?)";
//		Connection conn = null;
//		PreparedStatement pstmt = null;
//		try {
//			conn = DBManager.getConnection();
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, pVo.getName());
//			pstmt.setInt(2, pVo.getPrice());
//			pstmt.setString(3, pVo.getPictureUrl());
//			pstmt.setString(4, pVo.getDescription());
//			pstmt.executeUpdate(); // 실행
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			DBManager.close(conn, pstmt);
//		}
//	}

	
//	public ExhibitDTO detailGoods(int num)
//	{
//		String sql = "Select * from goods where goods_num = ?";
//		
//		try {
//			psmt = conn.prepareStatement(sql);
//			
//			psmt.setInt(1, num);
//			
//			rs = psmt.executeQuery();
//			
//			ExhibitDTO T = new ExhibitDTO();
//			
//			if(rs.next())
//			{
//				T.setGoods_num(rs.getInt("goods_num"));
//				T.setName(rs.getString("name"));
//				T.setPrice(rs.getInt("price"));
//				T.setImage(rs.getString("image"));
//				T.setRegdate(rs.getDate("regdate"));
//			}
//			
//			return T;
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			System.out.print("detailGoods SQL ERROR");
//			
//			return null;
//		}
//	}


}

