package controller.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.JsonObject;

import controller.userLogin.UserLogin;
import model.dao.UserDAO;
import model.dto.User;

/**
 * Servlet implementation class AddFBUser
 */
//@WebServlet("/AddFBUser")
public class AddFBUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFBUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	
	
	public void doProcess(HttpServletRequest request, HttpServletResponse response){
		User user = new User();
		user.setName(request.getParameter("name"));
		user.setFullName(request.getParameter("name"));
		user.setPasswd(request.getParameter("password"));
		user.setEmail(request.getParameter("email"));
		user.setGender(request.getParameter("gender"));
		System.out.println(user.getEmail() +" "+user.getName());
		if(new UserDAO().checkUser(user.getName(), user.getEmail())){
			HttpSession session = request.getSession();//create session
			session.setAttribute("user", user.getFullName());// set session for user
			session.setAttribute("img", request.getParameter("img"));
			long user_id = new UserDAO().getUser(user.getEmail(), user.getPasswd()).getId();
			session.setAttribute("userID", user_id);
			response.setContentType("application/json");
			response.setCharacterEncoding("utf-8");
			JsonObject obj = new JsonObject();
			obj.addProperty("message", "Success!");
			try {
				response.getWriter().print(obj);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			if(new UserDAO().insertFBUser(user)){
				System.out.println("Insert user successfully!");
				HttpSession session = request.getSession();//create session
				session.setAttribute("user", user.getFullName());// set session for user
				long user_id = new UserDAO().getUser(user.getEmail(), user.getPasswd()).getId();
				session.setAttribute("userID", user_id);
				session.setAttribute("img", request.getParameter("img"));
				response.setContentType("application/json");
				response.setCharacterEncoding("utf-8");
				JsonObject obj = new JsonObject();
				obj.addProperty("message", "Success!");
				try {
					response.getWriter().print(obj);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}else{
				System.out.println("Cannot insert user!");
			}
		}
	}

}
