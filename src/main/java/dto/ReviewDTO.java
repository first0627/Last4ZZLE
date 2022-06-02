package dto;

import java.sql.Timestamp;

public class ReviewDTO {

   private int seq; 
   private String parent_con;
   private String writerId;
   private String writerName;
   private String contents;
   private double grade;
   private Timestamp write_date;
   
   public ReviewDTO() {}

   public ReviewDTO(int seq, String parent_con, String writerId, String writerName, String contents, double gradd, Timestamp write_date) {
      super();
      this.seq = seq;
      this.parent_con = parent_con;
      this.writerId = writerId;
      this.writerName = writerName;
      this.contents = contents;
      this.grade = grade;
      this.write_date = write_date;
   }

   public int getSeq() {
      return seq;
   }

   public void setSeq(int seq) {
      this.seq = seq;
   }

   public String getParent_con() {
      return parent_con;
   }

   public void setParent_con(String parent_con) {
      this.parent_con = parent_con;
   }

   public String getWriterId() {
	return writerId;
   }

   public void setWriterId(String writerId) {
	this.writerId = writerId;
   }

   public String getWriterName() {
	return writerName;
   }

   public void setWriterName(String writerName) {
	this.writerName = writerName;
   }

   public String getContents() {
      return contents;
   }

   public void setContents(String contents) {
      this.contents = contents;
   }

   public double getGrade() {
      return grade;
   }

   public void setGrade(double grade) {
      this.grade = grade;
   }

   public Timestamp getWrite_date() {
      return write_date;
   }

   public void setWrite_date(Timestamp write_date) {
      this.write_date = write_date;
   };
   
   

}
