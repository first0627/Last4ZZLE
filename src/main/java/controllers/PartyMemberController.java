package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.PartyMemberDAO;
import dto.PartyMemberDTO;

@WebServlet("*.partyMember")
public class PartyMemberController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		PartyMemberDAO dao = new PartyMemberDAO();
		String uri = request.getRequestURI();
		Gson g = new Gson();

		try {
			if (uri.equals("join.partyMember")) {
				String id = (String) request.getSession().getAttribute("loginID");
				String ott = request.getParameter("ott");

				dao.insert(new PartyMemberDTO(id, ott));
				

				response.sendRedirect("./mypuzzl.jsp");

			} else if (uri.equals("out.partyMember")) {
				String id = (String) request.getSession().getAttribute("loginID");
				String ott = request.getParameter("ott");

				dao.ottMemberOut(id, ott);
				response.sendRedirect("./mypuzzl.jsp");

			} else if (uri.equals("myottpage.partyMember")) {
				String id = (String) request.getSession().getAttribute("loginID");
				PartyMemberDTO dto = dao.myott(id);

				request.setAttribute("dto", dto);
				request.getRequestDispatcher("./myottpage.jsp").forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("./error.jsp");
			return;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGet(request, response);
   }
}