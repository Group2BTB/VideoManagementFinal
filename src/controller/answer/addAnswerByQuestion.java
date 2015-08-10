package controller.answer;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.AnswerDAO;
import model.dto.Answer;

/**
 * Servlet implementation class addAnswer
 */

public class addAnswerByQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addAnswerByQuestion() {
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
	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.err.println("add answer");				
		boolean i = true;
		Answer a = new Answer();
		a.setId(Integer.parseInt(request.getParameter("ans1")));	
		a.setDescription(request.getParameter("answer1"));
		a.setQuestion_id(Integer.parseInt(request.getParameter("id")));
		
		int trueAns = Integer.parseInt(request.getParameter("trueAns"));
		
		if(trueAns==a.getId()){			
			a.setStatus(1);
			System.err.println(request.getParameter("trueAns")+"/"+a.getId());
		}else{
			a.setStatus(0);
		}
		
		
		if(!new AnswerDAO().updateAnswer(a)) i=false;
		
		a.setId(Integer.parseInt(request.getParameter("ans2")));	
		a.setDescription(request.getParameter("answer2"));
		
		
		if(trueAns==a.getId()){		
			a.setStatus(1);	
			System.err.println(trueAns+"/"+a.getId());
		}else{
			a.setStatus(0);
		}
		if(!new AnswerDAO().updateAnswer(a)) i=false;
		
		a.setId(Integer.parseInt(request.getParameter("ans3")));	
		a.setDescription(request.getParameter("answer3"));
		if(trueAns==a.getId()){			
			a.setStatus(1);			
		}else{
			a.setStatus(0);
		}
		if(!new AnswerDAO().updateAnswer(a)) i=false;
		
		if(i){
			System.out.println("success");
		}else{
			System.out.println("fail");
		}
		
	}
}
