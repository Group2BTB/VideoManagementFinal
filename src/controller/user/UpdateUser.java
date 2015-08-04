package controller.user;

import java.io.IOException;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;

import model.dao.UserDAO;
import model.dto.User;

/**
 * Servlet implementation class UpdateUser
 */
//@WebServlet("/UpdateUser")
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUser() {
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
		user.setId(Integer.parseInt(request.getParameter("id")));
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
		try{
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		JsonObject obj = new JsonObject();
		if (new UserDAO().updateUser(user)) {
			obj.addProperty("message", "Update successfully!");
		}else{
			obj.addProperty("message", "Update unsuccessfully!");
		}
		response.getWriter().print(obj);
		}catch(IOException e){
			System.out.println("IOException");
		}
	}

}
