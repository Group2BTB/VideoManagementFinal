package controller.comment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.CommentDAO;
import model.dto.Comment;

/**
 * Servlet implementation class AddComment
 */
public class AddComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddComment() {
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
		Comment cmt = new Comment();
		cmt.setDescription(request.getParameter("comment"));
		cmt.setUserID(Integer.parseInt(request.getParameter("user_id")));
		cmt.setVideoID(Integer.parseInt(request.getParameter("video_id")));
		cmt.setParent_id(Integer.parseInt(request.getParameter("parent_id")));
		
		if(new CommentDAO().insertComment(cmt)){
			System.out.println("success!");
		}else{
			System.out.println("not success!");
		}
	}

}
