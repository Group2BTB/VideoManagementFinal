package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import utilities.DBConnection;
import model.dto.VideoPlaylist;

public class VideoPlaylistDTO {
	public boolean insertVideoPlaylist(VideoPlaylist vp){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("insert into tb_video_playlist values(?,?)");){					
			
			/*To set data to preparedStatement from video's data*/
		
			stm.setLong(1, vp.getVideo_id());			
			stm.setLong(2, vp.getPlaylist_id());
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
		
	}
public boolean deleteVideoPlaylist(VideoPlaylist vp){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("delete from tb_video_playlist where video_id=? and playlist_id=?");){					
			
			/*To set data to preparedStatement from video's data*/
		
			stm.setLong(1, vp.getVideo_id());			
			stm.setLong(2, vp.getPlaylist_id());
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
		
	}
}
