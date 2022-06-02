package dto;

public class PartyMemberDTO {
	
	private String id;
	private String ott;
	
	public PartyMemberDTO() {}
	public PartyMemberDTO(String id, String ott) {
		super();
		this.id = id;
		this.ott = ott;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getOtt() {
		return ott;
	}
	public void setOtt(String ott) {
		this.ott = ott;
	}
	
	

}
