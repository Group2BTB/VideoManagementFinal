package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import utilities.DBConnection;
import utilities.WorkWithDate;
import utilities.WorkWithJson;
import model.dto.Comment;
public class CommentDAO {

	ResultSet rs = null;
	WorkWithJson wwj = new WorkWithJson();
	WorkWithDate wwd = new WorkWithDate();
	
	public String getAllComment(){
		
		try(Connection con = new DBConnection().getConnection();
				Statement stm = con.createStatement()){
			
			rs = stm.executeQuery("select * from \"selectAllComment\";"); //execute the statement and assign to Resultset object
			
			return WorkWithJson.convertResultSetIntoJSON(rs).toString();
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
	
	public boolean insertComment(Comment cm){
		
		/*Create try with resource*/
		String str = "insert into tb_comment(description,user_id, video_id) values(?,?,?)";
		
		if(cm.getParent_id() != 0)			
			str = "insert into tb_comment(description, user_id, video_id, parent_id) values(?,?,?,?)";
		
		
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement(str);){
					
			/*To set data to preparedStatement from video's data*/
			stm.setString(1, cm.getDescription());			
			stm.setLong(2, cm.getUserID());
			stm.setLong(3, cm.getVideoID());
			
			if(cm.getParent_id() != 0)
				stm.setLong(4, cm.getParent_id());
						
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public boolean updateComment(Comment cm){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_comment set description=?, parent_id=?,"
						+ "user_id=?, video_id=? where comment_id=?")){
			
			
			/*To set data to preparedStatement from video's data*/
			stm.setString(1, cm.getDescription());
			stm.setLong(2, cm.getParent_id());
			stm.setLong(3, cm.getUserID());
			stm.setLong(4, cm.getVideoID());
			stm.setLong(5, cm.getId());
						
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public boolean upLike(long id){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_comment set like = like+1 where comment_id=?")){
			
			stm.setLong(1, id);
			
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public boolean upUnlike(long id){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_comment set unlike = unlike+1 where comment_id=?")){
			
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
				PreparedStatement stm = con.prepareStatement("update tb_comment set view = 1  where comment_id=?")){
			
			stm.setLong(1, id);
			
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	public int countComment() {
		try(Connection con = new DBConnection().getConnection();
				Statement stm = con.createStatement()){
			
			rs = stm.executeQuery("select count(*) from tb_comment where view=0;"); //execute the statement and assign to Resultset object
			while(rs.next())
				return rs.getInt(1);
			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return 0;
		}
		return 0;
		
	}

	public boolean deletComment(int id) {
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("delete from tb_comment where comment_id=?")){
			
			stm.setLong(1, id);
			
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public String getCommentWithSub(long videoId){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection();
				PreparedStatement stm = con.prepareStatement("select * from \"vComment\" where video_id=?");){
						
			stm.setLong(1, videoId);
			
			rs = stm.executeQuery();			
			
			return WorkWithJson.convertCommentToJson(rs);
			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
	
	public static void main(String[] args) {
		
		
		System.out.println(new CommentDAO().getCommentWithSub(17));
	}

}
