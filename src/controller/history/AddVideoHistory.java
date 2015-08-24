package controller.history;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.HistoryDAO;
import model.dto.History;

/**
 * Servlet implementation class AddVideoHistory
 */
public class AddVideoHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddVideoHistory() {
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
		int video_id = Integer.parseInt(request.getParameter("video_id"));
		int user_id = Integer.parseInt(request.getParameter("user_id"));
		History history = new History();
		history.setUserID(user_id);
		history.setVideoID(video_id);
		if(new HistoryDAO().insertHistory(history)){
			System.out.println("Video history inserted successfully!");
		}else{
			System.out.println("Video history cannot insert");
		}
	}

}
