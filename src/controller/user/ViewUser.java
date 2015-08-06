package controller.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.GapContent;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import model.dao.UserDAO;
import model.dto.User;

/**
 * Servlet implementation class ViewUser
 */
//@WebServlet("/ViewUser")
public class ViewUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	public void doProcess(HttpServletRequest request, HttpServletResponse response){
		UserDAO dao = new UserDAO();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User user = dao.getUser(username, password);
		try{
			response.setCharacterEncoding("utf-8");
			response.setContentType("application/json");
			if(user != null){
				String json = new Gson().toJson(user);// convert object user to JSON type 
				response.getWriter().print(json);// provide data to view
			}else{
				JsonObject obj = new JsonObject();
				obj.addProperty("message", "Cannot view this user!");
			}
		}catch(IOException e){
			System.out.println("Cannot view user");
		}
	}
}
