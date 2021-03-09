import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;



@WebServlet("/guess")
public class GuessCheckServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.getRequestDispatcher("guess.jsp").forward(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Object num = request.getParameter("num");
		Random r = new Random();
		int answer = r.nextInt(4) + 1;

		if (num == null){
			response.sendRedirect("/incorrect?num=0&answer="+answer);
		} else if(Integer.parseInt(num.toString()) == answer){
			response.sendRedirect("/correct?num="+num+"&answer="+answer);
		} else {
			response.sendRedirect("/incorrect?num="+num+"&answer="+answer);
		}
	}
}
