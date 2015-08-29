package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import com.google.gson.Gson;

import utilities.DBConnection;
import utilities.WorkWithDate;
import utilities.WorkWithJson;
import model.dto.User;

/*
 * To work with user's data*/

public class UserDAO {
	
	ResultSet rs = null;

	/**
	 * Method checks if user exists or not
	 * @param uname is name of user
	 * @param email is email of user
	 * @return true if user exists or false if user doesn't exist
	 */
	public boolean checkUser(String uname,String email){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("select * from tb_users where username=? or email=?");){
			
			/*To set data to user object field from result*/
			stm.setString(1, uname.trim());
			stm.setString(2, email.trim());
			
			return stm.executeQuery().next(); //execute the statement
						
		}catch(Exception ex){
			ex.printStackTrace();
			return false;
		}
	}
	
	/**
	 * Method is to insert user's data to table department, university_id and parent_id can't be null  
	 * @param usr is user object
	 * @return true if user is inserted successfully or false if user can't be inserted
	 */
	public boolean insertUser(User usr){		
		
		WorkWithDate d = new WorkWithDate();
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				//field DOB need double quotes on processing(manipulation)
						PreparedStatement stmInsert = con.prepareStatement("insert into tb_users(username"
								+ ",passwd,email,fullname,gender,role,status,approved,department_id,phone,profile,\"DOB\",university_id) "
								+ " values(?,?,?,?,?,?,?,?,?,?,?,?,?);")){
			
			/*To set data to preparedStatement from user's data*/
			stmInsert.setString(1, usr.getName().trim());
			stmInsert.setString(2, usr.getPasswd());
			stmInsert.setString(3, usr.getEmail().trim());
			stmInsert.setString(4, usr.getFullName());
			stmInsert.setString(5, usr.getGender());			
			stmInsert.setString(6, usr.getRole());
			stmInsert.setInt(7, usr.getStatus());
			stmInsert.setInt(8, usr.getApproved());
			stmInsert.setInt(9, usr.getDepartID());
			stmInsert.setString(10, usr.getPhone());
			stmInsert.setString(11, usr.getProfile());
			stmInsert.setInt(13, usr.getUniversity());
			
			java.sql.Date sdate = d.getSqlDate(usr.getDOB()); //convert from util.date to sql.date
			stmInsert.setDate(12, sdate);
			
			if(stmInsert.executeUpdate()==0) //execute the statement
				return false;
			
			return true;
			
			
		}catch(Exception ex){
			ex.printStackTrace();
			return false;
		}		
	}
	
	public boolean insertFBUser(User usr){
				
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				//field DOB need double quotes on processing(manipulation)
						PreparedStatement stmInsert = con.prepareStatement("insert into tb_users(username"
								+ ",passwd,email,fullname,gender,role) "
								+ " values(?,?,?,?,?,?);")){
			
			/*To set data to preparedStatement from user's data*/
			stmInsert.setString(1, usr.getName().trim());
			stmInsert.setString(2, usr.getPasswd());
			stmInsert.setString(3, usr.getEmail().trim());
			stmInsert.setString(4, usr.getFullName());
			stmInsert.setString(5, usr.getGender());			
			stmInsert.setString(6, "FBuser");			
			
			if(stmInsert.executeUpdate()==0) //execute the statement
				return false;
			
			return true;
			
			
		}catch(Exception ex){
			ex.printStackTrace();
			return false;
		}	
	}
	
	
	/**
	 * Method is to get all users from database
	 * @return as string represents string of Json object
	 */
	public String getAllUser(){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("select * from tb_users where approved=1");){
			
			rs = stm.executeQuery();		
			
			return WorkWithJson.convertResultSetIntoJSON(rs).toString();		
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
	
	
	/**
	 * Method is to get data from user 
	 * @param e_and_u is email or username of user
	 * @param passwd is password of user
	 * @return as user object
	 */
	
	public User getUser(String e_and_u, String passwd){
				
		User user = null;
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement pstm = con.prepareStatement("select * from tb_users where (username=? or email=?) and passwd=? and approved=1");){
						
			/*To set data to preparedStatement from user's data*/
			pstm.setString(1, e_and_u); //set first value to statement
			pstm.setString(2,e_and_u); //set second value to statement
			pstm.setString(3, passwd); //set third value to statement
			
			ResultSet rs = pstm.executeQuery(); //execute the statement
			
			if(rs.next()){
				
				/*To set data to user object field from result*/
				user = new User(); //initialize new user object
				user.setId(rs.getLong("user_id"));
				user.setName(rs.getString("username"));
				user.setPasswd(rs.getString("passwd"));
				user.setEmail(rs.getString("email"));
				user.setFullName(rs.getString("fullname"));
				user.setGender(rs.getString("gender"));				
				user.setRole(rs.getString("role"));
				user.setStatus(rs.getInt("status"));
				user.setApproved(rs.getInt("approved"));
				user.setRegister_date(rs.getDate("register_date")); //defalut format yyyy-MM-dd				
				user.setDepartID(rs.getInt("department_id"));
				user.setPhone(rs.getString("phone"));
				user.setProfile(rs.getString("profile"));
				user.setDOB(rs.getDate("DOB"));		
				user.setUniversity(rs.getInt("university_id"));
				
				return user;							
			}						
			return null;			
			
		}catch(Exception ex){
			ex.printStackTrace();
			return user;
		}		
	}
	
	/**
	 * Method is to update user's data
	 * @param usr user object contains data to update to
	 * @return false if fail to update user's data or true if user is updated successfully
	 */
	public boolean updateUser(User usr){
		
		WorkWithDate d = new WorkWithDate();
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_users set username=?, passwd=?, email=?, fullname=?, gender=?"
						+ ", role=?, status=?, approved=?, department_id=?, phone=?, profile=?, \"DOB\"=?, university_id=? where user_id=?")){
			
//			if(checkUser(usr.getName(), usr.getEmail()))
//				return false;
			
			/*To set data to preparedStatement from user's data*/
			stm.setString(1, usr.getName().trim());
			stm.setString(2, usr.getPasswd());
			stm.setString(3, usr.getEmail().trim());
			stm.setString(4, usr.getFullName());
			stm.setString(5, usr.getGender());
			stm.setString(6, usr.getRole());
			stm.setInt(7, usr.getStatus());
			stm.setInt(8, usr.getApproved());	
			
			stm.setInt(9, usr.getDepartID());
			stm.setString(10, usr.getPhone());
			stm.setString(11, usr.getProfile());
			stm.setDate(12, d.getSqlDate(usr.getDOB()));
			stm.setInt(13, usr.getUniversity());
			stm.setLong(14, usr.getId());
			
			if(stm.executeUpdate()==0) //execute the statement
				return false;
						
			return true;
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	/**
	 * Method is to deactivate a user in database by id
	 * @param id user's id to delete
	 * @return true if user is deleted successfully or false if fail to delete user
	 */
	public boolean DeactiveUser(long id){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_users set approved=0 where user_id=?");){			
			
			/*To set data to preparedStatement from id*/
			stm.setLong(1, id);
			
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	
	/**
	 * Method is to active a user in database by id
	 * @param id is id of user
	 * @return true if user is updated successfully otherwise return false
	 */	
	public boolean activeUser(long id){
		
		/*Create try with resource*/
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("update tb_users set approved=1 where user_id=?");){
			
			/*To set data to preparedStatement id*/
			stm.setLong(1, id);
			
			if(stm.executeUpdate()==0) //execute the statement and compare
				return false;
			
			return true;			
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public static void main(String[] args) throws ParseException {
	
		
		WorkWithDate wwd = new WorkWithDate();
		UserDAO ud = new UserDAO();
		
//		System.out.println(ud.DeactiveUser(17));
//		System.out.println(ud.activeUser(23));
//		System.exit(0);
//		
//		User uu = new UserDAO().getUser("heng22", "11");
//		uu.setName("heng222");
//		uu.setEmail("em");
//		uu.setUniversity(4);
//		System.out.println(ud.updateUser(uu));
		
//		System.exit(0);
		
//		User uu = ud.getUser("sss", "11");
//		uu.setFullName("Leang Heng");
//		uu.setProfile("LyLy");
//		
//		System.out.println(ud.updateUser(uu));
//			
//		System.exit(0);
		
		User user = new User();
		user.setName("heng66");
		user.setPasswd("11");
		user.setEmail("myemail");
		user.setFullName("ful2");
		user.setGender("1");
		user.setStatus(0);
		user.setApproved(1);
		
		user.setDepartID(45);
		user.setUniversity(4);	
		
		Calendar c = Calendar.getInstance();
		c.set(1990, 07, 07);
		
		user.setDOB(c.getTime());
		
		System.out.println(new UserDAO().insertFBUser(user));
	}
}
