package controller.userLogin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dao.UserDAO;
import model.dto.User;

/**
 * Servlet implementation class UserLogin
 */

//@WebServlet("/Elearning/login")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLogin() {
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
		String username = request.getParameter("username");//get username from view
		String password = request.getParameter("password");//get password from view
		if(new UserDAO().checkUser(username, password)){// if username and password is correct
			HttpSession session = request.getSession();//create session
			session.setAttribute("user", username);// set session for user
			User user = new UserDAO().getUser(username, password);
			try {
				if(user.getRole().equalsIgnoreCase("admin")){
					session.setAttribute("userID", user.getId());
					System.out.println(user.getName());
					response.sendRedirect("/VideoManagementFinal/Admin/index.jsp");
				}else{
					session.setAttribute("userID", user.getId());
					response.sendRedirect("/VideoManagementFinal/ELearning/Dashboard/Category.jsp");
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			try {
				request.getRequestDispatcher("login.jsp").forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
