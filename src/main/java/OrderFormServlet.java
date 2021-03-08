import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/pizza-order")
public class OrderFormServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.getRequestDispatcher("pizza-order.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if (request.getMethod().equalsIgnoreCase("post")) {

			String crust = request.getParameter("crust");
			String sauce = request.getParameter("sauce");
			String size = request.getParameter("size");
			String address = request.getParameter("address");

			System.out.println("Crust: " + crust);
			System.out.println("Sauce: " + sauce);
			System.out.println("Size: " + size);
			System.out.println("Toppings:");
			for (int i = 1; i < 7; i++) {
				String topping = request.getParameter("t" + i);
				if (topping != null) {
					System.out.println(topping);
				}
			}
			System.out.println("Address: " + address);
		}
		request.getRequestDispatcher("pizza-order.jsp").forward(request, response);
	}
}