package dto;

import java.sql.Timestamp;

public class QnABoardDTO {
	private int seq;
	private String title;
	private String contents;
	private String writerId;
	private String writerName;
	private Timestamp write_date;
	private int view_count;
	
	public QnABoardDTO() {
		super();
	}
	
	public QnABoardDTO(int seq, String title, String contents, String writerId, String writerName, Timestamp write_date, int view_count) {
		this.seq = seq;
		this.title = title;
		this.contents = contents;
		this.writerId = writerId;
		this.writerName = writerName;
		this.write_date = write_date;
		this.view_count = view_count;
	}
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
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

	public Timestamp getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Timestamp write_date) {
		this.write_date = write_date;
	}
	public int getView_count() {
		return view_count;
	}
	public void setView_count(int view_count) {
		this.view_count = view_count;
	}
	
	
	
}
