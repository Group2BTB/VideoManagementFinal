package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import utilities.DBConnection;
import model.dto.Like;

public class LikeDAO {

	public boolean insertLike(Like like){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("insert into tb_like(user_id, video_id) values(?,?)");){
					
			/*To set data to preparedStatement from video's data*/
			stm.setLong(1, like.getId());
			stm.setLong(2, like.getVideoID());
									
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public boolean updateLike(Like like, long oldUId, long OldVId){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_like set user_id=?, video_id=? where user_id=? and video_id=?")){
			
			
			/*To set data to preparedStatement from video's data*/
			stm.setLong(1, like.getId());
			stm.setLong(2, like.getVideoID());
			stm.setLong(3, oldUId);
			stm.setLong(4, OldVId);
									
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public boolean toggleStatus(long userId, long videoId){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_like set status = 1-status where user_id=? and video_id=?")){
			
			stm.setLong(1, userId);
			stm.setLong(2, videoId);
						
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}	
	}
}
