package controller.department;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.DepartmentDAO;
import model.dto.Department;

/**
 * Servlet implementation class editDept
 */

public class editDept extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editDept() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request, response);
	}
	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("123");
		Department dept = new Department();
	dept.setId(Integer.parseInt(request.getParameter("id")));
	dept.setName(request.getParameter("name"));
	dept.setStatus(Integer.parseInt(request.getParameter("status")));
	dept.setDescription(request.getParameter("description"));
	DepartmentDAO da=new DepartmentDAO();
	System.out.println(dept.getId());
	
	if(da.updateDepartment(dept))
		response.getWriter().print("Success");
	else
		response.getWriter().print("Fail");
	
	
	
	
	
	
	
	
	
	
	
	
	
	}
}
