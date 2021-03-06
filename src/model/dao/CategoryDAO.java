package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

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
			
			rs = stm.executeQuery("select * from \"selectAllCategory\";"); //execute the statement and assign to Resultset object
			
			return WorkWithJson.convertResultSetIntoJSON(rs).toString();
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
	
	public String getSubAllCategory(){
		
		try(Connection con = new DBConnection().getConnection();
				Statement stm = con.createStatement()){
			
			rs = stm.executeQuery("SELECT * from \"vCategory\" order by super"); //execute the statement and assign to Resultset object
			
			return wwj.convertSubJson(rs);
		
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
	
	public Category getCategoty(int id){
		
		try(Connection con = new DBConnection().getConnection();
				PreparedStatement stm = con.prepareStatement("select * from tb_category where category_id=?");){
						
			stm.setInt(1, id);
			
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
	
	public boolean updateCategory(Category ca){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				
				PreparedStatement stm = con.prepareStatement("update tb_category set category_name=?, description=?,"
						+ "parent_id=?, status=?, user_id=?, modifier_date=? where category_id=?")){
			
			
			/*To set data to preparedStatement from video's data*/
			stm.setString(1, ca.getName());
			stm.setString(2, ca.getDescription());			
			stm.setInt(3, ca.getParent_id());
			stm.setInt(4, ca.getStatus());
			stm.setLong(5, ca.getUserID());
			stm.setDate(6, wwd.getSqlDate(new Date()));
			stm.setInt(7, ca.getId());
						
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;			
			return true;
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public boolean toggleStatus(int id){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_category set status = 1-status where category_id=?")){
			
			stm.setInt(1, id);
			
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}	
	}
	public int getLastID() {
		try(Connection con = new DBConnection().getConnection();){
			 Statement st=con.createStatement();
			 ResultSet rs=st.executeQuery("select last_value from category_id_seq");
			 rs.next();
			 return rs.getInt(1)+1;
			 
		}catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return 0;
	}
	public String checkNull(int val){
		if(val==0) return null; return val+"";
	}

	public static void main(String[] args) {
		
		//System.out.println(new CategoryDAO().getSubAllCategory());
	}
}
