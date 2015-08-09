package controller.playlist;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utilities.WorkWithDate;
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
	
	public void doProcess(HttpServletRequest request, HttpServletResponse response){
		PlayList plist = new PlayList();
		plist.setName(request.getParameter("playlist_name"));
		plist.setDescription(request.getParameter("description"));
		plist.setCategory_id(Integer.parseInt(request.getParameter("category_id")));
		plist.setCreate_date(new WorkWithDate().getDate("create_date"));
		plist.setApproved(Integer.parseInt(request.getParameter("approved")));
		plist.setId(Integer.parseInt(request.getParameter("id")));
	}
	
	

}
