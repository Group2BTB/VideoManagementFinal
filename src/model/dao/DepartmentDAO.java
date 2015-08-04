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
			
			/*To set data to preparedStatement from department data*/
			stm.setString(1, de.getName());
			stm.setString(2, de.getDescription());
			stm.setLong(3, de.getUserID());
			stm.setInt(4, de.getStatus());
			stm.setInt(5, de.getApproved());
			stm.setLong(6, de.getId());
			
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	/**
	 * Method is to get all department record from database
	 * @return as String represents Json data
	 */
	public String getAllDepartment(){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("select * from tb_department");){
			
			rs = stm.executeQuery(); //execute the statement and assign to Resultset variable
			
			return new Gson().toJson(WorkWithJson.convertResultSetIntoJSON(rs));
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
	
	public static void main(String[] args) {
		
		Department de = new Department();
		DepartmentDAO dde = new DepartmentDAO();
		
		de.setId(12);
		de.setName("computer11");
		de.setDescription("des1");
		de.setUserID(22);
		de.setStatus(1);
		de.setApproved(1);
		
		dde.updateDepartment(de);
		
		
		System.out.println(dde.insertDepartment(de));
		
	}
}
