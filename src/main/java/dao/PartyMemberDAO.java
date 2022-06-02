package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.PartyBossDTO;
import dto.PartyMemberDTO;

public class PartyMemberDAO {
	
	private static MemberDAO instance = null;

	public synchronized static MemberDAO getInstance() {
		if (instance == null) {
			instance = new MemberDAO();
		}
		return instance;
	}

	private Connection getConnection() throws Exception {
		Context ctx = new InitialContext(); // 이것톰캣으 ㅣ설정과 환경설정에 접글할 수 있는 객체이다.
		DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/orcl"); // 이환경안에서 jdbc/orcl이라는걸 찾아줘~~
		return ds.getConnection();
	}
	
	
	// 멤버 ott가입
		public int insert(PartyMemberDTO dto) throws Exception {
			String sql = "insert into partymember values(?,?)";

			try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
				pstat.setString(1, dto.getId());
				pstat.setString(2, dto.getOtt());

				int result = pstat.executeUpdate();

				con.commit();

				return result;

			}
		}
		
		
		
	
		// ott 탈퇴
		public int ottMemberOut(String id, String ott) throws Exception {
			String sql = "delete from partymember where id=? and ott=?";

			try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
				pstat.setString(1, id);
				pstat.setString(2, ott);

				int result = pstat.executeUpdate();

				con.commit();

				return result;
			}

		}
		
		//마이페이지 갔을 때 내가 가입한 ott알려주기
		public PartyMemberDTO myott(String pid) throws Exception {
			String sql = "select * from partymember where id = ?";

			try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
				pstat.setString(1, pid);

				try (ResultSet rs = pstat.executeQuery();) {

					rs.next();
					String id = rs.getString("id");
					String ott = rs.getString("ott");
				
					PartyMemberDTO dto = new PartyMemberDTO(id, ott);

					return dto;
				}
			}
		}
		
		
		public boolean isMemberExist(String id) throws Exception {
			String sql = "select * from partymember where id =? ";
			try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {

				pstat.setString(1, id);

				try (ResultSet rs = pstat.executeQuery();) {

					if (rs.next()) {
				return true;

					}
					return false;
				}
			}
		}
		
		public List<PartyMemberDTO> isMemberExistList(String id) throws Exception {
			String sql = "select * from partymember where id = ?";
			try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
				pstat.setString(1, id);

				try (ResultSet rs = pstat.executeQuery();) {
					List<PartyMemberDTO> list = new ArrayList<>();
					while (rs.next()) {
						PartyMemberDTO dto = new PartyMemberDTO();
						dto.setId(rs.getString("id"));
						dto.setOtt(rs.getString("ott"));
						
						list.add(dto);
					}
					return list;
				}
			}
		}
		
		public String selectMemberOtt(String pid) throws Exception {
			String sql = "select ott from partymember where id = ?";

			try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
				pstat.setString(1, pid);

				try (ResultSet rs = pstat.executeQuery();) {

					rs.next();
					String ott = rs.getString("ott");
					

					return ott;
				}
			}
		}
		//ott가입 하겠냐는 페이지 갔을 때 이미 가입한 ott이미지는 없애기
		
		//ott
	
	
	
	

}
