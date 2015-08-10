package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import utilities.DBConnection;
import model.dto.Comment;

public class CommentDAO {

	public boolean insertComment(Comment cm){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("insert into tb_comment(description, parent_id, "
						+ "user_id, video_id) values(?,?,?,?)");){
					
			/*To set data to preparedStatement from video's data*/
			stm.setString(1, cm.getDescription());
			stm.setLong(2, cm.getParent_id());
			stm.setLong(3, cm.getUserID());
			stm.setLong(4, cm.getVideoID());
						
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public boolean updateComment(Comment cm){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_comment set description=?, parent_id=?,"
						+ "user_id=?, video_id=? where comment_id=?")){
			
			
			/*To set data to preparedStatement from video's data*/
			stm.setString(1, cm.getDescription());
			stm.setLong(2, cm.getParent_id());
			stm.setLong(3, cm.getUserID());
			stm.setLong(4, cm.getVideoID());
			stm.setLong(5, cm.getId());
						
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public boolean upLike(long id){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_comment set like = like+1 where comment_id=?")){
			
			stm.setLong(1, id);
			
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public boolean upUnlike(long id){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_comment set unlike = unlike+1 where comment_id=?")){
			
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
