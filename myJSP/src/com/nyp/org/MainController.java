package com.nyp.org;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nyp.org.member.MemberDAO;
import com.nyp.org.member.MemberVO;

@WebServlet("*.do")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MemberDAO dm = MemberDAO.getInstance();

	public MainController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = null; // jsp 파일 지정

		request.setCharacterEncoding("UTF-8");
		String reqURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String cmd = reqURI.substring(contextPath.length());

		if (cmd.equals("/index.do")) {
			/*
			 * 최신회원가입한 목록 5개 최신글 목록 5개
			 */
			rd = request.getRequestDispatcher("index.jsp");
		} else if (cmd.equals("/member.do")) {
			// try {
			// List<MemberVO> list = new ArrayList<>();
			// Connection conn = ConnectionPool.getConnection(); // context.xml 에 DB연결
			// PreparedStatement pstmt = conn.prepareStatement("select * from member");
			// ResultSet rs = pstmt.executeQuery();
			//
			// while (rs.next()) {
			// list.add(new MemberVO(rs.getInt("seq"), rs.getString("id"),
			// rs.getString("name"),
			// rs.getString("pwd"), rs.getString("gender"), rs.getString("joindate")));
			// }
			// request.setAttribute("myList", list);
			// } catch (Exception e) {
			// e.printStackTrace();
			// }
			dm.select(request);
			dm.cntmember(request);
			rd = request.getRequestDispatcher("member.jsp");
			
		} else if (cmd.equals("/freeboard.do")) {
			rd = request.getRequestDispatcher("freeboard.jsp");
			
		} else if (cmd.equals("/memberInsert.do")) {
			rd = request.getRequestDispatcher("memberInsert.jsp");
			
		} else if (cmd.equals("/memberInsertProc.do")) {
			rd = request.getRequestDispatcher("memberInsertProc.jsp");
			dm.insert(request);
			dm.select(request);
			dm.cntmember(request);
			rd = request.getRequestDispatcher("member.jsp");
			
		} else if (cmd.equals("/memberUpdate.do")) {
			dm.selectRow(request);
			rd = request.getRequestDispatcher("memberUpdate.jsp");
			
		} else if (cmd.equals("/memberUpdateProc.do")) {
			dm.updateRow(request);
			dm.selectRow(request);
			rd = request.getRequestDispatcher("memberUpdate.jsp");
			
		} else {
			rd = request.getRequestDispatcher("/error404.jsp");
		}

		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
