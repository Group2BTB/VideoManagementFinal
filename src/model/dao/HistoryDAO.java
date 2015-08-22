package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import utilities.DBConnection;
import utilities.WorkWithJson;
import model.dto.History;

public class HistoryDAO {

	public boolean insertHistory(History his){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("insert into tb_history(user_id, video_id) values(?,?)");){
					
			/*To set data to preparedStatement from video's data*/
			stm.setLong(1, his.getUserID());
			stm.setLong(2, his.getVideoID());
									
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public boolean updateHistory(History his){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_history set user_id=?, video_id=? where history_id=?")){
						
			/*To set data to preparedStatement from video's data*/
			stm.setLong(1, his.getUserID());
			stm.setLong(2, his.getVideoID());
			stm.setLong(3, his.getId());
									
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public boolean deleteHistory(long id){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("delete from tb_history where history_id=?")){
						
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
	
	public boolean deleteAllHistory(long userId){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("delete from tb_history where user_id=?")){
						
			/*To set data to preparedStatement from video's data*/
			stm.setLong(1, userId);
									
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public String getHistory(long userId){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection();
				PreparedStatement stm = con.prepareStatement("select * from \"vHistory\" where user_id=? order by create_date");){
						
			stm.setLong(1, userId);						
			
			return WorkWithJson.convertResultSetIntoJSON(stm.executeQuery()).toString();
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
	
	public static void main(String[] args) {
		
		//System.out.println(new HistoryDAO().getHistory(27));
	}
}
