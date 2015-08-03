package controller.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;

import model.dao.UserDAO;
import model.dto.User;

/**
 * Servlet implementation class AddUser
 */
// @WebServlet("/AddUser")
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		doProcess(request, response);// Call method process
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
		doProcess(request, response);// Call method process
	}

	/**
	 * Method doProcess() use to get all parameter from view and we don't need
	 * to care about view although they use method 'get' or 'post' to provide
	 * the value to the controller
	 * @throws IOException 
	 */
	public void doProcess(HttpServletRequest request, HttpServletResponse response) throws IOException {
		UserDAO dao = new UserDAO();
		response.setContentType("application/json");
		response.setCharacterEncoding("utf8");
		JsonObject obj = new JsonObject();
		try {

			if (dao.checkUser(request.getParameter("username"),request.getParameter("email")) == true) {
				// send message to view that username or password exist and ask
				// user input other username or password
				obj.addProperty("message","Username or Email is already exist!");// set message property

			} else {
				User user = new User();
				user.setName(request.getParameter("username"));
				user.setPasswd(request.getParameter("password"));
				user.setEmail(request.getParameter("email"));
				user.setFullName(request.getParameter("fullname"));
				user.setGender(request.getParameter("gender"));
				user.setParentID(Integer.parseInt(request.getParameter("parentID")));
				user.setRole(request.getParameter("role"));
				user.setStatus(Integer.parseInt(request.getParameter("status")));
				user.setApproved(Integer.parseInt(request.getParameter("approved")));
				user.setDepartID(Integer.parseInt(request.getParameter("department_id")));
				user.setPhone(request.getParameter("phone"));
				user.setProfile(request.getParameter("profile"));
				user.setUniversity(Integer.parseInt(request.getParameter("university")));
				user.setDOB(new utilities.WorkWithDate().getDate(request.getParameter("dob")));
				if (dao.insertUser(user)) {
					// send message success to view
					obj.addProperty("message", "Register successfully!");// set message property
				} else {
					// send not success message to view
					obj.addProperty("message", "Resgister fail!");// set message property
				}
			}
			response.getWriter().print(obj);// Output message to view as JSON
		} catch (IOException e) {
			// TODO Auto-generated catch block
			obj.addProperty("message", "Cannot register now!");
			response.getWriter().print(obj);
		}
	}

}
