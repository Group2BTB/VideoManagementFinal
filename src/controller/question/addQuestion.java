package controller.question;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utilities.WorkWithDate;
import model.dao.QuestionDAO;
import model.dto.Question;

/**
 * Servlet implementation class addQuestion
 */
@WebServlet("/addQuestion")
public class addQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addQuestion() {
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
		quest.setCreate_date(new WorkWithDate().getDate("create date"));
		if(new QuestionDAO().insertQuestion(quest)){
			System.out.println("successfully!");
		}else{
			System.out.println("unsuccessfully!");
		}
	}

}