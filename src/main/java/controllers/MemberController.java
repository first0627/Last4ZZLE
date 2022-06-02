package controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import dao.MemberDAO;
import dto.MemberDTO;
import utils.EncryptUtils;

@WebServlet("*.member")
public class MemberController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		MemberDAO dao = new MemberDAO();
		String uri = request.getRequestURI();
		Gson g = new Gson();
		
		try {
			if(uri.equals("/join.member")) {
				response.sendRedirect("/member/join.jsp");
			
		}else if(uri.equals("/duplCheck.member")) {
			String id = request.getParameter("id");

			boolean result = dao.isIDExist(id);

			PrintWriter pw = response.getWriter();
			pw.append(g.toJson(result));
			
		}else if(uri.equals("/joinCheck.member")) {

			String id = request.getParameter("id");
			String pw = EncryptUtils.SHA512(request.getParameter("pw"));
			String nickname = request.getParameter("nickname");

			dao.insert(new MemberDTO(id, pw, nickname, null, null, null, null, null));

			response.sendRedirect("/member/login.jsp");

		}else if(uri.equals("/login.member")) {	// 로그인
			String id = request.getParameter("id");
			String pw = EncryptUtils.SHA512(request.getParameter("pw"));

			boolean result = dao.isLoginOk(id, pw);
			if(result) {
				HttpSession session = request.getSession();
				session.setAttribute("loginID", id);	
				String nickname = dao.getNickname(id);
				session.setAttribute("nickname", nickname);
				response.sendRedirect("/index.jsp");
			}else{
				response.sendRedirect("/member/loginFail.jsp");
			}
		}else if(uri.equals("/logout.member")){	// 로그아웃
			request.getSession().invalidate();
			response.sendRedirect("/index.jsp");
			
		}else if(uri.equals("/myPage.member")) { // 마이페이지
			String id = (String)request.getSession().getAttribute("loginID");
			MemberDTO dto =  dao.selectById(id);
			
			request.setAttribute("dto", dto);
			request.getRequestDispatcher("/member/mypage.jsp").forward(request, response);
			
		}else if(uri.equals("/memberOut.member")) {	// 회원탈퇴
			String id = (String)request.getSession().getAttribute("loginID");
			int result = dao.deleteById(id);
			
			request.getSession().invalidate();
			response.sendRedirect("/index.jsp");
			
		}else if(uri.equals("/update.member")){	// 수정
			String id = (String)request.getSession().getAttribute("loginID");
			String pw = request.getParameter("pw");
			String originpw = request.getParameter("originpw");
			String nickname = request.getParameter("nickname");
			
			if(pw.trim().isEmpty()) {
				dao.update(new MemberDTO(id,originpw,nickname,null,null,null,null,null));
			}else {
				pw = EncryptUtils.SHA512(pw);
				dao.update(new MemberDTO(id,pw,nickname,null,null,null,null,null));
			}
			
			response.sendRedirect("/myPage.member");
		}else if(uri.equals("/pwFind.member")) { //비밀번호찾기 페이지
			response.sendRedirect("/member/pwFind.jsp");
		}else if(uri.equals("/updatePuzzle.member")) { //퍼즐 업데이트
			String id = (String)request.getSession().getAttribute("loginID");
			String netflix = request.getParameter("netflix");
			String watcha = request.getParameter("watcha");
			String tving = request.getParameter("tving");
			String disney = request.getParameter("disney");
			
			dao.puzzleUpdate(new MemberDTO(id,null,null,null,netflix,watcha,tving,disney));
}else if (uri.equals("/kakaoLogin.member")) {

	String id = request.getParameter("kakaoId");
	String pw = EncryptUtils.SHA512("qwert12345");
	String nickname = request.getParameter("kakaoNickname");

	boolean result = dao.isKakaoLoginOk(id);
	System.out.println(result);
	if (result) {
		HttpSession session = request.getSession();
		session.setAttribute("kakao", "kakao");
		session.setAttribute("loginID", id);
		session.setAttribute("nickname", nickname);
		response.sendRedirect("/index.jsp");
	} else {
		System.out.println("회원가입 다시하세요");
		dao.insert(new MemberDTO(id, pw, nickname, null, null, null, null, null));

		HttpSession session = request.getSession();
		session.setAttribute("loginID", id);
		session.setAttribute("nickname", nickname);
		response.sendRedirect("./index.jsp");
		// response.sendRedirect("/member/loginFail.jsp");
	}
}else if(uri.equals("/kakaologout.member")) {
			String kakao = (String)request.getSession().getAttribute("kakao");
			response.sendRedirect("/member/kakaologout.jsp");		
		}	
//		}else if(uri.equals("/pwSend.member")) { //임시비밀번호 발송
//			String Email = request.getParameter("Email");
//			boolean result = dao.checkEmail(Email);
//			
//			//DB에 이메일이 존재할 때
//			if(result) {
//				//이메일로 임시비밀번호 발송하기
//				dao.sendEmail(Email);
//				
//				response.sendRedirect("./login.jsp");
//			}
//			//DB에 이메일이 존재하지 않을 때
//			else {
//				response.sendRedirect("./notFindEmail.jsp");
//			}
			}catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("/error.jsp");
			return;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
