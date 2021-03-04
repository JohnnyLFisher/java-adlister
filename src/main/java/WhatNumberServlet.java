import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "WhatDidYouSayServlet", urlPatterns = "/what-did-you-say")
public class WhatNumberServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String userSaid = req.getParameter("said");
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		if (userSaid != null ) {
			out.printf("<h1>You said: %s</h1>", userSaid);
		} else {
			out.println("<h1>You're no fun, you know?</h1>");
		}
	}

}
