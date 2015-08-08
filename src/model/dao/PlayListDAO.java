package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Date;

import model.dto.PlayList;
import utilities.DBConnection;
import utilities.WorkWithDate;

public class PlayListDAO {

	WorkWithDate wwd = new WorkWithDate();
	
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
						+ "modifier_date=?, approved=?, where playlist_id=?")){
			
			
			/*To set data to preparedStatement from video's data*/
			stm.setString(1, pl.getName());
			stm.setString(2, pl.getDescription());
			stm.setInt(3, pl.getCategory_id());
			stm.setDate(4, wwd.getSqlDate(new Date()));
			stm.setInt(5, pl.getApproved());
			stm.setLong(6, pl.getId());
						
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
}
