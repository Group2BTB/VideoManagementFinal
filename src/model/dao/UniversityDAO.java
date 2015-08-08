package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Date;

import utilities.DBConnection;
import model.dto.University;

public class UniversityDAO {

	public boolean insertUniversity(University un){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("insert into tb_university(university_name, short_name,"
						+ "address, logo) values(?,?,?,?)");){
					
			/*To set data to preparedStatement from video's data*/
			stm.setString(1, un.getName());
			stm.setString(2, un.getShort_name());
			stm.setString(3, un.getAddress());
			stm.setString(4, un.getLogo());
			
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public boolean updateUniversity(University un){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_university set university_name=?,"
						+ "short_name=?, address=?, logo=? where university_id=?")){
			
			
			/*To set data to preparedStatement from video's data*/
			stm.setString(1, un.getName());
			stm.setString(2, un.getShort_name());
			stm.setString(3, un.getAddress());
			stm.setString(4, un.getLogo());
			stm.setInt(5, un.getId());
			
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
				PreparedStatement stm = con.prepareStatement("update tb_university set status = 1-status where university_id=?")){
			
			stm.setLong(1, id);
			
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
}
