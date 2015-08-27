package controller.video;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.dao.PlayListDAO;
import model.dao.VideoDAO;
import model.dto.Video;

/**
 * Servlet implementation class GetDefaultVideo
 */

public class GetDefaultVideo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetDefaultVideo() {
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
		int playlist_id = Integer.parseInt(request.getParameter("playlist_id"));
		//System.out.println();
		
		/*get video_id from playlist in PlayListDAO*/
		Video v = new PlayListDAO().getVideoDefault(playlist_id);
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		long video_id = v.getId();
		String time = v.getTime();
		try {
			Video video = new VideoDAO().getVideo(video_id);
			video.setTime(time);
			String str = new Gson().toJson(video);
			response.getWriter().write(str);
			System.out.println("get Video Default: "+ str);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
