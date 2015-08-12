package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

import utilities.DBConnection;
import utilities.WorkWithDate;
import utilities.WorkWithJson;
import model.dto.Answer;

public class AnswerDAO {
	ResultSet rs = null;
	WorkWithJson wwj = new WorkWithJson();
	WorkWithDate wwd = new WorkWithDate();
	public String getAnswerByQuestion(int id){	
		try(Connection con = new DBConnection().getConnection();
				Statement stm = con.createStatement()){
			
			rs = stm.executeQuery("select * from tb_answer where question_id="+id+";"); //execute the statement and assign to Resultset object
			
			return WorkWithJson.convertResultSetIntoJSON(rs).toString();
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
	public boolean insertAnswer(Answer an){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("insert into tb_answer(description, question_id,status) values(?,?,?)");){
									
			/*To set data to preparedStatement from video's data*/
			stm.setString(1, an.getDescription());
			stm.setLong(2, an.getQuestion_id());
			stm.setInt(3, an.getStatus());
			
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public boolean updateAnswer(Answer an){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_answer set description=?, question_id=?"
						+ " , status=? where answer_id=?")){			
			
			/*To set data to preparedStatement from video's data*/
			stm.setString(1, an.getDescription());
			stm.setLong(2, an.getQuestion_id());
			stm.setInt(3, an.getStatus());
			stm.setLong(4, an.getId());
						
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
				PreparedStatement stm = con.prepareStatement("update tb_answer set status = 1-status where answer_id=?")){
			
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
