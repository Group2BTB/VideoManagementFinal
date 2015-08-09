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
		process(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request, response);
	}
	
	public void process(HttpServletRequest request, HttpServletResponse response){
		Question quest = new Question();
		quest.setDescription(request.getParameter("name"));
		quest.setStatus(Integer.parseInt("status"));
		quest.setVideoID(Integer.parseInt("video"));
		if(new QuestionDAO().insertQuestion(quest)){
			System.out.println("Success!");
		}else{
			System.out.println("Fail!");
		}
	}

}
