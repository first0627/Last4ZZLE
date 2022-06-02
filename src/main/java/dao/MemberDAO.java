package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.MemberDTO;



public class MemberDAO {

	private  static MemberDAO instance = null;
	
	public synchronized static MemberDAO getInstance() {
		if(instance == null) {
			instance = new MemberDAO();
		}
		return instance;
	}

	private Connection getConnection() throws Exception {
		Context ctx = new InitialContext(); //이것톰캣으 ㅣ설정과 환경설정에 접글할 수 있는 객체이다.
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/orcl");		//이환경안에서 jdbc/orcl이라는걸 찾아줘~~
		return ds.getConnection();
	}
	

	// 아이디 중복검사
	public boolean isIDExist(String id) throws Exception {
		String sql = "select id from member where id=?";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, id);

			try (ResultSet rs = pstat.executeQuery();) {
				return rs.next();
			}
		}
	}

	// 회원정보 DB에 저장
	public int insert(MemberDTO dto) throws Exception {
		String sql = "insert into member values(?,?,?,default,null,null,null,null)";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getPw());
			pstat.setString(3, dto.getNickname());

			int result = pstat.executeUpdate();

			con.commit();

			return result;

		}
	}

	// 회원탈퇴
	public int deleteById(String id) throws Exception {
		String sql = "delete from member where id=?";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, id);

			int result = pstat.executeUpdate();

			con.commit();

			return result;
		}

	}

	// 로그인
	public boolean isLoginOk(String id, String pw) throws Exception {
		String sql = "select * from member where id=? and pw=?";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, id);
			pstat.setString(2, pw);

			try (ResultSet rs = pstat.executeQuery();) {
				return rs.next();
			}
		}
	}
	public boolean isKakaoLoginOk(String id) throws Exception {
		String sql = "select * from member where id=?";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, id);
	

			try (ResultSet rs = pstat.executeQuery();) {
				return rs.next();
			}
		}
	}

	// 회원정보수정(닉네임, 비밀번호)
	public int update(MemberDTO dto) throws Exception {
		String sql = "update member set nickname=?, pw=? where id=?";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, dto.getNickname());
			pstat.setString(2, dto.getPw());
			pstat.setString(3, dto.getId());

			int result = pstat.executeUpdate();
			con.commit();

			return result;
		}
	}

	// 마이페이지 정보
	public MemberDTO selectById(String pid) throws Exception {
		String sql = "select * from member where id = ?";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, pid);

			try (ResultSet rs = pstat.executeQuery();) {

				rs.next();
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String nickname = rs.getString("nickname");
				Date join_date = rs.getDate("join_date");

				MemberDTO dto = new MemberDTO(id, pw, nickname, join_date, null, null, null, null);

				return dto;
			}
		}
	}

	public boolean checkEmail(String Email) throws Exception {
		String sql = "select * from member where id=?";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, Email);

			try (ResultSet rs = pstat.executeQuery();) {
				return rs.next();
			}
		}
	}

	public String getNickname(String id) throws Exception {
		String sql = "select nickname from member where id=?";

		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
			pstat.setString(1, id);

			try (ResultSet rs = pstat.executeQuery();) {
				rs.next();
				String nickname = rs.getString(1);
				return nickname;
			}
		}
	}
	
	public int puzzleUpdate(MemberDTO dto) throws Exception {
		String netflix = dto.getNetflix();
		String watcha = dto.getWatcha();
		String tving = dto.getTving();
		String disney = dto.getDisney();
		
		if (netflix.equals("B")) {
			String sql = "update member set netflix=? where id=?";
			
			try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
				pstat.setString(1, netflix);
				pstat.setString(2, dto.getId());

				int result = pstat.executeUpdate();
				con.commit();

				return result;
			}
		}else if(watcha.equals("B")) {
			String sql = "update member set watcha=? where id=?";
			
			try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
				pstat.setString(1, watcha);
				pstat.setString(2, dto.getId());

				int result = pstat.executeUpdate();
				con.commit();

				return result;
			}
		}else if(tving.equals("B")) {
			String sql = "update member set tving=? where id=?";
			
			try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
				pstat.setString(1, tving);
				pstat.setString(2, dto.getId());

				int result = pstat.executeUpdate();
				con.commit();

				return result;
			}
		}else if(disney.equals("B")) {
			String sql = "update member set disney=? where id=?";
			
			try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
				pstat.setString(1, disney);
				pstat.setString(2, dto.getId());

				int result = pstat.executeUpdate();
				con.commit();

				return result;
			}
		}else {
			return 0;
		}

//		try (Connection con = this.getConnection(); PreparedStatement pstat = con.prepareStatement(sql);) {
//			pstat.setString(1, dto.getNetflix());
//			pstat.setString(2, dto.getWatcha());
//			pstat.setString(3, dto.getTving());
//			pstat.setString(4, dto.getDisney());
//			pstat.setString(5, dto.getId());
//
//			int result = pstat.executeUpdate();
//			con.commit();
//
//			return result;
//		}
	}

//	public static void sendEmail(String Email) throws Exception{
//		String host = "smtp.naver.com"; // 네이버일 경우 네이버 계정, gmail경우 gmail 계정 
//		String user = "rxd9837"; // 패스워드 
//		String password = "xo1367^^^";      
//
//		// SMTP 서버 정보를 설정한다. 
//		Properties props = new Properties(); 
//		props.put("mail.smtp.host", host); 
//		props.put("mail.smtp.port", 465); 
//		props.put("mail.smtp.auth", "true"); 
//
//		Session session = Session.getInstance(props, new javax.mail.Authenticator() { 
//			protected PasswordAuthentication getPasswordAuthentication() { 
//				return new PasswordAuthentication(user, password); 
//			}
//		}); 
//		try { 
//			MimeMessage message = new MimeMessage(session); 
//			message.setFrom(new InternetAddress(user)); 
//			message.addRecipient(Message.RecipientType.TO, new InternetAddress(Email)); 
//
//			// 메일 제목 
//			message.setSubject("KTKO SMTP TEST1111"); 
//			// 메일 내용
//			message.setText("KTKO Success!!"); 
//			// send the message 
//			Transport.send(message); 
//			System.out.println("Success Message Send"); 
//		} catch (MessagingException e) { 
//			e.printStackTrace(); 
//		} 
}
