

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oracle.webservices.internal.api.EnvelopeStyle.Style;

@WebServlet("/Join")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public Join() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html charset=UTF-8");
		response.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String pwcheck = request.getParameter("pwcheck");
		String addr = request.getParameter("addr");
		String phnum = request.getParameter("phnum");
		String email = request.getParameter("email");
		String[] hobby = request.getParameterValues("hobby");
		
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<head>");
		out.print("</head>");
		out.print("<body>");
		
		out.print("<h2>");
		out.print(" 작성하신 내용은 아래와 같습니다");
		out.println("</h2>");
				
		out.print("이름 : "+name);
		out.print("<hr>");
		out.print("성별 : "+name);
		out.print("<hr>");
		out.print("아이디 : "+name);
		out.print("<hr>");
		out.print("주소 : "+name);
		out.print("<hr>");
		out.print("전화번호 : "+name);
		out.print("<hr>");
		out.print("이메일 주소 : "+name);
		out.print("<hr>");
		out.print("취미 : ");
		
		if(hobby.length == 0) 
			out.print("[선택한 취미가 없습니다]");
		
		else {
			out.print("<table border="+"\"1\""+" width="+"\"80px\""+">");
			for(String temp : hobby) {
			out.print("<tr>");
				out.print("<td align ="+"\"center\"\""+">");
				out.print(temp);
				out.print("</td>");
				out.print("</tr>");
				}
				
		out.print("</table>");
	
		}
		out.print("</body>");
		out.print("</html>");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
