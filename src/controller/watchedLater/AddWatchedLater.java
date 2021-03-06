package controller.watchedLater;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.WatchLaterDAO;
import model.dto.WatchLater;

/**
 * Servlet implementation class AddWatchedLater
 */

public class AddWatchedLater extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddWatchedLater() {
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
		
		WatchLater wl = new WatchLater();
		
		wl.setUser_id(Integer.parseInt(request.getParameter("user_id")));
		wl.setVideo_id(Integer.parseInt(request.getParameter("video_id")));
			
		if(new WatchLaterDAO().insertWatchLater(wl)){
			System.out.println("Insert video watched later successfully!");
		}else{
			System.out.println("Connot insert watched later!");
		}
	}
	
}
