package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.apache.tomcat.dbcp.dbcp.DbcpException;

import com.google.gson.Gson;

import model.dto.Department;
import utilities.DBConnection;
import utilities.WorkWithJson;

public class DepartmentDAO {
	
	ResultSet rs = null;
	
	/**
	 * Method is to check if Department name exists or not
	 * @param dName is the name of department
	 * @return  true if deparment name already exists otherwise false
	 */
	public boolean checkDepartment(String dName){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("select status from tb_department where department_name=?")){
			
			stm.setString(1, dName);
			return stm.executeQuery().next(); //execute the statement and return boolean
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	/**
	 * Method is to insert Department data to database
	 * @param depart is department object contains data to insert
	 * @return as true if inserting is successfully otherwise return false
	 */
	
	public boolean insertDepartment(Department depart){
				
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("insert into tb_department(department_name,description,user_id,status,approved)"
						+ " values(?,?,?,?,?)")){
			
			if(checkDepartment(depart.getName()))
				return false;
			
			/*To set data to preparedStatement from department data*/
			stm.setString(1, depart.getName());
			stm.setString(2, depart.getDescription());
			stm.setLong(3, depart.getUserID());
			stm.setInt(4, depart.getStatus());
			stm.setInt(5, depart.getApproved());
			
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	/**
	 * Method is to update department data to database
	 * @param de is Department object contain to update to database
	 * @return as true if updating is successful otherwise return false
	 */
	
	public boolean updateDepartment(Department de){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_department set department_name=?, description=?,"
						+ "user_id=?, status=?,approved=? where department_id=?")){
			
			if(checkDepartment(de.getName()))
				return false;
			
			/*To set data to preparedStatement from department data*/
			stm.setString(1, de.getName());
			stm.setString(2, de.getDescription());
			stm.setLong(3, de.getUserID());
			stm.setInt(4, de.getStatus());
			stm.setInt(5, de.getApproved());
			stm.setLong(6, de.getId());
						
			if(stm.executeUpdate() == 0) //execute the statement and compare
				return false;	
			
			return true;
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public Department getDepartment(long id){
		
		try(Connection con = new DBConnection().getConnection();
				PreparedStatement stm = con.prepareStatement("select * from tb_department where department_id=? and status=1 and approved=1")){
			
			stm.setLong(1, id);
			rs = stm.executeQuery();
			
			if(rs.next())
			{
				Department d = new Department();
				d.setId(id);
				d.setName(rs.getString("department_name"));
				d.setDescription(rs.getString("description"));
				d.setUserID(rs.getLong("user_id"));
				d.setStatus(rs.getInt("status"));
				d.setApproved(rs.getInt("approved"));								
				return d;
			}
			
			return null;
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
	
	/**
	 * Method is to get all department record from database
	 * @return as String represents Json data
	 */
	public String getAllDepartment(){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("select * from tb_department where status=1 and approved=1");){
			
			rs = stm.executeQuery(); //execute the statement and assign to Resultset variable
			
			return WorkWithJson.convertResultSetIntoJSON(rs).toString();
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
	
	/**
	 * Method is to deactivate a department from database
	 * @param id is id of department to deactivate
	 * @return  true if it successfully deactivate otherwise return false 
	 */
	
	public boolean deactiveDepartment(long id){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_department set status=0, approved=0 where department_id=?")){
			
			stm.setLong(1, id);
			
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
		
	}
	
	public static void main(String[] args) {
		
		Department de = new Department();
		DepartmentDAO dde = new DepartmentDAO();
		
		System.out.println(dde.getDepartment(12));
		System.exit(0);
		//System.out.println(dde.getAllDepartment());
//		dde.deactiveDepartment(7);
		de = dde.getDepartment(12);
		System.out.println(de);
		System.exit(0);
		
		de.setId(7);
		de.setName("computer10");
		de.setDescription("des10");
		de.setUserID(22);
		de.setStatus(1);
		de.setApproved(1);
		
		System.out.println(dde.updateDepartment(de));		
		
	}
}
