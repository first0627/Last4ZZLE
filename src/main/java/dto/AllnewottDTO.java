package dto;

public class AllnewottDTO {
	private int seq;
	private int idx;
	private int genre;
	private int ott;
	private String ktitle;
	private String etitle;
	private String type;
	private int score;
	private String img;
	
	public AllnewottDTO() {
	}
	
	public AllnewottDTO(int seq, int idx, int genre, int ott, String ktitle, String etitle, String type, int score,
			String img) {
		this.seq = seq;
		this.idx = idx;
		this.genre = genre;
		this.ott = ott;
		this.ktitle = ktitle;
		this.etitle = etitle;
		this.type = type;
		this.score = score;
		this.img = img;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getGenre() {
		return genre;
	}

	public void setGenre(int genre) {
		this.genre = genre;
	}

	public int getOtt() {
		return ott;
	}

	public void setOtt(int ott) {
		this.ott = ott;
	}

	public String getKtitle() {
		return ktitle;
	}

	public void setKtitle(String ktitle) {
		this.ktitle = ktitle;
	}

	public String getEtitle() {
		return etitle;
	}

	public void setEtitle(String etitle) {
		this.etitle = etitle;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
}
