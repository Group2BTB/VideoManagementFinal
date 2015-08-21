package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import utilities.DBConnection;

public class WatchedPlaylistDAO {

	public boolean checkVideo(long uid, long pid){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("select user_id from tb_user_playlist where user_id=? and playlist_id=?");){
			
			/*To set data to preparedStatement from video's data*/
			stm.setLong(1, uid);
			stm.setLong(2, pid);
						
			return stm.executeQuery().next(); //execute the statement and return boolean
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public boolean insertWatchedPlaylist(long user_id, long playlist_id){
		
		if(checkVideo(user_id, playlist_id))
			return false;
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("insert into tb_user_playlist(user_id, playlist_id) values(?,?)");){
					
			/*To set data to preparedStatement from video's data*/
			stm.setLong(1, user_id);
			stm.setLong(2, playlist_id);
			
			
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}	
	}
	
	public static void main(String[] args) {
		
		System.out.println(new WatchedPlaylistDAO().insertWatchedPlaylist(27, 3));
	}
}
