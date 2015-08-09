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

public class UpdateQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateQuestion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	
	public void doProcess(HttpServletRequest request, HttpServletResponse response){
		Question quest = new Question();
		quest.setDescription(request.getParameter("description"));
		quest.setVideoID(Integer.parseInt(request.getParameter("video_id")));
		quest.setAnswer_id(Integer.parseInt(request.getParameter("answer_id")));
		quest.setStatus(Integer.parseInt(request.getParameter("status")));
		quest.setId(Integer.parseInt(request.getParameter("id")));
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		JsonObject obj = new JsonObject();
		try{
			if(new QuestionDAO().updateQuestion(quest)){
				obj.addProperty("message", "Category edited!");
			}else{
				obj.addProperty("message", "Category cannot edit!");
			}
			response.getWriter().print(obj);
		}catch(IOException e){
			System.out.println("Cannot edit category!");
		}
		
	}

}
