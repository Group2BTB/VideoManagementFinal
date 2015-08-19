package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import model.dto.WatchedVideo;
import model.dto.WatchLater;
import utilities.DBConnection;

public class UserVideoDAO {
	
	public boolean insertWatchedVideo(WatchedVideo uv){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("insert into tb_user_video(user_id, video_id, time, percent) values(?,?,?)");){
					
			/*To set data to preparedStatement from video's data*/
			stm.setLong(1, uv.getUser_id());
			stm.setLong(2, uv.getVideo_id());
			stm.setString(3, uv.getTime());
			stm.setString(4, uv.getPercent());
												
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
}
