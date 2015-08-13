package controller.video;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import model.dao.VideoDAO;
import model.dto.Video;

/**
 * Servlet implementation class PlayVideo
 */

public class PlayVideo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlayVideo() {
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
		long video_id = Integer.parseInt(request.getParameter("v"));
		System.out.println(video_id);
		HttpSession session = request.getSession();
		Video url = new VideoDAO().getVideo(video_id);
		session.setAttribute("url", url.getUrl());
		/*String obj  = new Gson().toJson(url);
		try {
			response.getWriter().write(obj);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		};*/
	}

}
