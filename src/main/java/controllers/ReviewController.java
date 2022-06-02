package controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.ReviewDAO;
import dto.ReviewDTO;

/**
 * Servlet implementation class ReviewController
 */
@WebServlet("*.review")
public class ReviewController extends HttpServlet {

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("UTF-8");

      String uri = request.getRequestURI();
      ReviewDAO dao = new ReviewDAO();
      Gson g = new Gson();

      
      try {
         if(uri.equals("/insert.review")) {   // 답변 저장
//        	String parents_con = request.getParameter("titlekr");
            String writerId = (String)request.getSession().getAttribute("loginID");
            String writerName = (String)request.getSession().getAttribute("nickname");
            String contents = request.getParameter("contents");
            String img = request.getParameter("imgurl");
            
//          int grade = Integer.parseInt(request.getParameter("grade"));
            
            int result = dao.insert(new ReviewDTO(0, img, writerId, writerName, contents, 0, null));
            
            response.sendRedirect("/search.contents?img="+img);
         
         }else if(uri.equals("/delete.review")){   // 답변 삭제
             int seq = Integer.parseInt(request.getParameter("rseq"));
             int result = dao.delete(seq);
             String img = request.getParameter("imgurl");
             
             PrintWriter pw = response.getWriter();
             pw.append(g.toJson(result));
      
          }else if(uri.equals("/update.review")) {   // 답변 수정
              int rseq = Integer.parseInt(request.getParameter("rseq"));
              String contents = request.getParameter("contents");
              System.out.println(rseq + " " +contents);
              dao.update(rseq, contents);
              
//              String parent_seq = request.getParameter("pseq");
//              System.out.println(parent_seq);
//              
//              response.sendRedirect("/detail.review?seq=" + parent_seq);
           }
      } catch (Exception e) {
         e.printStackTrace();
         response.sendRedirect("error.jsp");
         return;
      }
      
      
      
      
      
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      doGet(request, response);
   }

}