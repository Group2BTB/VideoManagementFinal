package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

import model.dto.PlayList;
import model.dto.Video;
import utilities.DBConnection;
import utilities.WorkWithDate;
import utilities.WorkWithJson;

public class PlayListDAO {

	WorkWithDate wwd = new WorkWithDate();
	ResultSet rs = null;
	public boolean insertPlayList(PlayList pl){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("insert into tb_playlist(playlist_name, description,"
						+ "category_id) values(?,?,?)");){
					
			/*To set data to preparedStatement from video's data*/
			stm.setString(1, pl.getName());
			stm.setString(2, pl.getDescription());
			stm.setInt(3, pl.getCategory_id());
			
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}		
	}
	
	public boolean updatePlayList(PlayList pl){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_playlist set playlist_name=?, description=?, category_id=?,"
						+ "modifier_date=?, approved=?,status=? where playlist_id=?")){
			
			
			/*To set data to preparedStatement from video's data*/
			stm.setString(1, pl.getName());
			stm.setString(2, pl.getDescription());
			stm.setInt(3, pl.getCategory_id());
			stm.setDate(4, wwd.getSqlDate(new Date()));
			stm.setInt(5, pl.getApproved());
			stm.setInt(6, pl.getStatus());
			stm.setLong(7, pl.getId());
						
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;
			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public boolean toggleStatus(long id){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_playlist set status = 1-status where playlist_id=?")){
			
			stm.setLong(1, id);
			
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}	
	}
	public String getAllPlaylist(){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				Statement stm= con.createStatement();){
			
			rs = stm.executeQuery("select * from \"selectallplaylist\""); //execute the statement and assign to Resultset object
			
			return WorkWithJson.convertResultSetIntoJSON(rs).toString();			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
	
	public String getVideoPlaylist(long playlistId, long userId){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection();
				PreparedStatement stm = con.prepareStatement("select * from \"vPlaylist\" " +
							" WHERE playlist_id = ? and (user_id = ? or video_id not in (SELECT v.video_id from tb_user_video uv " 
						+ " INNER JOIN tb_users u on uv.user_id = u.user_id INNER JOIN tb_videos v on uv.video_id = v.video_id where u.user_id = ?))"
						+ "order by video_id");){
						
			stm.setLong(1, playlistId);
			stm.setLong(2, userId);
			stm.setLong(3, userId);
			
			
			rs = stm.executeQuery();			
			
			return WorkWithJson.convertPlaylistToJson(rs);
			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}	
	
	public Video getVideoDefault(long playlistId){
		
		try(Connection con = new DBConnection().getConnection();
				PreparedStatement stm = con.prepareStatement("select * from \"vPlaylist\" where playlist_id=? order by video_id");){			
			
			stm.setLong(1, playlistId);
			
			rs = stm.executeQuery();
			
			if(rs.next()){
				
				Video v = new Video();
				
				v.setId(rs.getLong("video_id"));
				v.setName(rs.getString("video_name"));
				v.setDescription(rs.getString("description1"));
				v.setUrl(rs.getString("youtube_url"));
				v.setDocUrl(rs.getString("document_url"));
				v.setCreate_date(rs.getDate("create_date"));				
				v.setUerID(rs.getLong("user_id"));
				
				v.setUsername(rs.getString("username"));
				v.setTime(rs.getString("time"));
				v.setPercent(rs.getString("percent"));				
				v.setView(rs.getLong("view"));
				return v;
			}
			return null;
			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
	
	public static void main(String[] args) {
		
		System.out.println(new PlayListDAO().getVideoPlaylist(1,27));
	}
}
