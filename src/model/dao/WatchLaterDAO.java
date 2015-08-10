package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import utilities.DBConnection;
import model.dto.WatchLater;

public class WatchLaterDAO {

	public boolean insertWatchLater(WatchLater wat){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("insert into tb_watch_later(user_id, video_id) values(?,?)");){
					
			/*To set data to preparedStatement from video's data*/
			stm.setLong(1, wat.getUser_id());
			stm.setLong(2, wat.getVideo_id());
												
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public boolean updateWatchLater(WatchLater wat){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_watch_later user_id=?, video_id=?  where watch_later_id=?")){
			
			
			/*To set data to preparedStatement from video's data*/
			stm.setLong(1, wat.getUser_id());
			stm.setLong(2, wat.getVideo_id());
			stm.setLong(3, wat.getId());
									
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public boolean deleteWatchLater(long id){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("delete from tb_watch_later where watch_later_id=?")){
			
			
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