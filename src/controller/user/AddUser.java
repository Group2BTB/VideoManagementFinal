package controller.user;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.UserDAO;
import model.dto.User;

/**
 * Servlet implementation class AddUser
 */
//@WebServlet("/AddUser")
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);// Call method process
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);// Call method process 
	}
	
	
	/**
	 *  Method doProcess() use to get all parameter from view and we don't need to 
	 *  care about view although they use method 'get' or 'post' to provide the value to the controller
	 */
	public void doProcess(HttpServletRequest request, HttpServletResponse response){
		UserDAO dao = new UserDAO();
		
		if(dao.checkUser(request.getParameter("username"), request.getParameter("email")) == true){
			
		}else{
			User user = new User();
			user.setName(request.getParameter("username"));
			user.setPasswd(request.getParameter("password"));
			user.setEmail(request.getParameter("email"));
			user.setFullName(request.getParameter("fulname"));
			user.setGender(request.getParameter("gender"));
			user.setParentID(Integer.parseInt(request.getParameter("parentID")));
			user.setRole(request.getParameter("role"));
			user.setStatus(Integer.parseInt(request.getParameter("status")));
			user.setApproved(Integer.parseInt(request.getParameter("approved")));
			user.setDepartID(Integer.parseInt(request.getParameter("department_id")));
			user.setPhone(request.getParameter("phone"));
			user.setProfile(request.getParameter("profile"));
			user.setUniversity(Integer.parseInt(request.getParameter("university")));
			//user.setDOB(Calendar.getInstance((request.getParameter("dob"))));
			dao.insertUser(user);
		}
	}

}
