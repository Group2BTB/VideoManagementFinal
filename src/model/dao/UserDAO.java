package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import utilities.DBConnection;
import model.dto.User;

/*
 * To work with user's data*/

public class UserDAO {
	
	
	
	SimpleDateFormat df = new SimpleDateFormat("dd-MM-yyyy");
	
	public java.sql.Date getSqlDate(Date date){
		
		return new java.sql.Date(date.getTime()); //convert from util.date to sql.date and return the object sql.Date	
		
	}

	/**
	 * Method checks if user exists or not
	 * @param uname is name of user
	 * @param email is email of user
	 * @return true if user exists or false if user doesn't exist
	 */
	public boolean checkUser(String uname,String email){
		
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				PreparedStatement stm = con.prepareStatement("select * from tb_users where username=? or email=?");){
			
			/*To set data to user object field from result*/
			stm.setString(1, uname);
			stm.setString(2, email);
			
			return stm.executeQuery().next(); 
						
		}catch(Exception ex){
			ex.printStackTrace();
			return true;
		}
	}
	
	/**
	 * Method is to insert user's data to table department, university_id and parent_id can't be null  
	 * @param usr is user object
	 * @return true if user is inserted successfully or false if user can't be inserted
	 */
	public boolean insertUser(User usr){		
				
		try(Connection con = new DBConnection().getConnection(); //get connection to database
				//field DOB need double quotes on processing(manipulation)
						PreparedStatement stmInsert = con.prepareStatement("insert into tb_users(username"
								+ ",passwd,email,fullname,gender,parent_id,role,status,approved,department_id,phone,profile,\"DOB\",university_id) "
								+ " values(?,?,?,?,?,?,?,?,?,?,?,?,?,?);")){
			
			/*To set data to user object field from result*/
			stmInsert.setString(1, usr.getName());
			stmInsert.setString(2, usr.getPasswd());
			stmInsert.setString(3, usr.getEmail());
			stmInsert.setString(4, usr.getFullName());
			stmInsert.setString(5, usr.getGender());			
			stmInsert.setLong(6, usr.getParentID());
			stmInsert.setString(7, usr.getRole());
			stmInsert.setInt(8, usr.getStatus());
			stmInsert.setInt(9, usr.getApproved());
			stmInsert.setInt(10, usr.getDepartID());
			stmInsert.setString(11, usr.getPhone());
			stmInsert.setString(12, usr.getProfile());
			stmInsert.setInt(14, usr.getUniversity());
			java.sql.Date sdate = getSqlDate(usr.getDOB()); //convert from util.date to sql.date
			stmInsert.setDate(13, sdate);
			
			if(stmInsert.executeUpdate()==0)
				return false;
			
			return true;
			
			
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
				user.setGender(rs.getString("gender"));
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
				user.setUniversity(rs.getInt("university_id"));
				
				return user;							
			}						
			return user;			
			
		}catch(Exception ex){
			ex.printStackTrace();
			return user;
		}		
	}
	
	public boolean updateUser(User usr){
		
		try(Connection con = new DBConnection().getConnection();
				PreparedStatement stm = con.prepareStatement("update tb_users set username=?, passwd=?, email=?, fullname=?, gender=?"
						+ ", role=?, status=?, approved=?, modifier_date=?, department_id=?, phone=?, profile=?, \"DOB\"=?, university_id=? where user_id=?")){
			
			stm.setString(1, usr.getName());
			stm.setString(2, usr.getPasswd());
			stm.setString(3, usr.getEmail());
			stm.setString(4, usr.getFullName());
			stm.setString(5, usr.getGender());
			stm.setString(6, usr.getRole());
			stm.setInt(7, usr.getStatus());
			stm.setInt(8, usr.getApproved());			
			stm.setDate(9, getSqlDate(new Date()));
			stm.setInt(10, usr.getDepartID());
			stm.setString(11, usr.getPhone());
			stm.setString(12, usr.getProfile());
			stm.setDate(13, getSqlDate(usr.getDOB()));
			stm.setInt(14, usr.getUniversity());
			stm.setLong(15, usr.getId());
			
			if(stm.executeUpdate()==0)
				return false;
						
			return true;
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return false;
		}
	}
	
	public static void main(String[] args) {
		
		
		User uu = new UserDAO().getUser("heng66", "11");
		uu.setFullName("leang heng11");
		new UserDAO().updateUser(uu);
		System.out.println(uu.getParentID());
		System.exit(0);
		
		User user = new User();
		user.setName("heng66");
		user.setPasswd("11");
		user.setEmail("qq4");
		user.setGender("1");
		user.setStatus(0);
		user.setApproved(1);
		user.setParentID(17);
		user.setDepartID(7);
		user.setUniversity(4);
		
		if(new UserDAO().checkUser(user.getName(), user.getEmail()))
		{
			System.out.println("user already exists");
			return;
		}
			
		
		Calendar date = Calendar.getInstance();
		date.set(1990, 10, 20);
		user.setDOB(date.getTime());
		
		System.out.println(new UserDAO().insertUser(user));
	}
}
