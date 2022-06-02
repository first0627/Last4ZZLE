package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.ReplyDAO;
import dto.ReplyDTO;


@WebServlet("*.reply")
public class ReplyController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String uri = request.getRequestURI();
		ReplyDAO dao = new ReplyDAO();
		
		Gson g = new Gson();
		
		try {
			if(uri.equals("/insert.reply")) {	// 답변 저장
				String writer = (String)request.getSession().getAttribute("loginID");				
				String contents = request.getParameter("contents");
				
				int parent_seq = Integer.parseInt(request.getParameter("pseq"));
				
				int result = dao.insert(new ReplyDTO(0,writer,contents,null,parent_seq));
				
				response.sendRedirect("/detail.qnaboard?seq="+parent_seq);
			
			}else if(uri.equals("/delete.reply")){	// 답변 삭제
				int seq = Integer.parseInt(request.getParameter("rseq"));
				int result = dao.deleteBySeq(seq);
				
				PrintWriter pw = response.getWriter();
				pw.append(g.toJson(result));
				
				int parent_seq = Integer.parseInt(request.getParameter("pseq"));
				response.sendRedirect("/detail.board?seq=" + parent_seq);
			
			}else if(uri.equals("/update.reply")) {	// 답변 수정
				int seq = Integer.parseInt(request.getParameter("rseq"));
				String contents = request.getParameter("contents");
				dao.updateBySeq(seq, contents);
				
				int parent_seq = Integer.parseInt(request.getParameter("pseq"));
				
				response.sendRedirect("/detail.qnaboard?seq=" + parent_seq);
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("error.jsp");
			return;
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
