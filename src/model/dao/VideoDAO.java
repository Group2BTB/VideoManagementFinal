package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

import sun.font.CreatedFontTracker;
import utilities.DBConnection;
import utilities.WorkWithDate;
import utilities.WorkWithJson;
import model.dto.Video;

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
			stm.setString(1, url);
						
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
				PreparedStatement stm = con.prepareStatement("insert into tb_videos(video_name,description,youtube_url,document_id,document_url,"
						+ "create_date, user_id, status, approved, view) values(?,?,?,?,?,?,?,?,?,?,?)");){
			
			if(checkVideo(vdo.getUrl()))
				return false;
			
			/*To set data to preparedStatement from video's data*/
			stm.setString(1, vdo.getName());
			stm.setString(2, vdo.getDescription());
			stm.setString(3, vdo.getUrl());
			stm.setLong(4, vdo.getDocId());
			stm.setString(5, vdo.getDocUrl());			
			stm.setLong(8, vdo.getUerID());
			stm.setInt(9, vdo.getStatus());
			stm.setInt(10, vdo.getApproved());
			stm.setLong(11, vdo.getView());
			
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public boolean updateVideo(Video vdo){
		
		try(Connection con = new DBConnection().getConnection();
				PreparedStatement stm = con.prepareStatement("update tb_videos set video_name=?, description=?, youtube_url=?,"
						+ "document_id=?, document_url=?, modifier_date=?, user_id=?, status=?, approved=?,"
						+ "view=? where video_id=?")){
			
			if(checkVideo(vdo.getUrl()))
				return false;
			
			stm.setString(1, vdo.getName());
			stm.setString(2, vdo.getDescription());
			stm.setString(3, vdo.getUrl());
			stm.setLong(4, vdo.getDocId());
			stm.setString(5, vdo.getDocUrl());
			//stm.setDate(6, wwd.getSqlDate(vdo.mo));
			
			return true;
			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
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
			
			rs = stm.executeQuery("select * from tb_videos"); //execute the statement and assign to Resultset object
			
			return WorkWithJson.convertResultSetIntoJSON(rs).toString();			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
	
	public static void main(String[] args) {
		
		Video video = new Video();
		VideoDAO vd = new VideoDAO();
		WorkWithDate wwd = new WorkWithDate();
		System.out.println(vd.getAllVideo());
		System.exit(0);
		
		video.setName("video2");
		video.setDescription("description2");
		video.setUrl("url2");
		video.setDocId(2);
		video.setDocUrl("docUrl2");
		video.setCreate_date(wwd.getDate("20 15 2015"));
		video.setModifier_date(wwd.getDate("20 15 2015"));
		video.setUerID(23);
		video.setStatus(1);
		video.setApproved(1);
		video.setView(100);
		
		System.out.println(vd.insertVideo(video));
			
		
	}
}
