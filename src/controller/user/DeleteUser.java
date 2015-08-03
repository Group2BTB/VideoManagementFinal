package controller.user;

import java.io.IOException;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;

import model.dao.UserDAO;

/**
 * Servlet implementation class DeleteUser
 */
// @WebServlet("/DeleteUser")
public class DeleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	public void doProcess(HttpServletRequest request,
			HttpServletResponse response) {
		int id = Integer.parseInt(request.getParameter("id"));// get id that they want to delete from view
		try {
			response.setCharacterEncoding("utf8");
			response.setContentType("application/json");
			JsonObject obj = new JsonObject();
			if (new UserDAO().deleteUser(id)) {
				obj.addProperty("message", "This user deleted successfully!");
			} else {
				obj.addProperty("message", "This user isn't deleted!");
			}
			response.getWriter().print(obj);// print message to view
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
