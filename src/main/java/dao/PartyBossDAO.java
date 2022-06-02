package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.AllottDTO;
import dto.PartyBossDTO;
import dto.PartyMemberDTO;

public class PartyBossDAO {

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

	// 보스 ott가입
	public int insert(PartyBossDTO dto) throws Exception {
		String sql = "insert into partyboss values(?,?,?,?,party_seq.currval)";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getOtt());
			pstat.setString(3, dto.getOttid());
			pstat.setString(4, dto.getOttpw());

			int result = pstat.executeUpdate();

			con.commit();

			return result;

		}
	}
	
	public int insertWatchaParty(PartyBossDTO dto) throws Exception {
		String sql = "insert into partyboss values(?,?,?,?,watchaparty_seq.currval)";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getOtt());
			pstat.setString(3, dto.getOttid());
			pstat.setString(4, dto.getOttpw());

			int result = pstat.executeUpdate();

			con.commit();

			return result;

		}
	}
	public int insertTvingParty(PartyBossDTO dto) throws Exception {
		String sql = "insert into partyboss values(?,?,?,?,tvingparty_seq.currval)";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getOtt());
			pstat.setString(3, dto.getOttid());
			pstat.setString(4, dto.getOttpw());

			int result = pstat.executeUpdate();

			con.commit();

			return result;

		}
	}
	public int insertDisneyParty(PartyBossDTO dto) throws Exception {
		String sql = "insert into partyboss values(?,?,?,?,disneyparty_seq.currval)";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getOtt());
			pstat.setString(3, dto.getOttid());
			pstat.setString(4, dto.getOttpw());

			int result = pstat.executeUpdate();

			con.commit();

			return result;

		}
	}

	// boss탈퇴
	public int ottBossOut(String id, String ott) throws Exception {
		String sql = "delete from partyboss where id=? and ott=?";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, id);
			pstat.setString(2, ott);

			int result = pstat.executeUpdate();

			con.commit();

			return result;
		}

	}

	// 파티 로그인
	public boolean PartyLogin(String partyid, String partypw) throws Exception {
		String sql = "select * from partyboss where partyid=? and partypw=?";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, partyid);
			pstat.setString(2, partypw);

			try (ResultSet rs = pstat.executeQuery();) {
				return rs.next();
			}
		}
	}

	// 파티아이디 중복검사
	public boolean PartyIDExist(String ott, String partyid) throws Exception {
		String sql = "select partyid from Partyboss where ott=? and id=?";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, ott);
			pstat.setString(2, partyid);

			try (ResultSet rs = pstat.executeQuery();) {
				return rs.next();
			}
		}
	}

	// 마이페이지 갔을 때 내가 가입한 ott알려주기
	public PartyBossDTO myott(String pid) throws Exception {
		String sql = "select * from partyboss where id = ?";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, pid);

			try (ResultSet rs = pstat.executeQuery();) {
				PartyBossDTO dto = null;
				while (rs.next()) {

					String ott = rs.getString("ott");
					String ottid = rs.getString("ottid");
					String ottpw = rs.getString("ottpw");

					dto = new PartyBossDTO(pid, ott, ottid, ottpw);

				}
				return dto;
			}
		}
	}

	public PartyBossDTO extractOttIdPw(String id) throws Exception {
		String sql = "select * from partyboss where id = ?";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, id);

			try (ResultSet rs = pstat.executeQuery();) {
				PartyBossDTO dto = null;
				if (rs.next()) {

					String ott = rs.getString("ott");
					String ottid = rs.getString("ottid");
					String ottpw = rs.getString("ottpw");

					dto = new PartyBossDTO(id, ott, ottid, ottpw);

				}
				return dto;
			}
		}
	}

	// 보스테이블에 내 아이디가 있니>?
	public PartyBossDTO isBossExst(String pid) throws Exception {
		String sql = "select * from partyboss where id = ?";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, pid);

			try (ResultSet rs = pstat.executeQuery();) {
				PartyBossDTO dto = null;
				while (rs.next()) {

					String ott = rs.getString("ott");
					String ottid = rs.getString("ottid");
					String ottpw = rs.getString("ottpw");

					dto = new PartyBossDTO(pid, ott, ottid, ottpw);

				}
				return dto;
			}
		}
	}

	public boolean isBossExist(String id) throws Exception {
		String sql = "select * from partyboss where id =? ";
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

	public List<PartyBossDTO> isBossExistList(String id) throws Exception {
		String sql = "select * from partyboss where id = ?";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, id);

			try (ResultSet rs = pstat.executeQuery();) {
				List<PartyBossDTO> list = new ArrayList<>();
				while (rs.next()) {
					PartyBossDTO dto = new PartyBossDTO();
					dto.setId(rs.getString("id"));
					dto.setOtt(rs.getString("ott"));
					dto.setOttid(rs.getString("ottid"));
					dto.setOttpw(rs.getString("ottpw"));
					
					list.add(dto);
				}
				return list;
			}
		}
	}

	public String myNickName(String pid) throws Exception {
		String sql = "select nickname from member where id = ?";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, pid);

			try (ResultSet rs = pstat.executeQuery();) {

				rs.next();
				String nickname = rs.getString("nickname");

				return nickname;
			}
		}
	}

	public String selectBossOtt(String pid) throws Exception {
		String sql = "select ott from partyboss where id = ?";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, pid);

			try (ResultSet rs = pstat.executeQuery();) {

				rs.next();
				String ott = rs.getString("ott");

				return ott;
			}
		}
	}
	
//	public List<PartyBossDTO> selectBossOttList(String id) throws Exception {
//		String sql = "select ott from partyboss where id = ?";
//		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
//			pstat.setString(1, id);
//
//			try (ResultSet rs = pstat.executeQuery();) {
//				List<PartyBossDTO> list = new ArrayList<>();
//				while (rs.next()) {
//					PartyBossDTO dto = new PartyBossDTO();
//					dto.setId(id);
//					dto.setOtt(rs.getString("ott"));
//					dto.setOttid(rs.getString("ottid"));
//					dto.setOttpw(rs.getString("ottpw"));
//					
//					list.add(dto);
//				}
//				return list;
//			}
//		}
//	}

	public int selectBossSeq(String pid) throws Exception {
		String sql = "select parent_seq from partyboss where ottid = ?";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, pid);

			try (ResultSet rs = pstat.executeQuery();) {
				int parent_seq = 0;
				if (rs.next()) {
					parent_seq = rs.getInt("parent_seq");

				}
				return parent_seq;
			}
		}
	}

//	public String extractBoss(int pid) throws Exception {
//		String sql = "select ott from partyboss where parent_seq = ?";
//
//		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
//			pstat.setInt(1, pid);
//
//			try (ResultSet rs = pstat.executeQuery();) {
//
//				rs.next();
//				String ott = rs.getString("ott");
//				
//
//				return ott;
//			}
//		}
//	}
	// 방금추가한 파티 테이블에 추가하기 위해 추출
	public String extractBoss() throws Exception {
		String sql = "select ott from partyboss where parent_seq = party_seq.currval";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {

			try (ResultSet rs = pstat.executeQuery();) {

				rs.next();
				String ott = rs.getString("ott");

				return ott;
			}
		}
	}

	// 파티 시퀀스 추
	public String extractSeq() throws Exception {
		String sql = "select ott from party where parent_seq = party_seq.currval";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {

			try (ResultSet rs = pstat.executeQuery();) {

				rs.next();
				String ott = rs.getString("ott");

				return ott;
			}
		}
	}
}
