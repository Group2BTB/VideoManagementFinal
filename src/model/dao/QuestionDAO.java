package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

import model.dto.Answer;
import model.dto.Question;
import model.dto.Video;
import utilities.DBConnection;
import utilities.WorkWithDate;
import utilities.WorkWithJson;

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
				PreparedStatement stm = con.prepareStatement("insert into \"tb_questions\"(description, video_id, create_date, "
						+ "status, correct)values(?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS)){
								
			stm.setString(1, qt.getDescription().trim());


			stm.setLong(2, qt.getVideoID());			
			stm.setDate(3, wwd.getSqlDate(new Date()));
			stm.setInt(4, qt.getStatus());
			stm.setInt(5, qt.getCorrect());
			if(stm.executeUpdate() == 0) //execute the statement and compare
				return false;
			
			long question_id=0;
			rs = stm.getGeneratedKeys();
			if (rs.next()){
				question_id=rs.getInt(1);
			}
			for(int i=0;i<3;i++){
				if(i==0)
					new AnswerDAO().insertAnswer(new Answer(0, null, question_id, null, 1));
				else
					new AnswerDAO().insertAnswer(new Answer(0, null, question_id, null, 0));
			}
			return true;
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
		
	}
	
	public String getAllQuestion(){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				Statement stm= con.createStatement();){
			
			rs = stm.executeQuery("select * from \"selectAllQuestion\""); //execute the statement and assign to Resultset object
			
			return WorkWithJson.convertResultSetIntoJSON(rs).toString();			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
	public String getAllQuestionCom(){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				Statement stm= con.createStatement();){
			
			rs = stm.executeQuery("select * from tb_questions"); //execute the statement and assign to Resultset object
			
			return WorkWithJson.convertResultSetIntoJSON(rs).toString();			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
	public Question getQuestion(long id){
		
		try(Connection con = new DBConnection().getConnection();
				PreparedStatement stm = con.prepareStatement("select * from tb_questions where question_id=?");){
						
			stm.setLong(1, id);
			
			rs = stm.executeQuery();
			
			if(rs.next()){
				
				Question v = new Question();
				
				v.setId(id);
				v.setDescription(rs.getString("description"));
				v.setVideoID(rs.getLong("video_id"));			
				v.setCreate_date(rs.getDate("create_date"));
				v.setStatus(rs.getInt("status"));
				
				return v;
			}
			
			return null;
			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
	
	public boolean updateQuestion(Question qt){
		try(Connection con = new DBConnection().getConnection();
				PreparedStatement stm = con.prepareStatement("update tb_questions set description=?, video_id=?,"
						+ "status=? where question_id=?")){
			
			stm.setString(1, qt.getDescription());
			stm.setLong(2, qt.getVideoID());
			
			stm.setInt(3, qt.getStatus());			
			stm.setLong(4, qt.getId());
			
			if(stm.executeUpdate() == 0)
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
				PreparedStatement stm = con.prepareStatement("update tb_questions set status = 1-status where question_id=?")){
			
			stm.setLong(1, id);
			
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}	
	}
	
	public String getQandA(long videoId){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection();
				PreparedStatement stm = con.prepareStatement("select * from \"vQuestion\" where video_id=?");){
						
			stm.setLong(1, videoId);
			
			rs = stm.executeQuery();			
			
			return WorkWithJson.convertQandA(rs);
			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
	
	public static void main(String[] args) {
		
		Question qst = new Question();
		QuestionDAO qdo = new QuestionDAO();
		
		System.out.println(qdo.getQandA(17));
		System.exit(0);
		
		qdo.getQuestion(1);
		System.out.println(qdo.getAllQuestion());
		System.exit(0);
		qst.setDescription("what is YOU?");
		qst.setVideoID(7);
					
		
		//System.out.println(qdo.insertQuestion(qst));
		
		
		System.out.println(qdo.getAllQuestion());
		
	}
}
