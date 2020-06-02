package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


import dto.MemberDTO;
import util.DBManager;

public class MemberDAO {
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
	Context initContext;
	Context envContext;
	DataSource ds;

	private static MemberDAO mDAO;

	private MemberDAO() {

	}

	// 사용자 인증시 사용하는 메소드
		public int userCheck(String email, String pass1) {
			int result = -1;
			String sql = "select pass1 from member where email=?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, email);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					if (rs.getString("pass1") != null
							&& rs.getString("pass1").equals(pass1)) {
						result = 1;
					} else {
						result = 0;
					}
				} else {
					result = -1;
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (rs != null)
						rs.close();
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			return result;
		}


		public int confirm(String email) {
			int result = -1;
			String sql = "select email from member where email=?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, email);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					result = 1;
				} else {
					result = -1;
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (rs != null)
						rs.close();
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			return result;
		}


	public int insert(MemberDTO mVo) {
		int result = -1;
		MemberDTO b = mVo;
		if (connect()) {
			try {
				String sql = "insert into member(email, pass1,pass2,name,tel ) "
						+ "values(?, ?, ?, ?, ?)";
				PreparedStatement psmt = conn.prepareStatement(sql);
				conn = DBManager.getConnection();
				psmt.setString(1, b.getEmail());
				psmt.setString(2, b.getPass1());
				psmt.setString(3, b.getPass2());
				psmt.setString(4, b.getName());
				psmt.setString(5, b.getTel());
				psmt.executeUpdate();
			} catch (SQLException e) {
				return 1;
			}
		} else {
		}
		return result;

	}

//	public void update(MemberDTO o) {
//
//	}
//
//	public void delete(MemberDTO o) {
//		MemberDTO b = o;
//
//	}
	public int insertMember(MemberDTO mVo) {
		int result = -1;
		String sql = "insert into member(email, pass1,pass2,name,tel ) "
				+ "values(?, ?, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement psmt = null;
		MemberDTO b = mVo;
		try {
			System.out.println("b");
			conn = DBManager.getConnection();
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, b.getEmail());
			psmt.setString(2, b.getPass1());
			psmt.setString(3, b.getPass2());
			psmt.setString(4, b.getName());
			psmt.setString(5, b.getTel());
			psmt.executeUpdate();
			System.out.println("c");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("d");
		} finally {
			DBManager.close(conn, psmt);
			System.out.println("e");
		}
		return result;
	}

//	public int insertMember(MemberDTO mVo) {
//		int result = -1;
//		String sql = "insert into member(email, pass1,pass2,name,tel ) "
//				+ "values(?, ?, ?, ?, ?)";
//		Connection conn = null;
//		PreparedStatement psmt = null;
//		MemberDTO b = mVo;
//		try {
//			System.out.println("b");
//			conn = DBManager.getConnection();
//			psmt = conn.prepareStatement(sql);
//			psmt.setString(1, b.getEmail());
//			psmt.setString(2, b.getPass1());
//			psmt.setString(3, b.getPass2());
//			psmt.setString(4, b.getName());
//			psmt.setString(5, b.getTel());
//			psmt.executeUpdate();
//			System.out.println("c");
//		} catch (SQLException e) {
//			e.printStackTrace();
//			System.out.println("d");
//		} finally {
//			DBManager.close(conn, psmt);
//			System.out.println("e");
//		}
//		return result;
//	}
	public MemberDTO idpwd(String email, String pass1) {
		MemberDTO mDto = null;
		if (connect()) {
			try {
				String sql = "select * from member where email =? and pass2=?";
				PreparedStatement psmt = conn.prepareStatement(sql);
				psmt.setString(1, email);
				rs = psmt.executeQuery();
				if (rs.next()) {
					mDto = new MemberDTO();
					mDto.setEmail(rs.getString("email"));
					mDto.setPass1(rs.getString("pass1"));
					mDto.setPass2(rs.getString("pass2"));
					mDto.setName(rs.getString("name"));
					mDto.setTel(rs.getString("tel"));

				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else {
			System.out.println("DB연결 실패");
			System.exit(0);
		}

		return mDto;
	}

	// 아이디로 회원 정보 가져오는 메소드
	public MemberDTO getMember(String email) {
		MemberDTO mVo = null;
		String sql = "select * from member where email=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				mVo = new MemberDTO();
				mVo.setEmail(rs.getString("email"));
				mVo.setPass1(rs.getString("pass1"));
				mVo.setPass2(rs.getString("pass2"));
				mVo.setName(rs.getString("name"));
				mVo.setTel(rs.getString("tel"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return mVo;
	}

	public Connection getConnection() throws Exception {
		Connection conn = null;
		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
		conn = ds.getConnection();
		return conn;
	}

	public int emailpass1(String email, String pass1) {
		MemberDTO member = null;
		int result = -1;
		if (connect()) {
			try {
				String sql = "SELECT * FROM member where email =? and pass1 =?";
				PreparedStatement psmt = conn.prepareStatement(sql);
				psmt.setString(1, email);
				psmt.setString(2, pass1);
				rs = psmt.executeQuery();
				if (rs.next()) {
					member = new MemberDTO();
					member.setEmail(rs.getString("email"));
					member.setPass1(rs.getString("pass1"));
					member.setPass2(rs.getString("pass2"));
					member.setName(rs.getString("Name"));
					member.setTel(rs.getString("tel"));
				}
			} catch (SQLException e) {
				e.printStackTrace();
				return 1;
			}
		} else {
			System.out.println("DB연결 실패");
			System.exit(0);
		}

		return result;
	}

	public ArrayList<MemberDTO> getAll() {
		ArrayList<MemberDTO> list = new ArrayList<>();
		String sql = "SELECT * FROM member";
		if (connect()) {
			try {
				stmt = conn.createStatement();
				if (stmt != null) {
					rs = stmt.executeQuery(sql);
					while (rs.next()) {
						MemberDTO member = new MemberDTO();
						member.setEmail(rs.getString("email"));
						member.setPass1(rs.getString("pass1"));
						member.setPass2(rs.getString("pass2"));
						member.setName(rs.getString("name"));
						member.setTel(rs.getString("tel"));
						list.add(member);
					}
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

		} else {
			System.out.println("DB연결 실패");
			System.exit(0);
		}

		return list;
	}

//	public int getMember(String email,String pass1) {
//		MemberDTO mVo = null;
//		String sql = "select * from member where email=? and pass1=?";
//		Connection conn = null;
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		try {
//			conn = ds.getConnection();
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, email);
//			pstmt.setString(2, pass1);
//			rs = pstmt.executeQuery();
//			if (rs.next()) {
//				mVo = new MemberDTO();
//				mVo.setEmail(rs.getString("email"));
//				mVo.setPass1(rs.getString("pass1"));
//				mVo.setPass2(rs.getString("pass2"));
//				mVo.setName(rs.getString("name"));
//				mVo.setTel(rs.getString("tel"));
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			try {
//				if (rs != null)
//					rs.close();
//				if (pstmt != null)
//					pstmt.close();
//				if (conn != null)
//					conn.close();
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//		}
//		return 0;
//	}

	public static MemberDAO getInstance() {
		if (mDAO == null) {
			mDAO = new MemberDAO();
		}
		return mDAO;
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
}
