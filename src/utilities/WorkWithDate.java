package utilities;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import model.dao.UserDAO;

public class WorkWithDate {

	SimpleDateFormat df = new SimpleDateFormat("dd-MM-yyyy");
	/**
	 * Method is to convert form util.Date to sql.Date
	 * @param date is util.Date to convert
	 * @return sql.Date
	 */
	
	public java.sql.Date getSqlDate(Date date){
		
		return new java.sql.Date(date.getTime()); //convert from util.date to sql.date and return the object sql.Date	
		
	}
	
	/**
	 * Note: In order to parse string to date, the string must be in the sample format of SimpleDateFormat
	 * Method is to convert from string to Date object
	 * @param d is string date to convert to date object
	 * @return as Date object
	 */
	
	public Date getDate(String d){
		//System.out.println(new UserDAO().df.format(new UserDAO().df.parse("13-15-2014"))); // to convert and format from string to date
		try {
			return df.parse(d);
			
		} catch (ParseException e) {

			e.printStackTrace();
			return null;			
		}
	}
}
