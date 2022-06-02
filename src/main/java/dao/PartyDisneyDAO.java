package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.PartyBossDTO;
import dto.PartyDisneyDTO;

public class PartyDisneyDAO {
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

	public int createParty() throws Exception {
		String sql = "insert into disneyparty values(disneyparty_seq.nextval,?,?,?,?)";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, null);
			pstat.setString(2, null);
			pstat.setString(3, null);
			pstat.setString(4, null);

			int result = pstat.executeUpdate();

			con.commit();

			return result;

		}
	}

	public int updateBoss(String boss, int seq) throws Exception {
		String sql = "update disneyparty set boss= ? where seq = ?";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, boss);
			pstat.setInt(2, seq);
			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}

	public int seq(String pid) throws Exception {
		String sql = "select parent_seq from disneypartyboss where ottid = ?";

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

	public int sizeSeq() throws Exception {
		String sql = "select count(*) from disneyparty";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {

			try (ResultSet rs = pstat.executeQuery();) {
				int count_seq = 0;
				if (rs.next()) {
					count_seq = rs.getInt("count(*)");
				}
				return count_seq;
			}
		}
	}

	public PartyDisneyDTO isM1m2m3Exist(int seq) throws Exception {
		String sql = "select boss,m1,m2,m3 from disneyparty where seq = ?";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setInt(1, seq);
			try (ResultSet rs = pstat.executeQuery();) {

				PartyDisneyDTO dto = new PartyDisneyDTO();
				if (rs.next()) {
					String boss = rs.getString("boss");
					String m1 = rs.getString("m1");
					String m2 = rs.getString("m2");
					String m3 = rs.getString("m3");
					dto = new PartyDisneyDTO(0, boss, m1, m2, m3);
				}
				return dto;
			}
		}
	}

	public int updateM1(String m1, int seq) throws Exception {
		String sql = "update disneyparty set m1 = ? where seq = ?";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, m1);
			pstat.setInt(2, seq);
			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}

	public int updateM2(String m2, int seq) throws Exception {
		String sql = "update disneyparty set m2 = ? where seq = ?";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, m2);
			pstat.setInt(2, seq);
			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}

	public int updateM3(String m3, int seq) throws Exception {
		String sql = "update disneyparty set m3 = ? where seq = ?";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, m3);
			pstat.setInt(2, seq);
			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}

	public PartyDisneyDTO myPartyBoss(String pid) throws Exception {
		String sql = "select * from disneyparty where boss = ?";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, pid);
			try (ResultSet rs = pstat.executeQuery();) {

				PartyDisneyDTO dto = new PartyDisneyDTO();
				if (rs.next()) {
					String boss = rs.getString("boss");
					String m1 = rs.getString("m1");
					String m2 = rs.getString("m2");
					String m3 = rs.getString("m3");
					dto = new PartyDisneyDTO(0, boss, m1, m2, m3);
				}
				return dto;
			}
		}
	}

	public PartyDisneyDTO myPartyMember(String pid) throws Exception {
		String sql = "select * from disneyparty where m1 = ? or m2 = ? or m3 = ?";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, pid);
			pstat.setString(2, pid);
			pstat.setString(3, pid);
			try (ResultSet rs = pstat.executeQuery();) {

				PartyDisneyDTO dto = new PartyDisneyDTO();
				if (rs.next()) {
					String boss = rs.getString("boss");
					String m1 = rs.getString("m1");
					String m2 = rs.getString("m2");
					String m3 = rs.getString("m3");
					dto = new PartyDisneyDTO(0, boss, m1, m2, m3);
				}
				return dto;
			}
		}
	}

}
