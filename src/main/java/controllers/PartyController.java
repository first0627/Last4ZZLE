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

import dao.MemberDAO;
import dao.PartyBossDAO;
import dao.PartyDAO;
import dao.PartyDisneyDAO;
import dao.PartyMemberDAO;
import dao.PartyTvingDAO;
import dao.PartyWatchaDAO;
import dto.PartyBossDTO;
import dto.PartyDTO;
import dto.PartyDisneyDTO;
import dto.PartyMemberDTO;
import dto.PartyTvingDTO;
import dto.PartyWatchaDTO;

@WebServlet("*.party")
public class PartyController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		PartyBossDAO dao = new PartyBossDAO();
		PartyMemberDAO daoM = new PartyMemberDAO();
		PartyDAO daoP = new PartyDAO();
		PartyWatchaDAO daoW = new PartyWatchaDAO();
		PartyWatchaDTO dtoW = new PartyWatchaDTO();
		PartyDisneyDAO daoD = new PartyDisneyDAO();
		PartyDisneyDTO dtoD = new PartyDisneyDTO();
		PartyTvingDAO daoT = new PartyTvingDAO();
		PartyTvingDTO dtoT = new PartyTvingDTO();

		MemberDAO Mdao = new MemberDAO();

		String uri = request.getRequestURI();
		Gson g = new Gson();

		try {

			// 보스 테이블에 저장
			if (uri.equals("/joinBoss.party")) {
				String id = (String) request.getSession().getAttribute("loginID");
				String ott = request.getParameter("ott");
				String ottId = request.getParameter("ottId");
				String ottPW = request.getParameter("ottPw");

				System.out.println(id + " " + ott + " " + ottId + " " + ottPW);
				if (ott.equals("netflix")) {
					daoP.createParty(); // 빈파티를 만든다.
					dao.insert(new PartyBossDTO(id, ott, ottId, ottPW)); // 보스할꺼고 내가 이용할 ott는 무엇이고 ottid와 ottpw 추가
					int seq = dao.selectBossSeq(ottId); // 보스테이블에서 내아이디가 있는 테이블의 시퀀
					System.out.println(ott + " " + seq);
					daoP.updateBoss(id, seq); // 파티에 테이블에 보스 하나 넣고 업데이트로

					response.sendRedirect("/ifPartyExists.party");
					// 보스 탈
				} else if (ott.equals("watcha")) {
					daoW.createParty(); // 빈파티를 만든다.
					dao.insertWatchaParty(new PartyBossDTO(id, ott, ottId, ottPW)); // 보스할꺼고 내가 이용할 ott는 무엇이고 ottid와
																					// ottpw 추가
					int seq = dao.selectBossSeq(ottId); // 보스테이블에서 내아이디가 있는 테이블의 시퀀
					System.out.println(ott + " " + seq);
					daoW.updateBoss(id, seq); // 파티에 테이블에 보스 하나 넣고 업데이트로

					response.sendRedirect("/ifPartyExists.party");

				} else if (ott.equals("disney")) {
					daoD.createParty(); // 빈파티를 만든다.
					dao.insertDisneyParty(new PartyBossDTO(id, ott, ottId, ottPW)); // 보스할꺼고 내가 이용할 ott는 무엇이고 ottid와
																					// ottpw 추가
					int seq = dao.selectBossSeq(ottId); // 보스테이블에서 내아이디가 있는 테이블의 시퀀
					System.out.println(ott + " " + seq);
					daoD.updateBoss(id, seq); // 파티에 테이블에 보스 하나 넣고 업데이트로

					response.sendRedirect("/ifPartyExists.party");

				} else if (ott.equals("tving")) {
					daoT.createParty(); // 빈파티를 만든다.
					dao.insertTvingParty(new PartyBossDTO(id, ott, ottId, ottPW)); // 보스할꺼고 내가 이용할 ott는 무엇이고 ottid와
					// ottpw 추가
					int seq = dao.selectBossSeq(ottId); // 보스테이블에서 내아이디가 있는 테이블의 시퀀
					System.out.println(ott + " " + seq);
					daoT.updateBoss(id, seq); // 파티에 테이블에 보스 하나 넣고 업데이트로

					response.sendRedirect("/ifPartyExists.party");

				}

			} else if (uri.equals("/joinMember.party")) {
				String id = (String) request.getSession().getAttribute("loginID");
				String ott = request.getParameter("ott");
				System.out.println(id + " " + ott);

				if (ott.equals("netflix")) {
					int partySize = daoP.sizeSeq();
					System.out.println("파티사이즈 " + partySize);
					// int[] insertSeq = new int[partySize];
					// System.out.println("배열 크기" + insertSeq.length);

					for (int i = 0; i <= partySize; i++) {
						System.out.println("통과" + " " + i);

						// 보스에 값이 없으
						if (daoP.isM1m2m3Exist(i + 1).getBoss() != null) {
							System.out.println("보스있니 파티테이블 번호" + " " + i);
							if ((daoP.isM1m2m3Exist(i + 1).getM1() == null || daoP.isM1m2m3Exist(i + 1).getM2() == null)
									|| daoP.isM1m2m3Exist(i + 1).getM3() == null) {
								if (daoP.isM1m2m3Exist(i + 1).getM1() == null) {
									daoM.insert(new PartyMemberDTO(id, ott));
									daoP.updateM1(id, i + 1);

									System.out.println("m1" + " " + i);
									System.out.println("파티매칭중입니다.12");
									break;
								} else if (daoP.isM1m2m3Exist(i + 1).getM2() == null) {
									daoM.insert(new PartyMemberDTO(id, ott));
									daoP.updateM2(id, i + 1);
									System.out.println("m2" + " " + i);
									System.out.println("파티매칭중입니다.34");
									break;
								} else if (daoP.isM1m2m3Exist(i + 1).getM3() == null) {
									daoM.insert(new PartyMemberDTO(id, ott));
									daoP.updateM3(id, i + 1);
									System.out.println("m3" + " " + i);
									System.out.println("파티매칭중입니다.67");
									break;
								}
							} else {
								System.out.println("파티매칭중입니다.78");
							}
						} else if (daoP.isM1m2m3Exist(i + 1).getBoss() == null) {
							String noParty = "noParty";
							request.setAttribute("noParty", noParty);
							request.getRequestDispatcher("./puzzle/startpuzzle.jsp").forward(request, response);
							
						}
						
					}
					response.sendRedirect("/ifPartyExists.party");
					// 프론트에 뿌리
				} else if (ott.equals("watcha")) {

					int partySize = daoW.sizeSeq();
					System.out.println("파티사이즈 " + partySize);

					for (int i = 0; i <= partySize; i++) {
						System.out.println("통과" + " " + i);

						// 보스에 값이 없으
						if (daoW.isM1m2m3Exist(i + 1).getBoss() != null) {
							System.out.println("보스있니 파티테이블 번호" + " " + i);
							if ((daoW.isM1m2m3Exist(i + 1).getM1() == null || daoW.isM1m2m3Exist(i + 1).getM2() == null)
									|| daoW.isM1m2m3Exist(i + 1).getM3() == null) {
								if (daoW.isM1m2m3Exist(i + 1).getM1() == null) {
									daoM.insert(new PartyMemberDTO(id, ott));
									daoW.updateM1(id, i + 1);

									System.out.println("m1" + " " + i);
									System.out.println("파티매칭중입니다.12");
									break;
								} else if (daoW.isM1m2m3Exist(i + 1).getM2() == null) {
									daoM.insert(new PartyMemberDTO(id, ott));
									daoW.updateM2(id, i + 1);
									System.out.println("m2" + " " + i);
									System.out.println("파티매칭중입니다.34");
									break;
								} else if (daoW.isM1m2m3Exist(i + 1).getM3() == null) {
									daoM.insert(new PartyMemberDTO(id, ott));
									daoW.updateM3(id, i + 1);
									System.out.println("m3" + " " + i);
									System.out.println("파티매칭중입니다.67");
									break;
								}
							} else {
								System.out.println("파티매칭중입니다.78");
							}
						} else if (daoW.isM1m2m3Exist(i + 1).getBoss() == null) {
							String noParty = "noParty";
							request.setAttribute("noParty", noParty);
							request.getRequestDispatcher("./puzzle/startpuzzle.jsp").forward(request, response);
							
						}
						
					}
					response.sendRedirect("/ifPartyExists.party");
					// 프론트에 뿌리
				}else if (ott.equals("disney")) {

					int partySize = daoD.sizeSeq();
					System.out.println("파티사이즈 " + partySize);

					for (int i = 0; i <= partySize; i++) {
						System.out.println("통과" + " " + i);

						// 보스에 값이 없으
						if (daoD.isM1m2m3Exist(i + 1).getBoss() != null) {
							System.out.println("보스있니 파티테이블 번호" + " " + i);
							if ((daoD.isM1m2m3Exist(i + 1).getM1() == null || daoD.isM1m2m3Exist(i + 1).getM2() == null)
									|| daoW.isM1m2m3Exist(i + 1).getM3() == null) {
								if (daoD.isM1m2m3Exist(i + 1).getM1() == null) {
									daoM.insert(new PartyMemberDTO(id, ott));
									daoD.updateM1(id, i + 1);

									System.out.println("m1" + " " + i);
									System.out.println("파티매칭중입니다.12");
									break;
								} else if (daoD.isM1m2m3Exist(i + 1).getM2() == null) {
									daoM.insert(new PartyMemberDTO(id, ott));
									daoD.updateM2(id, i + 1);
									System.out.println("m2" + " " + i);
									System.out.println("파티매칭중입니다.34");
									break;
								} else if (daoD.isM1m2m3Exist(i + 1).getM3() == null) {
									daoM.insert(new PartyMemberDTO(id, ott));
									daoD.updateM3(id, i + 1);
									System.out.println("m3" + " " + i);
									System.out.println("파티매칭중입니다.67");
									break;
								}
							} else {
								System.out.println("파티매칭중입니다.78");
							}
						} else if (daoD.isM1m2m3Exist(i + 1).getBoss() == null) {
							String noParty = "noParty";
							request.setAttribute("noParty", noParty);
							request.getRequestDispatcher("./puzzle/startpuzzle.jsp").forward(request, response);
							
						}
						
					}
					response.sendRedirect("/ifPartyExists.party");
					// 프론트에 뿌리
				} else if (ott.equals("tving")) {

					int partySize = daoT.sizeSeq();
					System.out.println("파티사이즈 " + partySize);

					for (int i = 0; i <= partySize; i++) {
						System.out.println("통과" + " " + i);

						// 보스에 값이 없으
						if (daoT.isM1m2m3Exist(i + 1).getBoss() != null) {
							System.out.println("보스있니 파티테이블 번호" + " " + i);
							if ((daoT.isM1m2m3Exist(i + 1).getM1() == null || daoT.isM1m2m3Exist(i + 1).getM2() == null)
									|| daoT.isM1m2m3Exist(i + 1).getM3() == null) {
								if (daoT.isM1m2m3Exist(i + 1).getM1() == null) {
									daoM.insert(new PartyMemberDTO(id, ott));
									daoT.updateM1(id, i + 1);

									System.out.println("m1" + " " + i);
									System.out.println("파티매칭중입니다.12");
									break;
								} else if (daoT.isM1m2m3Exist(i + 1).getM2() == null) {
									daoM.insert(new PartyMemberDTO(id, ott));
									daoT.updateM2(id, i + 1);
									System.out.println("m2" + " " + i);
									System.out.println("파티매칭중입니다.34");
									break;
								} else if (daoT.isM1m2m3Exist(i + 1).getM3() == null) {
									daoM.insert(new PartyMemberDTO(id, ott));
									daoT.updateM3(id, i + 1);
									System.out.println("m3" + " " + i);
									System.out.println("파티매칭중입니다.67");
									break;
								}
							} else {
								System.out.println("파티매칭중입니다.78");
							}
						} else if (daoT.isM1m2m3Exist(i + 1).getBoss() == null) {
							String noParty = "noParty";
							request.setAttribute("noParty", noParty);
							request.getRequestDispatcher("./puzzle/startpuzzle.jsp").forward(request, response);
							
						}
						
					}
					response.sendRedirect("/ifPartyExists.party");
					// 프론트에 뿌리
				}
			} else if (uri.equals("out.party")) {
				String id = (String) request.getSession().getAttribute("loginID");
				String ott = request.getParameter("ott");

				dao.ottBossOut(id, ott);
				response.sendRedirect("./mypuzzle.jsp");

				// 프론트에 뿌리
			} else if (uri.equals("/myottpage.party")) {

				String id = (String) request.getSession().getAttribute("loginID");
				PartyBossDTO dto = dao.myott(id);
				System.out.println(dto.getOttid());
				String nickname = dao.myNickName(id);

				request.setAttribute("dto", dto);
				request.setAttribute("nickname", nickname);
				request.getRequestDispatcher("./myOtt.jsp").forward(request, response);

			} else if (uri.equals("/show.party")) {

				String id = (String) request.getSession().getAttribute("loginID");
				String ott = request.getParameter("ott");
				String member = request.getParameter("member");
				String boss = request.getParameter("boss");

				System.out.println(id + " " + ott + " " + member + " " + boss);
				System.out.println(ott);

				request.setAttribute("ott", ott);
				request.setAttribute("member", member);
				request.setAttribute("boss", boss);
				if (ott.equals("netflix")) {
					if (boss != null) {
						PartyDTO dto = daoP.myPartyBoss(id);
						PartyDTO dtoM = daoP.myPartyMember(id);
						PartyBossDTO dtoPB1 = dao.extractOttIdPw(dto.getBoss());
						PartyBossDTO dtoPB2 = dao.extractOttIdPw(dtoM.getBoss());
						if (dto.getBoss() != null) {
							if (dto.getBoss() != null) {
								dto.setBoss(Mdao.getNickname(dto.getBoss()));
							} else if (dto.getBoss() == null) {
								dto.setBoss("매칭중");
							}
							if (dto.getM1() != null) {
								dto.setM1(Mdao.getNickname(dto.getM1()));
							} else if (dto.getM1() == null) {
								dto.setM1("매칭중");
							}
							if (dto.getM2() != null) {
								dto.setM2(Mdao.getNickname(dto.getM2()));
							} else if (dto.getM2() == null) {
								dto.setM2("매칭중");
							}
							if (dto.getM3() != null) {
								dto.setM3(Mdao.getNickname(dto.getM3()));
							} else if (dto.getM3() == null) {
								dto.setM3("매칭중");
							}
						} else {

							if (dtoM.getBoss() != null) {
								dtoM.setBoss(Mdao.getNickname(dtoM.getBoss()));
							} else if (dtoM.getBoss() == null) {
								dtoM.setBoss("매칭중");
							}
							if (dtoM.getM1() != null) {
								dtoM.setM1(Mdao.getNickname(dtoM.getM1()));
							} else if (dtoM.getM1() == null) {
								dtoM.setM1("매칭중");
							}
							if (dtoM.getM2() != null) {
								dtoM.setM2(Mdao.getNickname(dtoM.getM2()));
							} else if (dtoM.getM2() == null) {
								dtoM.setM2("매칭중");
							}
							if (dtoM.getM3() != null) {
								dtoM.setM3(Mdao.getNickname(dtoM.getM3()));
							} else if (dtoM.getM3() == null) {
								dtoM.setM3("매칭중");
							}
						}
						String nickname = Mdao.getNickname(id);
						System.out.println("찍히네1");
						request.setAttribute("dto", dto);
						request.setAttribute("dtoM", dtoM);
						request.setAttribute("dtoPB1", dtoPB1);
						request.setAttribute("dtoPB2", dtoPB2);

						System.out.println(dto.getBoss() + " " + dto.getM1() + " " + dto.getM2() + " " + dto.getM3());
						System.out
								.println(dtoM.getBoss() + " " + dtoM.getM1() + " " + dtoM.getM2() + " " + dtoM.getM3());

//					if(dto.getBoss()!=null && dto.getM1()!=null  && dto.getM2()!=null  && dto.getM1()!=null)
						request.getRequestDispatcher("./puzzle/mypuzzlenet.jsp").forward(request, response);
					} else if (boss == null) {
						PartyDTO dto = daoP.myPartyBoss(id);
						PartyDTO dtoM = daoP.myPartyMember(id);
						PartyBossDTO dtoPB1 = dao.extractOttIdPw(dto.getBoss());
						PartyBossDTO dtoPB2 = dao.extractOttIdPw(dtoM.getBoss());
						if (dto.getBoss() != null) {
							if (dto.getBoss() != null) {
								dto.setBoss(Mdao.getNickname(dto.getBoss()));
							} else if (dto.getBoss() == null) {
								dto.setBoss("매칭중");
							}
							if (dto.getM1() != null) {
								dto.setM1(Mdao.getNickname(dto.getM1()));
							} else if (dto.getM1() == null) {
								dto.setM1("매칭중");
							}
							if (dto.getM2() != null) {
								dto.setM2(Mdao.getNickname(dto.getM2()));
							} else if (dto.getM2() == null) {
								dto.setM2("매칭중");
							}
							if (dto.getM3() != null) {
								dto.setM3(Mdao.getNickname(dto.getM3()));
							} else if (dto.getM3() == null) {
								dto.setM3("매칭중");
							}
						} else {

							if (dtoM.getBoss() != null) {
								dtoM.setBoss(Mdao.getNickname(dtoM.getBoss()));
							} else if (dtoM.getBoss() == null) {
								dtoM.setBoss("매칭중");
							}
							if (dtoM.getM1() != null) {
								dtoM.setM1(Mdao.getNickname(dtoM.getM1()));
							} else if (dtoM.getM1() == null) {
								dtoM.setM1("매칭중");
							}
							if (dtoM.getM2() != null) {
								dtoM.setM2(Mdao.getNickname(dtoM.getM2()));
							} else if (dtoM.getM2() == null) {
								dtoM.setM2("매칭중");
							}
							if (dtoM.getM3() != null) {
								dtoM.setM3(Mdao.getNickname(dtoM.getM3()));
							} else if (dtoM.getM3() == null) {
								dtoM.setM3("매칭중");
							}
						}
						String nickname = Mdao.getNickname(id);
						System.out.println("찍히네2");
						request.setAttribute("dto", dto);
						request.setAttribute("dtoM", dtoM);
						request.setAttribute("dtoPB1", dtoPB1);
						request.setAttribute("dtoPB2", dtoPB2);

						System.out.println(dto.getBoss() + " " + dto.getM1() + " " + dto.getM2() + " " + dto.getM3());
						System.out
								.println(dtoM.getBoss() + " " + dtoM.getM1() + " " + dtoM.getM2() + " " + dtoM.getM3());

//					if(dto.getBoss()!=null && dto.getM1()!=null  && dto.getM2()!=null  && dto.getM1()!=null)
						request.getRequestDispatcher("./puzzle/mypuzzlenet.jsp").forward(request, response);
					}
				} else if (ott.equals("watcha")) {
					if (boss != null) {
						PartyWatchaDTO dto = daoW.myPartyBoss(id);
						PartyWatchaDTO dtoM = daoW.myPartyMember(id);
						PartyBossDTO dtoPB1 = dao.extractOttIdPw(dto.getBoss());
						PartyBossDTO dtoPB2 = dao.extractOttIdPw(dtoM.getBoss());
						if (dto.getBoss() != null) {
							if (dto.getBoss() != null) {
								dto.setBoss(Mdao.getNickname(dto.getBoss()));
							} else if (dto.getBoss() == null) {
								dto.setBoss("매칭중");
							}
							if (dto.getM1() != null) {
								dto.setM1(Mdao.getNickname(dto.getM1()));
							} else if (dto.getM1() == null) {
								dto.setM1("매칭중");
							}
							if (dto.getM2() != null) {
								dto.setM2(Mdao.getNickname(dto.getM2()));
							} else if (dto.getM2() == null) {
								dto.setM2("매칭중");
							}
							if (dto.getM3() != null) {
								dto.setM3(Mdao.getNickname(dto.getM3()));
							} else if (dto.getM3() == null) {
								dto.setM3("매칭중");
							}
						} else {

							if (dtoM.getBoss() != null) {
								dtoM.setBoss(Mdao.getNickname(dtoM.getBoss()));
							} else if (dtoM.getBoss() == null) {
								dtoM.setBoss("매칭중");
							}
							if (dtoM.getM1() != null) {
								dtoM.setM1(Mdao.getNickname(dtoM.getM1()));
							} else if (dtoM.getM1() == null) {
								dtoM.setM1("매칭중");
							}
							if (dtoM.getM2() != null) {
								dtoM.setM2(Mdao.getNickname(dtoM.getM2()));
							} else if (dtoM.getM2() == null) {
								dtoM.setM2("매칭중");
							}
							if (dtoM.getM3() != null) {
								dtoM.setM3(Mdao.getNickname(dtoM.getM3()));
							} else if (dtoM.getM3() == null) {
								dtoM.setM3("매칭중");
							}
						}
						String nickname = Mdao.getNickname(id);
						System.out.println("찍히네3");
						request.setAttribute("dto", dto);
						request.setAttribute("dtoM", dtoM);
						request.setAttribute("dtoPB1", dtoPB1);
						request.setAttribute("dtoPB2", dtoPB2);

						System.out.println(dto.getBoss() + " " + dto.getM1() + " " + dto.getM2() + " " + dto.getM3());
						System.out
								.println(dtoM.getBoss() + " " + dtoM.getM1() + " " + dtoM.getM2() + " " + dtoM.getM3());

//					if(dto.getBoss()!=null && dto.getM1()!=null  && dto.getM2()!=null  && dto.getM1()!=null)
						request.getRequestDispatcher("./puzzle/mypuzzlewat.jsp").forward(request, response);
					} else if (boss == null) {
						PartyWatchaDTO dto = daoW.myPartyBoss(id);
						PartyWatchaDTO dtoM = daoW.myPartyMember(id);
						PartyBossDTO dtoPB1 = dao.extractOttIdPw(dto.getBoss());
						PartyBossDTO dtoPB2 = dao.extractOttIdPw(dtoM.getBoss());
						if (dto.getBoss() != null) {
							if (dto.getBoss() != null) {
								dto.setBoss(Mdao.getNickname(dto.getBoss()));
							} else if (dto.getBoss() == null) {
								dto.setBoss("매칭중");
							}
							if (dto.getM1() != null) {
								dto.setM1(Mdao.getNickname(dto.getM1()));
							} else if (dto.getM1() == null) {
								dto.setM1("매칭중");
							}
							if (dto.getM2() != null) {
								dto.setM2(Mdao.getNickname(dto.getM2()));
							} else if (dto.getM2() == null) {
								dto.setM2("매칭중");
							}
							if (dto.getM3() != null) {
								dto.setM3(Mdao.getNickname(dto.getM3()));
							} else if (dto.getM3() == null) {
								dto.setM3("매칭중");
							}
						} else {

							if (dtoM.getBoss() != null) {
								dtoM.setBoss(Mdao.getNickname(dtoM.getBoss()));
							} else if (dtoM.getBoss() == null) {
								dtoM.setBoss("매칭중");
							}
							if (dtoM.getM1() != null) {
								dtoM.setM1(Mdao.getNickname(dtoM.getM1()));
							} else if (dtoM.getM1() == null) {
								dtoM.setM1("매칭중");
							}
							if (dtoM.getM2() != null) {
								dtoM.setM2(Mdao.getNickname(dtoM.getM2()));
							} else if (dtoM.getM2() == null) {
								dtoM.setM2("매칭중");
							}
							if (dtoM.getM3() != null) {
								dtoM.setM3(Mdao.getNickname(dtoM.getM3()));
							} else if (dtoM.getM3() == null) {
								dtoM.setM3("매칭중");
							}
						}
						String nickname = Mdao.getNickname(id);
						System.out.println("찍히네4");
						request.setAttribute("dto", dto);
						request.setAttribute("dtoM", dtoM);
						request.setAttribute("dtoPB1", dtoPB1);
						request.setAttribute("dtoPB2", dtoPB2);

						System.out.println(dto.getBoss() + " " + dto.getM1() + " " + dto.getM2() + " " + dto.getM3());
						System.out
								.println(dtoM.getBoss() + " " + dtoM.getM1() + " " + dtoM.getM2() + " " + dtoM.getM3());

//					if(dto.getBoss()!=null && dto.getM1()!=null  && dto.getM2()!=null  && dto.getM1()!=null)
						request.getRequestDispatcher("./puzzle/mypuzzlewat.jsp").forward(request, response);
					}

				} else if (ott.equals("disney")) {
					if (boss != null) {
						PartyDisneyDTO dto = daoD.myPartyBoss(id);

						PartyDisneyDTO dtoM = daoD.myPartyMember(id);
						PartyBossDTO dtoPB1 = dao.extractOttIdPw(dto.getBoss());
						PartyBossDTO dtoPB2 = dao.extractOttIdPw(dtoM.getBoss());
						if (dto.getBoss() != null) {
							System.out.println("찍히네12");
							if (dto.getBoss() != null) {
								dto.setBoss(Mdao.getNickname(dto.getBoss()));
							} else if (dto.getBoss() == null) {
								dto.setBoss("매칭중");
							}
							if (dto.getM1() != null) {
								dto.setM1(Mdao.getNickname(dto.getM1()));
							} else if (dto.getM1() == null) {
								dto.setM1("매칭중");
							}
							if (dto.getM2() != null) {
								dto.setM2(Mdao.getNickname(dto.getM2()));
							} else if (dto.getM2() == null) {
								dto.setM2("매칭중");
							}
							if (dto.getM3() != null) {
								dto.setM3(Mdao.getNickname(dto.getM3()));
							} else if (dto.getM3() == null) {
								dto.setM3("매칭중");
							}
						} else {
							System.out.println("찍히네11");
							if (dtoM.getBoss() != null) {
								dtoM.setBoss(Mdao.getNickname(dtoM.getBoss()));
							} else if (dtoM.getBoss() == null) {
								dtoM.setBoss("매칭중");
							}
							if (dtoM.getM1() != null) {
								dtoM.setM1(Mdao.getNickname(dtoM.getM1()));
							} else if (dtoM.getM1() == null) {
								dtoM.setM1("매칭중");
							}
							if (dtoM.getM2() != null) {
								dtoM.setM2(Mdao.getNickname(dtoM.getM2()));
							} else if (dtoM.getM2() == null) {
								dtoM.setM2("매칭중");
							}
							if (dtoM.getM3() != null) {
								dtoM.setM3(Mdao.getNickname(dtoM.getM3()));
							} else if (dtoM.getM3() == null) {
								dtoM.setM3("매칭중");
							}
						}
						String nickname = Mdao.getNickname(id);
						System.out.println("찍히네5");
						request.setAttribute("dto", dto);
						request.setAttribute("dtoM", dtoM);
						request.setAttribute("dtoPB1", dtoPB1);
						request.setAttribute("dtoPB2", dtoPB2);

						System.out.println(dto.getBoss() + " " + dto.getM1() + " " + dto.getM2() + " " + dto.getM3());
						System.out
								.println(dtoM.getBoss() + " " + dtoM.getM1() + " " + dtoM.getM2() + " " + dtoM.getM3());

//					if(dto.getBoss()!=null && dto.getM1()!=null  && dto.getM2()!=null  && dto.getM1()!=null)
						request.getRequestDispatcher("./puzzle/mypuzzledp.jsp").forward(request, response);
					} else if (boss == null) {
						PartyDisneyDTO dto = daoD.myPartyBoss(id);

						PartyDisneyDTO dtoM = daoD.myPartyMember(id);
						PartyBossDTO dtoPB1 = dao.extractOttIdPw(dto.getBoss());
						PartyBossDTO dtoPB2 = dao.extractOttIdPw(dtoM.getBoss());
						if (dto.getBoss() != null) {
							if (dto.getBoss() != null) {
								dto.setBoss(Mdao.getNickname(dto.getBoss()));
							} else if (dto.getBoss() == null) {
								dto.setBoss("매칭중");
							}
							if (dto.getM1() != null) {
								dto.setM1(Mdao.getNickname(dto.getM1()));
							} else if (dto.getM1() == null) {
								dto.setM1("매칭중");
							}
							if (dto.getM2() != null) {
								dto.setM2(Mdao.getNickname(dto.getM2()));
							} else if (dto.getM2() == null) {
								dto.setM2("매칭중");
							}
							if (dto.getM3() != null) {
								dto.setM3(Mdao.getNickname(dto.getM3()));
							} else if (dto.getM3() == null) {
								dto.setM3("매칭중");
							}
						} else {

							if (dtoM.getBoss() != null) {
								dtoM.setBoss(Mdao.getNickname(dtoM.getBoss()));
							} else if (dtoM.getBoss() == null) {
								dtoM.setBoss("매칭중");
							}
							if (dtoM.getM1() != null) {
								dtoM.setM1(Mdao.getNickname(dtoM.getM1()));
							} else if (dtoM.getM1() == null) {
								dtoM.setM1("매칭중");
							}
							if (dtoM.getM2() != null) {
								dtoM.setM2(Mdao.getNickname(dtoM.getM2()));
							} else if (dtoM.getM2() == null) {
								dtoM.setM2("매칭중");
							}
							if (dtoM.getM3() != null) {
								dtoM.setM3(Mdao.getNickname(dtoM.getM3()));
							} else if (dtoM.getM3() == null) {
								dtoM.setM3("매칭중");
							}
						}
						String nickname = Mdao.getNickname(id);
						System.out.println("찍히네6");
						request.setAttribute("dto", dto);
						request.setAttribute("dtoM", dtoM);
						request.setAttribute("dtoPB1", dtoPB1);
						request.setAttribute("dtoPB2", dtoPB2);

						System.out.println(dto.getBoss() + " " + dto.getM1() + " " + dto.getM2() + " " + dto.getM3());
						System.out
								.println(dtoM.getBoss() + " " + dtoM.getM1() + " " + dtoM.getM2() + " " + dtoM.getM3());

//					if(dto.getBoss()!=null && dto.getM1()!=null  && dto.getM2()!=null  && dto.getM1()!=null)
						request.getRequestDispatcher("./puzzle/mypuzzledp.jsp").forward(request, response);
					}

				} else if (ott.equals("tving")) {
					if (boss != null) {
						PartyTvingDTO dto = daoT.myPartyBoss(id);
						PartyTvingDTO dtoM = daoT.myPartyMember(id);
						PartyBossDTO dtoPB1 = dao.extractOttIdPw(dto.getBoss());
						PartyBossDTO dtoPB2 = dao.extractOttIdPw(dtoM.getBoss());
						if (dto.getBoss() != null) {
							System.out.println("찍히네10");
							if (dto.getBoss() != null) {
								dto.setBoss(Mdao.getNickname(dto.getBoss()));
							} else if (dto.getBoss() == null) {
								dto.setBoss("매칭중");
							}
							if (dto.getM1() != null) {
								dto.setM1(Mdao.getNickname(dto.getM1()));
							} else if (dto.getM1() == null) {
								dto.setM1("매칭중");
							}
							if (dto.getM2() != null) {
								dto.setM2(Mdao.getNickname(dto.getM2()));
							} else if (dto.getM2() == null) {
								dto.setM2("매칭중");
							}
							if (dto.getM3() != null) {
								dto.setM3(Mdao.getNickname(dto.getM3()));
							} else if (dto.getM3() == null) {
								dto.setM3("매칭중");
							}
						} else {
							System.out.println("찍히네9");
							if (dtoM.getBoss() != null) {
								dtoM.setBoss(Mdao.getNickname(dtoM.getBoss()));
							} else if (dtoM.getBoss() == null) {
								dtoM.setBoss("매칭중");
							}
							if (dtoM.getM1() != null) {
								dtoM.setM1(Mdao.getNickname(dtoM.getM1()));
							} else if (dtoM.getM1() == null) {
								dtoM.setM1("매칭중");
							}
							if (dtoM.getM2() != null) {
								dtoM.setM2(Mdao.getNickname(dtoM.getM2()));
							} else if (dtoM.getM2() == null) {
								dtoM.setM2("매칭중");
							}
							if (dtoM.getM3() != null) {
								dtoM.setM3(Mdao.getNickname(dtoM.getM3()));
							} else if (dtoM.getM3() == null) {
								dtoM.setM3("매칭중");
							}
						}
						String nickname = Mdao.getNickname(id);
						System.out.println("찍히네7");
						request.setAttribute("dto", dto);
						request.setAttribute("dtoM", dtoM);
						request.setAttribute("dtoPB1", dtoPB1);
						request.setAttribute("dtoPB2", dtoPB2);

						System.out.println(dto.getBoss() + " " + dto.getM1() + " " + dto.getM2() + " " + dto.getM3());
						System.out
								.println(dtoM.getBoss() + " " + dtoM.getM1() + " " + dtoM.getM2() + " " + dtoM.getM3());

//					if(dto.getBoss()!=null && dto.getM1()!=null  && dto.getM2()!=null  && dto.getM1()!=null)
						request.getRequestDispatcher("./puzzle/mypuzzletv.jsp").forward(request, response);
					} else if (boss == null) {
						PartyTvingDTO dto = daoT.myPartyBoss(id);
						PartyTvingDTO dtoM = daoT.myPartyMember(id);
						PartyBossDTO dtoPB1 = dao.extractOttIdPw(dto.getBoss());
						PartyBossDTO dtoPB2 = dao.extractOttIdPw(dtoM.getBoss());
						if (dto.getBoss() != null) {
							if (dto.getBoss() != null) {
								dto.setBoss(Mdao.getNickname(dto.getBoss()));
							} else if (dto.getBoss() == null) {
								dto.setBoss("매칭중");
							}
							if (dto.getM1() != null) {
								dto.setM1(Mdao.getNickname(dto.getM1()));
							} else if (dto.getM1() == null) {
								dto.setM1("매칭중");
							}
							if (dto.getM2() != null) {
								dto.setM2(Mdao.getNickname(dto.getM2()));
							} else if (dto.getM2() == null) {
								dto.setM2("매칭중");
							}
							if (dto.getM3() != null) {
								dto.setM3(Mdao.getNickname(dto.getM3()));
							} else if (dto.getM3() == null) {
								dto.setM3("매칭중");
							}
						} else {

							if (dtoM.getBoss() != null) {
								dtoM.setBoss(Mdao.getNickname(dtoM.getBoss()));
							} else if (dtoM.getBoss() == null) {
								dtoM.setBoss("매칭중");
							}
							if (dtoM.getM1() != null) {
								dtoM.setM1(Mdao.getNickname(dtoM.getM1()));
							} else if (dtoM.getM1() == null) {
								dtoM.setM1("매칭중");
							}
							if (dtoM.getM2() != null) {
								dtoM.setM2(Mdao.getNickname(dtoM.getM2()));
							} else if (dtoM.getM2() == null) {
								dtoM.setM2("매칭중");
							}
							if (dtoM.getM3() != null) {
								dtoM.setM3(Mdao.getNickname(dtoM.getM3()));
							} else if (dtoM.getM3() == null) {
								dtoM.setM3("매칭중");
							}
						}
						String nickname = Mdao.getNickname(id);
						System.out.println("찍히네8");
						request.setAttribute("dto", dto);
						request.setAttribute("dtoM", dtoM);
						request.setAttribute("dtoPB1", dtoPB1);
						request.setAttribute("dtoPB2", dtoPB2);

						System.out.println(dto.getBoss() + " " + dto.getM1() + " " + dto.getM2() + " " + dto.getM3());
						System.out
								.println(dtoM.getBoss() + " " + dtoM.getM1() + " " + dtoM.getM2() + " " + dtoM.getM3());

//					if(dto.getBoss()!=null && dto.getM1()!=null  && dto.getM2()!=null  && dto.getM1()!=null)
						request.getRequestDispatcher("./puzzle/mypuzzletv.jsp").forward(request, response);
					}

				}

			} else if (uri.equals("/ifPartyExists.party")) {

				String id = (String) request.getSession().getAttribute("loginID");
				List<PartyMemberDTO> dtoM = daoM.isMemberExistList(id);
				List<PartyBossDTO> dtoB = dao.isBossExistList(id);
				Boolean isBossExist = false;
				Boolean isMemberExist = false;
				String boss = "퍼즐장";
				String member = "퍼즐원";
				for (int i = 0; i < dtoB.size(); i++) {
					if (dtoB.get(i).getId() != null) {
						System.out.println(i + "  i ");
						isBossExist = true;
					}
				}
				for (int j = 0; j < dtoM.size(); j++) {
					if (dtoM.get(j).getId() != null) {
						System.out.println(j + " j ");
						isMemberExist = true;
					}
				}

				System.out.println(isBossExist + " " + isMemberExist);

				if (isBossExist == true && isMemberExist == false) {
					request.setAttribute("dtoB", dtoB);
					request.setAttribute("boss", boss);
					System.out.println("하이");
					for (int i = 0; i < dtoB.size(); i++) {
						System.out.println(dtoB.get(i).getOtt());
					}
					request.getRequestDispatcher("./puzzle/mypuzzle.jsp").forward(request, response);
				} else if (isMemberExist == true && isBossExist == false) {
					request.setAttribute("dtoM", dtoM);
					request.setAttribute("member", member);
					request.getRequestDispatcher("./puzzle/mypuzzle.jsp").forward(request, response);
				} else if (isBossExist == true && isMemberExist == true) {
					request.setAttribute("dtoB", dtoB);
					request.setAttribute("boss", boss);
					request.setAttribute("dtoM", dtoM);
					request.setAttribute("member", member);
					System.out.println("안녕");
					for (int i = 0; i < dtoB.size(); i++) {
						System.out.println(dtoB.get(i).getOtt());
					}
					request.getRequestDispatcher("./puzzle/mypuzzle.jsp").forward(request, response);
				}

				else {

					request.getRequestDispatcher("./puzzle/startpuzzle.jsp").forward(request, response);
				}

			} else if (uri.equals("/duplNo.party")) {
				System.out.println("시작");
				String id = (String) request.getSession().getAttribute("loginID");
				List<PartyMemberDTO> dtoM = daoM.isMemberExistList(id);
				List<PartyBossDTO> dtoB = dao.isBossExistList(id);
				String netflix = null;
				String watcha = null;
				String tving = null;
				String disney = null;
				for (int i = 0; i < dtoB.size(); i++) {
					if (dtoB.get(i).getOtt().equals("netflix")) {
						netflix = "netflix";
						request.setAttribute("netflix", netflix);
					} else if (dtoB.get(i).getOtt().equals("watcha")) {
						watcha = "watcha";
						request.setAttribute("watcha", watcha);

					} else if (dtoB.get(i).getOtt().equals("tving")) {
						tving = "tving";
						request.setAttribute("tving", tving);

					} else if (dtoB.get(i).getOtt().equals("disney")) {
						disney = "disney";
						request.setAttribute("disney", disney);

					}
				}

				for (int i = 0; i < dtoM.size(); i++) {
					if (dtoM.get(i).getOtt().equals("netflix")) {
						netflix = "netflix";
						request.setAttribute("netflix", netflix);
					} else if (dtoM.get(i).getOtt().equals("watcha")) {
						watcha = "watcha";
						request.setAttribute("watcha", watcha);

					} else if (dtoM.get(i).getOtt().equals("tving")) {
						tving = "tving";
						request.setAttribute("tving", tving);

					} else if (dtoM.get(i).getOtt().equals("disney")) {
						disney = "disney";
						request.setAttribute("disney", disney);

					}
				}

				request.getRequestDispatcher("./puzzle/addpuzzle.jsp").forward(request, response);

			}

		} catch (

		Exception e) {
			e.printStackTrace();
			response.sendRedirect("./error.jsp");
			return;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}