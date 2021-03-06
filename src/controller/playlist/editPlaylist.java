package controller.playlist;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utilities.WorkWithDate;
import model.dao.PlayListDAO;
import model.dto.PlayList;

/**
 * Servlet implementation class editPlaylist
 */

public class editPlaylist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editPlaylist() {
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
		System.out.println("update Playlist");
		System.out.println(request.getParameter("id"));
		PlayList pl = new PlayList();
		pl.setId(Integer.parseInt(request.getParameter("id")));
		pl.setName(request.getParameter("name"));
		pl.setDescription(request.getParameter("description"));
		
		if(new PlayListDAO().updatePlayList(pl)){
			response.getWriter().write("Success");
		}else{
			response.getWriter().write("Fail");
		}
		
	}
	
	

}
