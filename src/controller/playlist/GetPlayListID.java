package controller.playlist;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dao.PlayListDAO;
import model.dao.VideoDAO;
import model.dto.PlayList;
import model.dto.Video;

/**
 * Servlet implementation class GetPlayListID
 */
public class GetPlayListID extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetPlayListID() {
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
		int playlist_id = Integer.parseInt(request.getParameter("p"));
		
//		HttpSession session = request.getSession();		
//		session.setAttribute("pl", playlist_id);
		/*
		try {
			response.sendRedirect("/VideoManagementFinal/ELearning/Dashboard/player.jsp?p="+playlist_id);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		//request.setAttribute("pl", playlist_id);
		//System.out.println("PlaylistID: "+request.getAttribute("pl"));
		try {
			response.sendRedirect("/VideoManagementFinal/ELearning/Dashboard/player.jsp?p="+playlist_id);
			//request.getRequestDispatcher("getPlayList").forward(request, response);
			//request.getRequestDispatcher("/ELearning/getPlaylist").forward(request, response);
			/*rd.forward(request, response);*/
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

}
