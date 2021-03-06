package utilities;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

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
	 * Method is to format date to a specific string format
	 * @param date is Date object to format
	 * @return as String represents date
	 */
	public String getFormatDate(Date date){
		
		return df.format(date);
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
			d = d.replaceAll("/+", " "); //repalce one or more + with a space
			d=d.replaceAll("-+", " "); //replace one or more - with space  
			d=d.replaceAll("\\s+", "-"); //repalce one or more space with - sign
			return df.parse(d);
			
		} catch (ParseException e) {

			e.printStackTrace();
			return null;			
		}
	}
	
	/**
	 * Method is to format given date to a specific string date format
	 * @param d is Date object to format
	 * @return as string date format
	 */
	public String formatDate(Date d){
		
		return df.format(d);
	}
}
