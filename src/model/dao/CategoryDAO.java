package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import model.dto.Category;
import model.dto.Video;
import utilities.DBConnection;
import utilities.WorkWithDate;
import utilities.WorkWithJson;

public class CategoryDAO {
	

	ResultSet rs = null;
	WorkWithJson wwj = new WorkWithJson();
	WorkWithDate wwd = new WorkWithDate();
	
	public String getAllCategory(){
		
		try(Connection con = new DBConnection().getConnection();
				Statement stm = con.createStatement()){
			
			rs = stm.executeQuery("select * from tb_category"); //execute the statement and assign to Resultset object
			
			return WorkWithJson.convertResultSetIntoJSON(rs).toString();
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
	
	public Category getCategoty(int id){
		
		try(Connection con = new DBConnection().getConnection();
				PreparedStatement stm = con.prepareStatement("select * from tb_category where category_id=?");){
						
			stm.setLong(1, id);
			
			rs = stm.executeQuery();
			
			if(rs.next()){
				
				Category ca = new Category();
				
				ca.setName(rs.getString("category_name"));
				ca.setDescription(rs.getString("description"));
				ca.setLogo(rs.getString("logo"));
				ca.setParent_id(rs.getInt("parent_id"));
				ca.setStatus(rs.getInt("status"));
				ca.setUserID(rs.getLong("user_id"));
				ca.setCreate_date(rs.getDate("create_date"));
				ca.setModifier_date(rs.getDate("modifier_date"));
								
				return ca;
			}
			return null;
			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
	
	public boolean checkCategory(String name){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("select logo from tb_category where category_name=?");){
			
			/*To set data to preparedStatement from video's data*/
			stm.setString(1, name.trim());
						
			return stm.executeQuery().next(); //execute the statement and return boolean
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public boolean insertCategory(Category ca){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("insert into tb_category(category_name, description, "
						+ "logo, parent_id, status, user_id) values(?,?,?,?,?,?)");){
			
			if(checkCategory(ca.getName()))
				return false;
			
			/*To set data to preparedStatement from video's data*/
			stm.setString(1, ca.getName());
			stm.setString(2, ca.getDescription());
			stm.setString(3, ca.getLogo());
			stm.setInt(4, ca.getParent_id());
			stm.setInt(5, ca.getStatus());
			stm.setLong(6, ca.getUserID());			
			
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
}
