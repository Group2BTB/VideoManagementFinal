package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import model.dto.WatchedVideo;
import model.dto.WatchLater;
import utilities.DBConnection;

public class WatchedVideoDAO {	
	
	public boolean checkVideo(WatchedVideo wv){
				
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("select time from tb_user_video where user_id=? and video_id=?");){
			
			/*To set data to preparedStatement from video's data*/
			stm.setLong(1, wv.getUser_id());
			stm.setLong(2, wv.getVideo_id());
						
			return stm.executeQuery().next(); //execute the statement and compare
						
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}

	public boolean insertWatchedVideo(WatchedVideo uv){
			
		String query;
		boolean having = checkVideo(uv);
		
		if(having)
			query = "update tb_user_video set time=? where user_id=? and video_id=?";
		else
			query = "insert into tb_user_video(user_id, video_id, time) values(?,?,?)";
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement(query);){
					
			if(having){
				
				stm.setString(1, uv.getTime());
				stm.setLong(2, uv.getUser_id());
				stm.setLong(3, uv.getVideo_id());
			}else{
				
				/*To set data to preparedStatement from video's data*/
				stm.setLong(1, uv.getUser_id());
				stm.setLong(2, uv.getVideo_id());
				stm.setString(3, uv.getTime());
				//stm.setString(4, uv.getPercent());
			}
												
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public static void main(String[] args) {
		WatchedVideo wv = new WatchedVideo();
		wv.setTime("00:03");
		wv.setUser_id(7);
		wv.setVideo_id(26);
		System.out.println(new WatchedVideoDAO().insertWatchedVideo(wv));
	}
}
