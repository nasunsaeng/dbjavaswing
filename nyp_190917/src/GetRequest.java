import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GetRequest")
public class GetRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public GetRequest() {
        super();
     }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>");
		out.println("get Servlet");
		out.println("</title>");
		out.println("</head>");
		out.println("<body>");
		
		out.println("<h2>"); 
		out.println("이 요청은 doPost에서 처리되었습니다.");
		out.println("</h2>");
		
		out.println("<h1>"); 
		out.println("이름 : "+name);
		out.println("</h1>");
		
		out.println("</body>");
		out.println("</html>");	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
