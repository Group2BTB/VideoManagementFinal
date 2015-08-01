package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;

import utilities.DBConnection;
import model.dto.User;

/*
 * To work with user's data*/

public class UserDAO {
	
	SimpleDateFormat df = new SimpleDateFormat("dd-MM-yyyy");
	
	public boolean insertUser(User usr){
		
		try(Connection con = new DBConnection().getConnection();
				PreparedStatement pstm = con.prepareStatement("select * from tb_users where username=? or email=?");
						PreparedStatement stmInsert = con.prepareStatement("f")){
			
			pstm.setString(1, usr.getName());
			pstm.setString(2, usr.getEmail());
						
			ResultSet rs = pstm.executeQuery();
			
			if(rs.next())
				return false;
			return false;
			
		}catch(Exception ex){
			ex.printStackTrace();
			return false;
		}		
	}


	/**
	 * Method is to get data from user 
	 * @param e_and_u
	 * @param passwd
	 * @return as user object
	 */
	
	public User getUser(String e_and_u, String passwd){
				
		User user = null;
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement pstm = con.prepareStatement("select * from tb_users where (username=? or email=?) and passwd=?");){
						
			pstm.setString(1, e_and_u); //set first value to statement
			pstm.setString(2,e_and_u); //set second value to statement
			pstm.setString(3, passwd); //set third value to statement
			
			ResultSet rs = pstm.executeQuery(); //create resultset to store user's data and it automatically closed when connection is closed
			
			if(rs.next()){
				
				/*To set data to user object field from result*/
				user = new User(); //initialize new user object
				user.setId(rs.getLong("user_id"));
				user.setName(rs.getString("username"));
				user.setPasswd(rs.getString("passwd"));
				user.setEmail(rs.getString("email"));
				user.setFullName(rs.getString("fullname"));
				user.setGender(rs.getString("gender").charAt(0));
				user.setParentID(rs.getLong("parent_id"));
				user.setRole(rs.getString("role"));
				user.setStatus(rs.getInt("status"));
				user.setApproved(rs.getInt("approved"));
				user.setCreate_date(rs.getDate("create_date")); //defalut format yyyy-MM-dd
								
				user.setModifier_date(rs.getDate("modifier_date")); //defalut format yyyy-MM-dd
				user.setDepartID(rs.getInt("department_id"));
				user.setPhone(rs.getString("phone"));
				user.setProfile(rs.getString("profile"));
				user.setDOB(rs.getDate("DOB"));		
				
				return user;							
			}						
			return user;			
			
		}catch(Exception ex){
			ex.printStackTrace();
			return user;
		}		
	}
	
	public static void main(String[] args) {
		
		User usr = new UserDAO().getUser("ee", "11");
		if(usr != null)
			System.out.print(usr.getCreate_date());
		else
			System.out.println(usr);
	}
}
