package controller.videoplaylist;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.VideoPlaylistDTO;
import model.dto.VideoPlaylist;

/**
 * Servlet implementation class sfsfsfsf
 */

public class removeVideoToPlaylist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public removeVideoToPlaylist() {
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
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("remove video from playlist");
		VideoPlaylist vp = new VideoPlaylist();
		vp.setVideo_id(Long.parseLong(request.getParameter("id")));
		vp.setPlaylist_id(Long.parseLong(request.getParameter("playlist")));
		if(new VideoPlaylistDTO().deleteVideoPlaylist(vp)){
			response.getWriter().print("Success");
		}else{
			response.getWriter().print("Fail");
		}
	}

}
