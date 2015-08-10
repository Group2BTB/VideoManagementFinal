package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import model.dto.Vote;
import utilities.DBConnection;

public class VoteDAO {

	public boolean insertVote(Vote vo){
		
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("insert into tb_vote(user_id, video_id, level) values(?,?,?)");){
					
			/*To set data to preparedStatement from video's data*/
			stm.setLong(1, vo.getUserID());
			stm.setLong(2, vo.getVideoID());
			stm.setInt(3, vo.getLevel());
												
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public boolean updateVote(Vote vo, long oldUId, long oldVId){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_vote set user_id=?, video_id=?, level=? where user_id=? and"
						+ " video_id=?")){
						
			/*To set data to preparedStatement from video's data*/
			stm.setLong(1, vo.getUserID());
			stm.setLong(2, vo.getVideoID());
			stm.setInt(3, vo.getLevel());
			stm.setLong(4, oldUId);
			stm.setLong(5, oldVId);
									
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public boolean deleteVote(long userId, long videoId){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("delete from tb_vote where user_id=? and video_id=?")){			
			
			/*To set data to preparedStatement from video's data*/
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
