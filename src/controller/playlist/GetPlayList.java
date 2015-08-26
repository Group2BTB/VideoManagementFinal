package controller.playlist;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.PlayListDAO;

/**
 * Servlet implementation class GetPlayList
 */
public class GetPlayList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetPlayList() {
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
		//int playlist_id = Integer.parseInt(request.getParameter("playlist_id"));
		int playlist_id = Integer.parseInt(request.getParameter("playlist_id"));
		int user_id = Integer.parseInt(request.getParameter("user_id"));
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		try {
			response.getWriter().print(new PlayListDAO().getVideoPlaylist(playlist_id,user_id));
			//request.getRequestDispatcher("").forward(request, response);
			System.out.println(new PlayListDAO().getVideoPlaylist(playlist_id,user_id));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
