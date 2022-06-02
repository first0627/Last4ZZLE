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

import dao.AllnewottDAO;
import dao.AllottDAO;
import dao.DisneyDAO;
import dao.NetflixDAO;
import dao.ReplyDAO;
import dao.ReviewDAO;
import dao.TvingDAO;
import dao.WatchaDAO;
import dto.AllnewottDTO;
import dto.AllottDTO;
import dto.DisneyDTO;
import dto.NetflixDTO;
import dto.ReplyDTO;
import dto.ReviewDTO;
import dto.TvingDTO;
import dto.WatchaDTO;

@WebServlet("*.contents")
public class ContentsController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");

		Gson g = new Gson();
		String uri = request.getRequestURI();
		AllnewottDAO andao = AllnewottDAO.getInstance();
		AllottDAO adao = AllottDAO.getInstance();
		NetflixDAO ndao = NetflixDAO.getInstance();
		WatchaDAO wdao = WatchaDAO.getInstance();
		TvingDAO tdao = TvingDAO.getInstance();
		DisneyDAO ddao = DisneyDAO.getInstance();
		ReviewDAO rdao = ReviewDAO.getInstance();

		try {
			if (uri.equals("/netflix.contents")) {
				int limit = Integer.parseInt(request.getParameter("limit"));

				List<NetflixDTO> list = ndao.selectBetween(limit);
				request.setAttribute("list", list);

				PrintWriter pw = response.getWriter();
				String result = g.toJson(list);
				pw.append(result);
			}else if (uri.equals("/watcha.contents")) {
				int limit = Integer.parseInt(request.getParameter("limit"));

				List<WatchaDTO> list = wdao.selectBetween(limit);
				request.setAttribute("list", list);

				PrintWriter pw = response.getWriter();
				String result = g.toJson(list);
				pw.append(result);
			}else if (uri.equals("/tving.contents")) {
				int limit = Integer.parseInt(request.getParameter("limit"));

				List<TvingDTO> list = tdao.selectBetween(limit);
				request.setAttribute("list", list);

				PrintWriter pw = response.getWriter();
				String result = g.toJson(list);
				pw.append(result);
			}else if (uri.equals("/disney.contents")) {
				int limit = Integer.parseInt(request.getParameter("limit"));

				List<DisneyDTO> list = ddao.selectBetween(limit);
				request.setAttribute("list", list);

				PrintWriter pw = response.getWriter();
				String result = g.toJson(list);
				pw.append(result);
			}else if (uri.equals("/allott.contents")) {
				int limit = Integer.parseInt(request.getParameter("limit"));

				List<AllottDTO> list = adao.selectBetween(limit);
				request.setAttribute("list", list);

				PrintWriter pw = response.getWriter();
				String result = g.toJson(list);
				pw.append(result);
			}else if (uri.equals("/search.contents")) {
				String img = request.getParameter("img");
				
				List<AllnewottDTO> list = andao.getDetail(img);
				List<AllnewottDTO> ottlist = andao.ott(img);
				List<AllnewottDTO> genrelist = andao.genre(img);
				
				List<ReviewDTO> reviewlist = rdao.select(img);	
				
				request.setAttribute("list", list);
				request.setAttribute("ottlist", ottlist);
				request.setAttribute("genrelist", genrelist);
				request.setAttribute("reviewlist", reviewlist);
				request.getRequestDispatcher("/contents/detail.jsp").forward(request, response);
				
			}else if(uri.equals("/searchResult.contents")) {
	            String what = (request.getParameter("search")).replaceAll(" ","");
	            System.out.println(what);
	            
	            List<AllnewottDTO> list = andao.searching(what);
	            for(int i=1; i < list.size(); i++) {
	               System.out.println(list.get(i).getKtitle());
	            }
	            request.setAttribute("list", list);
	            request.getRequestDispatcher("/contents/search.jsp").forward(request, response);
	         }
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("error.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
