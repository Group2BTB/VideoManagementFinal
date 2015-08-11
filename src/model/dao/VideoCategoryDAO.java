package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

import model.dto.Category;
import model.dto.VideoCategory;
import utilities.DBConnection;
import utilities.WorkWithDate;
import utilities.WorkWithJson;

public class VideoCategoryDAO {
	ResultSet rs = null;
	WorkWithJson wwj = new WorkWithJson();
	WorkWithDate wwd = new WorkWithDate();
	public boolean insertVideoCategory(VideoCategory vc){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("insert into tb_video_category values(?,?)");){						
			
			/*To set data to preparedStatement from video's data*/
			stm.setLong(1, vc.getVideo_id());
			stm.setInt(2, vc.getCategory_id());
					
			
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public boolean updateVideoCategory(VideoCategory vc){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				
				PreparedStatement stm = con.prepareStatement("update tb_video_category set category_id=? where video_id=?")){
			
			
			/*To set data to preparedStatement from video's data*/
			stm.setInt(1, vc.getCategory_id());	
			stm.setLong(2, vc.getVideo_id());
						
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;			
			return true;
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
}
