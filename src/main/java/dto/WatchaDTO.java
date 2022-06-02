package dto;

public class WatchaDTO {
	private int seq;
	private String type;
	private String genre;
	private String title;
	private String img;
	
	public WatchaDTO() {
	}
	
	public WatchaDTO(int seq, String type, String genre, String title, String img) {
		this.seq = seq;
		this.type = type;
		this.genre = genre;
		this.title = title;
		this.img = img;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
}
