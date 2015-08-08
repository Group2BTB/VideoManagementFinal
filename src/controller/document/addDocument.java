package controller.document;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

import model.dao.CategoryDAO;
import model.dao.DepartmentDAO;
import model.dto.Category;
import model.dto.Department;

/**
 * Servlet implementation class addCategory
 */

public class addDocument extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public addDocument() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//System.out.println("123");
		process(request, response);
	}

	protected void process(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Category c=new Category();
		String saveFolder = request.getSession().getServletContext().getRealPath("uploads/category");
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setSizeThreshold(1024 * 1024 * 2);
		factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
		ServletContext context = request.getServletContext();
		ServletFileUpload upload = new ServletFileUpload(factory);
		upload.setSizeMax(1024 * 1024 * 2);
		
		try {
			// Parse the request
			java.util.List<FileItem> items = upload.parseRequest(request);
			boolean haspic = false;
			Iterator<FileItem> iter = items.iterator();
			File uploadedFile = null;
			
			//System.out.println(request.getParameter("formData"));
			
			while (((Iterator<FileItem>) iter).hasNext()) {
				
				FileItem item = iter.next();

				if (!item.isFormField()) {
					if (item.getName() == "" || item.getName() == null)
						continue;

					String fileName = new File(item.getName()).getName()
							.substring(item.getName().lastIndexOf("."),
									item.getName().length());

					//int iu = new selectStudent().getLastID();
					String filePath = saveFolder + File.separator + fileName;
					uploadedFile = new File(filePath);
					System.out.println(uploadedFile);
					// saves the file to upload directory
					item.write(uploadedFile);
					c.setLogo("uploads/category/"+ fileName);
					System.err.println("photo:" + c.getLogo());
					haspic = true;
					// response.getWriter().print("save success.");
					System.err.println("Save success");
				} else {
					
					//System.out.println("text");
					
					
					// get value from form
					String value = item.getString();
					// get name of control of form.
					String name = item.getFieldName();
					
					//System.out.println(name+"/"+value);
					
					if (name.equals("name"))
						c.setName(value);

					if (name.equals("parent"))
						c.setParent_id(Integer.parseInt(value));

					if (name.equals("status"))
						c.setStatus(Integer.parseInt(value));
					if (name.equals("description"))
						c.setDescription(value);
					
				}
				System.out.println("end");
			}
			System.out.println(c.getName());
			if (haspic != true)
				c.setLogo("uploads/noimagecat.png");
			// System.err.println("after " + dto.getPhoto());
			if (new CategoryDAO().insertCategory(c)) {
				response.getWriter().write("Success");
			} else
				response.getWriter().write("Fail");
		} catch (FileUploadException ex) {
			throw new ServletException(ex);
		} catch (Exception ex) {
			throw new ServletException(ex);
		}

	}
}
