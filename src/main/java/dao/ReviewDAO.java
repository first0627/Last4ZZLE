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

import dto.QnABoardDTO;
import dto.ReviewDTO;

public class ReviewDAO {

      private  static ReviewDAO instance = null;
      
      public synchronized static ReviewDAO getInstance() {
         if(instance == null) {
            instance = new ReviewDAO();
         }
         return instance;
      }

      private Connection getConnection() throws Exception {
         Context ctx = new InitialContext(); //이것톰캣으 ㅣ설정과 환경설정에 접글할 수 있는 객체이다.
         DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/orcl");      //이환경안에서 jdbc/orcl이라는걸 찾아줘~~
         return ds.getConnection();
      }
      
      
      public int insert(ReviewDTO dto) throws Exception{
         String sql = "insert into review values(review_seq.nextval, ?, ?, ?, ?, 0, default)";

         try(Connection con = this.getConnection();
               PreparedStatement pstat = con.prepareStatement(sql);){
            pstat.setString(1, dto.getParent_con());
            pstat.setString(2, dto.getWriterId());
            pstat.setString(3, dto.getWriterName());
            pstat.setString(4, dto.getContents());

            int result = pstat.executeUpdate();
            con.commit();
            return result;
         }
      }

      // 부모 시퀀스에 맞는 댓글만 상세 글에서 보이도록
      public List<ReviewDTO> select(String parent_con) throws Exception{
         String sql = "select * from review where parent_con=? order by seq desc";

         try(Connection con = this.getConnection();
               PreparedStatement pstat = con.prepareStatement(sql);){
            pstat.setString(1, parent_con);
            List<ReviewDTO> list = new ArrayList<ReviewDTO>();

            try(ResultSet rs = pstat.executeQuery();){
               while(rs.next()) {
            	  ReviewDTO dto = new ReviewDTO();
                  dto.setSeq(rs.getInt("seq"));
                  dto.setParent_con(rs.getString("parent_con"));
                  dto.setWriterId(rs.getString("writerId"));
                  dto.setWriterName(rs.getString("writerName"));
                  dto.setContents(rs.getString("contents"));
                  dto.setGrade(rs.getDouble("grade"));
                  dto.setWrite_date(rs.getTimestamp("write_date"));
                  double grade = rs.getInt("grade");
                  
                  list.add(dto);
               }
               return list;
            }
         }
      }
      
      // 댓글 삭제
      public int delete(int seq) throws Exception{
         String sql = "delete from review where seq=?";
         
         try(Connection con = this.getConnection();
               PreparedStatement pstat = con.prepareStatement(sql);){
            pstat.setInt(1, seq);
            int result = pstat.executeUpdate();
            con.commit();
            return result;
         }
      }
      
      // 댓글 수정
      public int update(int seq, String contents) throws Exception{
         String sql = "update review set contents=?, write_date=default where seq=?";
         
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
