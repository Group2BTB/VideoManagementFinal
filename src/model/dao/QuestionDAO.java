package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

import model.dto.Question;
import utilities.DBConnection;
import utilities.WorkWithDate;

public class QuestionDAO {
	
	ResultSet rs = null;
	WorkWithDate wwd = new WorkWithDate();
	
	/**
	 * Method is to check if question already exists
	 * @param title is description field in database 
	 * @return true if question already exists otherwise return false
	 */
	public boolean checkQuestion(String title){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("select status from tb_questions where description=?")){
			
			stm.setString(1, title.trim());
			return stm.executeQuery().next(); //execute the statement and return boolean
			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	
	/**
	 * Method is to insert a question data into database 
	 * @param qt is question contains data to insert
	 * @return true if question is inserted successfully other false
	 */
	public boolean insertQuestion(Question qt){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("insert into \"tb_questions\"(description, video_id, answer_id, create_date, "
						+ "status)values(?,?,?,?,?)")){
						
			if(checkQuestion(qt.getDescription().trim()))
				return false;
			
			stm.setString(1, qt.getDescription().trim());
			stm.setLong(2, qt.getVideoID());
			stm.setLong(3, qt.getAnswer_id());
			stm.setDate(4, wwd.getSqlDate(new Date()));
			stm.setInt(5, qt.getStatus());			
			
			if(stm.executeUpdate() == 0) //execute the statement and compare
				return false;
						
			return true;
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
		
	}
	
	public boolean updateQuestion(Question qt){
		
		try(Connection con = new DBConnection().getConnection();
				PreparedStatement stm = con.prepareStatement("update tb_questions set description=?, video_id=?, answer_id=?,"
						+ "status=? where id=?")){
			
			stm.setString(1, qt.getDescription());
			stm.setLong(2, qt.getVideoID());
			stm.setLong(3, qt.getAnswer_id());
			stm.setInt(4, qt.getStatus());			
			stm.setLong(6, qt.getId());
			
			if(stm.executeUpdate() == 0)
				return false;
			
			return true;
			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public static void main(String[] args) {
		
		Question qst = new Question();
		QuestionDAO qdo = new QuestionDAO();
		
		qst.setDescription("what is YOU?");
		qst.setVideoID(3);
		qst.setAnswer_id(1);
		qst.setAnswer_id(1);		
		
		System.out.println(qdo.insertQuestion(qst));
		
	}
}
