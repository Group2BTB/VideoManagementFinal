package controller.video;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dto.Video;

import com.google.gson.JsonObject;

/**
 * Servlet implementation class UpdateVideo
 */
public class UpdateVideo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateVideo() {
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
		try{
			Video vid = new Video();
			vid.setName(request.getParameter("video_name"));
			vid.setDescription(request.getParameter("description"));
			vid.setUrl(request.getParameter("youtube_url"));
			vid.setDocUrl(request.getParameter("document_url"));
			vid.setUerID(Integer.parseInt(request.getParameter("user_id")));
			vid.setStatus(Integer.parseInt(request.getParameter("status")));
			vid.setView(0);
			vid.setApproved(Integer.parseInt(request.getParameter("approved")));
			response.setCharacterEncoding("utf-8");
			response.setContentType("application/json");
			JsonObject obj = new JsonObject();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
