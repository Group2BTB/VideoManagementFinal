package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import utilities.DBConnection;
import utilities.WorkWithDate;
import model.dto.Video;

public class VideoDAO {
	
	ResultSet rs = null;
	WorkWithDate wwd = new WorkWithDate();
	
	public boolean checkVideo(String url){
		
		try(Connection con = new DBConnection().getConnection();
				PreparedStatement stm = con.prepareStatement("select youtube_url from tb_videos where youtube_url=?");){
			
			stm.setString(1, url);
						
			return stm.executeQuery().next(); 
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	
	public boolean insertVideo(Video vdo){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("insert into tb_videos(video_name,description,youtube_url,document_id,document_url,"
						+ "create_date,modifier_date,user_id,status,approved,view) values(?,?,?,?,?,?,?,?,?,?,?)");){
			
			if(checkVideo(vdo.getUrl()))
				return false;
			
			/*To set data to preparedStatement from video's data*/
			stm.setString(1, vdo.getName());
			stm.setString(2, vdo.getDescription());
			stm.setString(3, vdo.getUrl());
			stm.setLong(4, vdo.getDocId());
			stm.setString(5, vdo.getDocUrl());
			stm.setDate(6, wwd.getSqlDate(vdo.getCreate_date()));
			stm.setDate(7, wwd.getSqlDate(vdo.getModifier_date()));
			stm.setLong(8, vdo.getUerID());
			stm.setInt(9, vdo.getStatus());
			stm.setInt(10, vdo.getApproved());
			stm.setLong(11, vdo.getView());
			
			if(stm.executeUpdate()==0) //execute the statement
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
		
		video.setName("video1");
		video.setDescription("description1");
		video.setUrl("url1");
		video.setDocId(2);
		video.setDocUrl("docUrl1");
		video.setCreate_date(wwd.getDate("20 15 2015"));
		video.setModifier_date(wwd.getDate("20 15 2015"));
		video.setUerID(23);
		video.setStatus(1);
		video.setApproved(1);
		video.setView(100);
		
		System.out.println(vd.insertVideo(video));
			
		
	}
}
