package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import utilities.DBConnection;
import model.dto.History;

public class HistoryDAO {

	public boolean insertHistory(History his){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("insert into tb_history(user_id, video_id) values(?,?)");){
					
			/*To set data to preparedStatement from video's data*/
			stm.setLong(1, his.getUserID());
			stm.setLong(2, his.getVideoID());
									
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public boolean updateHistory(History his){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_history set user_id=?, video_id=? where history_id=?")){
						
			/*To set data to preparedStatement from video's data*/
			stm.setLong(1, his.getUserID());
			stm.setLong(2, his.getVideoID());
			stm.setLong(3, his.getId());
									
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public boolean deleteHistory(long id){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("delete from tb_history where history_id=?")){
						
			/*To set data to preparedStatement from video's data*/
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
