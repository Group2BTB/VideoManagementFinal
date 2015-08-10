package controller.question;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;

import model.dao.QuestionDAO;
import model.dto.Question;


/**
 * Servlet implementation class UpdateQuestion
 */

public class editQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editQuestion() {
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
	
	public void doProcess(HttpServletRequest request, HttpServletResponse response) throws IOException{		
		System.err.println("edit question");
		Question q = new Question();
		q.setId(Integer.parseInt(request.getParameter("id")));
		q.setDescription(request.getParameter("name"));
		q.setVideoID(Integer.parseInt(request.getParameter("video")));
		q.setStatus(Integer.parseInt(request.getParameter("status")));
		if(new QuestionDAO().updateQuestion(q)){
			response.getWriter().write("Success");
		}else{
			response.getWriter().write("Fail");
		}
	}

}
