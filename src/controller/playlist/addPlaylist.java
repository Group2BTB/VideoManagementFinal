package controller.playlist;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;

import model.dao.PlayListDAO;
import model.dto.PlayList;

/**
 * Servlet implementation class addPlaylist
 */

public class addPlaylist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addPlaylist() {
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
		PlayList plist = new PlayList();
		plist.setName(request.getParameter("playlist_name"));
		plist.setDescription(request.getParameter("description"));
		plist.setCategory_id(Integer.parseInt(request.getParameter("category_id")));
		try{
			response.setCharacterEncoding("utf-8");
			response.setContentType("application/json");
			JsonObject obj = new JsonObject();
			if(new PlayListDAO().insertPlayList(plist)){
				obj.addProperty("message", "This video have added to playlist!");
			}else{
				obj.addProperty("message", "This video didn't add to playlist!");
			}
			response.getWriter().print(obj);
		}catch(IOException e){
			System.out.println("Cannot add to playList!");
		}
	}

}
