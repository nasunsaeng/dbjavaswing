import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Login() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	void doEncoding(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doEncoding(request, response);

		String id = request.getParameter("ID");
		String pw = request.getParameter("Password");

		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");

		out.println("<h2>");

		System.out.println("서블릿 파일");

		if (id.equals("admin") && pw.equals("1234")) {
			out.println("로그인을 환영합니다.");
		} else {
			out.println("아이디나 비밀번호가 일치하지 않습니다.");
		}

		out.println("</h2>");
		out.println("</body>");
		out.println("</html>");
	}
}
