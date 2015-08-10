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
	
	public void doProcess(HttpServletRequest request, HttpServletResponse response) throws IOException{
		System.err.println("add Video");
		
		Video v = new Video();
		v.setName(request.getParameter("name"));
		v.setUrl(request.getParameter("youtube_url"));
		v.setDescription(request.getParameter("description"));
		v.setStatus(Integer.parseInt(request.getParameter("status")));
		v.setDocUrl(request.getParameter("document"));
		v.setUerID(27);
		
		if(new VideoDAO().insertVideo(v)){
			response.getWriter().write("Success");
		}else{
			response.getWriter().write("Fail");
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
