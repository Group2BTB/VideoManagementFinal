package controller.video;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;

import model.dao.VideoDAO;
import model.dto.Video;

/**
 * Servlet implementation class AddVideo
 */

public class AddVideo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddVideo() {
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
			if(new VideoDAO().insertVideo(vid)){
				obj.addProperty("message", "Inserted successfully!");
			}else{
				obj.addProperty("message", "Cannot insert!");
			}
			response.getWriter().print(obj);// return message to view success or not
		}catch(IOException e){
			System.out.println("Cannot insert!");
		}
	}

}
