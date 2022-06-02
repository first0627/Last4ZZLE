package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.AllnewottDTO;

public class AllnewottDAO {
	private static AllnewottDAO instance = null;

	public synchronized static AllnewottDAO getInstance() {
		if (instance == null) {
			instance = new AllnewottDAO();
		}
		return instance;
	}

	private Connection getConnection() throws Exception {
		Context ctx = new InitialContext();
		DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/orcl");
		return ds.getConnection();
	}

	public List<AllnewottDTO> getDetail(String img) throws Exception {
		String sql = "select * from ottallnew where posterimageurl=?";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, img);

			try (ResultSet rs = pstat.executeQuery();) {
				List<AllnewottDTO> list = new ArrayList<>();
				while (rs.next()) {
					AllnewottDTO dto = new AllnewottDTO();
					dto.setSeq(rs.getInt(1));
					dto.setIdx(rs.getInt(2));
					dto.setGenre(rs.getInt(3));
					dto.setOtt(rs.getInt(4));
					dto.setKtitle(rs.getString(5));
					dto.setEtitle(rs.getString(6));
					dto.setType(rs.getString(7));
					dto.setScore(rs.getInt(8));
					dto.setImg(rs.getString(10));
					list.add(dto);
				}
				return list;
			}
		}
	}

	public List<AllnewottDTO> ott(String img) throws Exception {
		String sql = "select distinct ott from ottallnew where posterimageurl = ? and ott != 0 order by to_number(ott)";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, img);

			try (ResultSet rs = pstat.executeQuery();) {

				List<AllnewottDTO> list = new ArrayList<AllnewottDTO>();

					while (rs.next()) {
					AllnewottDTO dto = new AllnewottDTO();

					dto.setOtt(rs.getInt(1));
					list.add(dto);
				}

				return list;
			}
		}
	}
	
	public List<AllnewottDTO> genre(String img) throws Exception {
		String sql = "select distinct genre from ottallnew where posterimageurl = ? and ott != 0 order by genre";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, img);

			try (ResultSet rs = pstat.executeQuery();) {

				List<AllnewottDTO> list = new ArrayList<AllnewottDTO>();

					while (rs.next()) {
					AllnewottDTO dto = new AllnewottDTO();

					dto.setGenre(rs.getInt(1));
					list.add(dto);
				}

				return list;
			}
		}
	}
	
	public List<AllnewottDTO> searching(String what) throws Exception {
	      String sql = "select * from ottallnew where (REPLACE(titlekr,' ','') like ? or titleen like ?) and ott = 0";

	      try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
	         pstat.setString(1,"%"+what+"%");
	         pstat.setString(2,"%"+what+"%");
	         
	         try (ResultSet rs = pstat.executeQuery();) {

	            List<AllnewottDTO> list = new ArrayList<AllnewottDTO>();

	            while (rs.next()) {
	               int seq = rs.getInt("seq");
	               int idx = rs.getInt("idx");
	               int genre = rs.getInt("genre");
	               int ott = rs.getInt("ott");
	               String ktitle = rs.getString("titlekr");
	               String etitle = rs.getString("titleen");
	               String type = rs.getString("mediatype");
	               int score = rs.getInt("indexscore");
	               String img = rs.getString("posterimageurl");

	               AllnewottDTO dto = new AllnewottDTO(seq, idx, genre, ott, ktitle, etitle, type, score, img);
	               list.add(dto);
	            }

	            return list;
	         }
	         
	         
	      }

	   }
}
