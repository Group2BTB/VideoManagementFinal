package controller.video;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.VideoDAO;
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

	public void doProcess(HttpServletRequest request, HttpServletResponse response) throws IOException{
		System.out.println("update Video");
		Video v = new Video();
		v.setName(request.getParameter("name"));
		v.setUrl(request.getParameter("youtube_url"));
		v.setDescription(request.getParameter("description"));
		v.setStatus(Integer.parseInt(request.getParameter("status")));
		v.setDocUrl(request.getParameter("document"));
		v.setUerID(27);
		v.setCategory_id(Integer.parseInt(request.getParameter("category")));
					
		
		if(new VideoDAO().updateVideo(v)){
			System.out.println("Success");
			response.getWriter().write("Success");
		}else{
			System.out.println("Fail");
			response.getWriter().write("Fail");
		}
	}
}
