package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

import utilities.DBConnection;
import utilities.WorkWithDate;
import utilities.WorkWithJson;
import model.dto.Video;
import model.dto.VideoCategory;

public class VideoDAO {
	
	ResultSet rs = null;
	WorkWithDate wwd = new WorkWithDate();
	
	/**
	 * Method is to check if video exists or not
	 * @param url is url of video to check
	 * @return true if video already exists otherwise return false
	 */
	
	public boolean checkVideo(String url){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("select youtube_url from tb_videos where youtube_url=?");){
			
			/*To set data to preparedStatement from video's data*/
			stm.setString(1, url.trim());
						
			return stm.executeQuery().next(); //execute the statement and return boolean
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	/**
	 * Method is to insert videos to database 
	 * @param vdo is video object contains data to insert to
	 * @return true if video data is inserted successfully otherwise return false
	 */
	public boolean insertVideo(Video vdo){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("insert into tb_videos(video_name,description,youtube_url,document_url,"
						+ "user_id, status, approved, view) values(?,?,?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS)){
						
			
			/*To set data to preparedStatement from video's data*/
			stm.setString(1, vdo.getName());
			stm.setString(2, vdo.getDescription());
			stm.setString(3, vdo.getUrl());			
			stm.setString(4, vdo.getDocUrl().trim());			
			stm.setLong(5, vdo.getUerID());
			stm.setInt(6, vdo.getStatus());
			stm.setInt(7, vdo.getApproved());
			stm.setLong(8, vdo.getView());
												
			
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			
			
			long video=0;
			rs = stm.getGeneratedKeys();
			if (rs.next()){
				video=rs.getInt(1);
			}			
			if(!new VideoCategoryDAO().insertVideoCategory(new VideoCategory(video,vdo.getCategory_id()))){
				return false;
			}			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	/**
	 * Method is to update data of video in database
	 * @param vdo is video object contains data to update in database
	 * @return true if video is updated successfully otherwise return false
	 */
	public boolean updateVideo(Video vdo){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_videos set video_name=?, description=?, youtube_url=?,"
						+ "document_url=?, modifier_date=?, user_id=?, status=?, approved=?"
						+ " where video_id=?")){
			
			
			//System.out.println(vdo.getName()+"/"+vdo.getUrl()+"/"+vdo.getDocUrl());
			stm.setString(1, vdo.getName());
			stm.setString(2, vdo.getDescription());
			stm.setString(3, vdo.getUrl().trim());
			stm.setString(4, vdo.getDocUrl());
			stm.setDate(5, wwd.getSqlDate(new Date()));
			stm.setLong(6, vdo.getUerID());
			stm.setInt(7, vdo.getStatus());
			stm.setInt(8, vdo.getApproved());
			stm.setLong(9, vdo.getId());
					
			
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
		
			
			if(!new VideoCategoryDAO().insertVideoCategory(new VideoCategory(vdo.getId(),vdo.getCategory_id()))) return false;
			
			return true;
			
			
		}catch(Exception ex){		
			ex.printStackTrace();
			return false;
		}
	}
	
	public Video getVideo(long id){
		
		try(Connection con = new DBConnection().getConnection();
				PreparedStatement stm = con.prepareStatement("select * from tb_videos where video_id=? where approved=1");){
			
			
			stm.setLong(1, id);
			
			rs = stm.executeQuery();
			
			if(rs.next()){
				
				Video v = new Video();
				
				v.setId(id);
				v.setName(rs.getString("video_name"));
				v.setDescription(rs.getString("description"));
				v.setUrl(rs.getString("youtube_url"));
				v.setDocUrl(rs.getString("document_url"));
				v.setCreate_date(rs.getDate("create_date"));
				v.setModifier_date(rs.getDate("modifier_date"));
				v.setUerID(rs.getLong("user_id"));
				v.setStatus(rs.getInt("status"));
				v.setApproved(rs.getInt("approved"));
				v.setView(rs.getLong("view"));
				return v;
			}
			return null;
			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
	
	/**
	 * Method is to retrieve all video record from database 
	 * @return String represents Json
	 */
	public String getAllVideo(){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				Statement stm= con.createStatement();){
			
			rs = stm.executeQuery("select * from selectallvideo"); //execute the statement and assign to Resultset object
			
			return WorkWithJson.convertResultSetIntoJSON(rs).toString();			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
	public boolean toggleStatus(long id){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_videos set status = 1-status where video_id=?")){
			
			stm.setLong(1, id);
			
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}	
	}
	
		
	public boolean upView(long id){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_videos set view = view+1 where video_id=?")){

			
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
	
	public static void main(String[] args) {
		
		Video video = new Video();
		VideoDAO vd = new VideoDAO();
		WorkWithDate wwd = new WorkWithDate();
		
//		System.out.println(vd.getVideo(4).getModifier_date());
//		System.out.println(vd.getAllVideo());
//		System.exit(0);
		
		video.setName("video22");
		video.setDescription("description2");
		video.setUrl("url2");
		
		video.setDocUrl("docUrl2");				
		video.setUerID(27);
		video.setStatus(1);
		video.setApproved(1);
		video.setView(10);
		
		System.out.println(vd.insertVideo(video));
//		video.setId(4);
//		System.out.println(vd.updateVideo(video));
		
		//System.out.println(vd.insertVideo(video));			
		
	}

	public String getVideoComponnet() {
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				Statement stm= con.createStatement();){
			
			rs = stm.executeQuery("select video_id,video_name from tb_videos where approved=1"); //execute the statement and assign to Resultset object
			
			return WorkWithJson.convertResultSetIntoJSON(rs).toString();			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
}
