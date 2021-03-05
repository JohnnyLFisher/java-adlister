import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "CounterServlet", urlPatterns = "/count")
public class CounterServlet extends HttpServlet{
	private int count = 0;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String reset = req.getParameter("reset");
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		count++;

		if (reset == null){
			out.printf("<h1>This page has been viewed %s times</h1>", count);
		} else {
			count = 0;
			out.printf("<h1>The count has been reset to %s</h1>", count);
		}
	}

}
