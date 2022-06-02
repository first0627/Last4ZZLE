package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.TvingDTO;

public class TvingDAO {
	private static TvingDAO instance = null;

	public synchronized static TvingDAO getInstance() {
		if (instance == null) {
			instance = new TvingDAO();
		}
		return instance;
	}

	private Connection getConnection() throws Exception {
		Context ctx = new InitialContext();
		DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/orcl");
		return ds.getConnection();
	}

	public List<TvingDTO> selectAll() throws Exception {
		String sql = "select * from tving order by seq";
		try (Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				ResultSet rs = pstat.executeQuery();) {

			List<TvingDTO> list = new ArrayList<>();
			while (rs.next()) {
				TvingDTO dto = new TvingDTO();
				dto.setSeq(rs.getInt(1));
				dto.setType(rs.getString(2));
				dto.setGenre(rs.getString(3));
				dto.setTitle(rs.getString(4));
				dto.setImg(rs.getString(5));
				list.add(dto);
			}
			return list;
		}
	}

	public List<TvingDTO> selectBetween(int limit) throws Exception {
		String sql = "select * from tving where seq between ? and ? + 19";
		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setInt(1, limit);
			pstat.setInt(2, limit);
			
			try (ResultSet rs = pstat.executeQuery();) {
				List<TvingDTO> list = new ArrayList<>();
				while (rs.next()) {
					TvingDTO dto = new TvingDTO();
					dto.setSeq(rs.getInt(1));
					dto.setType(rs.getString(2));
					dto.setGenre(rs.getString(3));
					dto.setTitle(rs.getString(4));
					dto.setImg(rs.getString(5));
					list.add(dto);
				}
				return list;
			}
		}
	}
}
