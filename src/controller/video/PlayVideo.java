package controller.video;

import java.io.IOException;

import javax.servlet.ServletException;
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
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	public void doProcess(HttpServletRequest request, HttpServletResponse response){
		long video_id = Integer.parseInt(request.getParameter("v"));
		//int p = Integer.parseInt(request.getParameter("p"));
		HttpSession session = request.getSession();
		Video url = new VideoDAO().getVideo(video_id);
		session.setAttribute("url", url);
		try {
			//response.sendRedirect("/VideoManagementFinal/ELearning/Dashboard/player.jsp?p="+p+"&v="+video_id);
			response.setCharacterEncoding("utf-8");
			response.setContentType("application/json");
			Video video = new VideoDAO().getVideo(video_id);
			String str = new Gson().toJson(video);
			response.getWriter().write(str);
			//response.sendRedirect("/VideoManagementFinal/ELearning/Dashboard/player.jsp");
			System.out.println("Play video: "+str);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
