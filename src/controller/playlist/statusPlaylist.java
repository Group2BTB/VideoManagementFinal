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
 * Servlet implementation class statusPlaylist
 */

public class statusPlaylist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public statusPlaylist() {
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
		int id = Integer.parseInt(request.getParameter("playlist_id"));
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		JsonObject obj = new JsonObject();// create JSON object
		try{
			if(new PlayListDAO().toggleStatus(id)){// if status have been change
				System.out.println("updated!");
				obj.addProperty("message", "Status updated!");
			}else{
				System.out.println("cannot update!");
				obj.addProperty("message", "Status cannot updat!");
			}
			
			response.getWriter().print(obj);// send message to view
		}catch(IOException e){
			System.out.println(" Cannot updated status");
		}
	}

}
