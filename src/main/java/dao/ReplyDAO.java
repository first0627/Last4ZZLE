package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.ReplyDTO;



public class ReplyDAO {

	private  static ReplyDAO instance = null;
	
	public synchronized static ReplyDAO getInstance() {
		if(instance == null) {
			instance = new ReplyDAO();
		}
		return instance;
	}

	private Connection getConnection() throws Exception {
		Context ctx = new InitialContext(); //이것톰캣으 ㅣ설정과 환경설정에 접글할 수 있는 객체이다.
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/orcl");		//이환경안에서 jdbc/orcl이라는걸 찾아줘~~
		return ds.getConnection();
	}
	public int insert(ReplyDTO dto) throws Exception{
		String sql = "insert into reply values(reply_seq.nextval, ?, ?, default, ?)";

		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setString(1, dto.getWriter());
			pstat.setString(2, dto.getContents());
			pstat.setInt(3, dto.getParent_seq());

			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}

	// 부모 시퀀스에 맞는 댓글만 상세 글에서 보이도록
	public List<ReplyDTO> selectByPrtSeq(int prt_seq) throws Exception{
		String sql = "select * from reply where parent_seq=? order by seq desc";

		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setInt(1, prt_seq);
			List<ReplyDTO> list = new ArrayList<ReplyDTO>();

			try(ResultSet rs = pstat.executeQuery();){
				while(rs.next()) {
					int seq = rs.getInt("seq");
					String writer = rs.getString("writer");
					String contents = rs.getString("contents");
					Timestamp write_date = rs.getTimestamp("write_date");
					int parent_seq = rs.getInt("parent_seq");

					ReplyDTO dto = new ReplyDTO(seq, writer, contents, write_date, parent_seq);
					list.add(dto);
				}
				return list;
			}
		}
	}
	
	// 댓글 삭제
	public int deleteBySeq(int seq) throws Exception{
		String sql = "delete from reply where seq=?";
		
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setInt(1, seq);
			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}
	
	// 댓글 수정
	public int updateBySeq(int seq, String contents) throws Exception{
		String sql = "update reply set contents=?, write_date=default where seq=?";
		
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setString(1, contents);
			pstat.setInt(2, seq);
			
			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}
}
