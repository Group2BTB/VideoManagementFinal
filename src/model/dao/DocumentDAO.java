package model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import utilities.DBConnection;
import utilities.WorkWithDate;
import utilities.WorkWithJson;

public class DocumentDAO {
	ResultSet rs = null;
	WorkWithJson wwj = new WorkWithJson();
	WorkWithDate wwd = new WorkWithDate();
	
	public String getAllDocument(){
		
		try(Connection con = new DBConnection().getConnection();
				Statement stm = con.createStatement()){
			
			rs = stm.executeQuery("select * FROM tb_document"); //execute the statement and assign to Resultset object
			
			return WorkWithJson.convertResultSetIntoJSON(rs).toString();
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
}
