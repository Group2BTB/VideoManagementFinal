package utilities;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import model.dto.Category;
import model.dto.Question;
import model.dto.Video;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

public class WorkWithJson {

	/**
	 * Method is to convert from Resultset to JsonArray
	 * @param resultSet result to convert to JsonArray
	 * @return as JsonArray
	 * @throws Exception
	 */
	
	public static JsonArray convertResultSetIntoJSON(ResultSet resultSet) throws Exception {
		JsonArray jsonArray = new JsonArray();
		
		Gson gs = new Gson();
		
		while (resultSet.next()) {
			int total_rows = resultSet.getMetaData().getColumnCount();
			JsonObject obj = new JsonObject();
			for (int i = 0; i < total_rows; i++) {
				String columnName = resultSet.getMetaData().getColumnLabel(i + 1).toLowerCase();
				
				JsonElement columnValue = gs.toJsonTree(resultSet.getObject(i + 1));
				
				// if value in DB is null, then we set it to default value
				if (columnValue == null) {
					columnValue = gs.toJsonTree("null");
				}
				/*
				 * Next if block is a hack. In case when in db we have values
				 * like price and price1 there's a bug in jdbc - both this names
				 * are getting stored as price in ResulSet. Therefore when we
				 * store second column value, we overwrite original value of
				 * price. To avoid that, i simply add 1 to be consistent with
				 * DB.
				 */
				if (obj.has(columnName)) {
					columnName += "1";
				}
				obj.add(columnName, columnValue);		
				
				
			}
			jsonArray.add(obj);
		}
		return jsonArray;
	}
	
	public static String testCat(ResultSet rs){
		
		try
		{						
			HashMap<String, ArrayList<ArrayList<Object>>> obj = new HashMap<String, ArrayList<ArrayList<Object>>>();
			
			
			String sup = "";
			String temp = "";
			int i = 0;
					
			ArrayList<ArrayList<Object>> suparr = new ArrayList<ArrayList<Object>>();
						
			while(rs.next()){
					
				sup = rs.getString("super").trim();
				System.out.println(sup);
				
				if(!(sup.equalsIgnoreCase(temp.trim())) && i>0){					
					
					ArrayList<ArrayList<Object>> suptmp = new ArrayList<ArrayList<Object>>(suparr);					
					
					obj.put(temp, suptmp);					
					temp = sup;
					
					suparr = new ArrayList<ArrayList<Object>>();
					
					ArrayList<Object> sub = new ArrayList<Object>();					
					sub.add(rs.getInt("id"));
					sub.add(rs.getString("name"));
					sub.add(rs.getString("description"));
					sub.add(rs.getString("logo"));					
					sub.add(rs.getInt("status"));
					sub.add(rs.getLong("user_id"));
					sub.add(rs.getDate("create_date"));
					sub.add(rs.getDate("modifier_date"));
					
					suparr.add(sub);
													
				}
				
				else{
										
					ArrayList<Object> sub = new ArrayList<Object>();					
					
					temp = sup;
					i++;
					sub.add(rs.getInt("id"));
					sub.add(rs.getString("name"));
					sub.add(rs.getString("description"));
					sub.add(rs.getString("logo"));					
					sub.add(rs.getInt("status"));
					sub.add(rs.getLong("user_id"));
					sub.add(rs.getDate("create_date"));
					sub.add(rs.getDate("modifier_date"));
					
					suparr.add(sub);					
					
					if(rs.isLast())
						obj.put(temp, suparr);
						
					
				}									
			}		
			
			return new Gson().toJson(obj);
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
	
	public static String convertSubJson(ResultSet rs){
		
		try
		{						
			HashMap<String, ArrayList<Category>> obj = new HashMap<String, ArrayList<Category>>(); 
			
			
			String sup = "";
			String temp = "";
			int i = 0;
					
			ArrayList<Category> suparr = new ArrayList<Category>();
						
			while(rs.next()){
					
				sup = rs.getString("super").trim();
				//System.out.println(sup);
				
				if(!(sup.equalsIgnoreCase(temp.trim())) && i>0){					
					
					ArrayList<Category> suptmp = new ArrayList<Category>(suparr);					
					
					obj.put(temp, suptmp);					
					temp = sup;
					
					suparr = new ArrayList<Category>();
					
					Category ca = new Category();
					ca.setId(rs.getInt("id"));
					ca.setName(rs.getString("name"));
					ca.setDescription(rs.getString("description"));
					ca.setLogo(rs.getString("logo"));
					ca.setStatus(rs.getInt("status"));
					ca.setUserID(rs.getLong("user_id"));
					ca.setCreate_date(rs.getDate("create_date"));
					ca.setModifier_date(rs.getDate("modifier_date"));			
					
					//System.out.println(ca.getName());
					suparr.add(ca);
					
					if(rs.isLast())
						obj.put(temp, suparr);
													
				}
				
				else{
										
					Category ca = new Category();					
					
					temp = sup;
					i++;
					ca.setId(rs.getInt("id"));
					ca.setName(rs.getString("name"));
					ca.setDescription(rs.getString("description"));
					ca.setLogo(rs.getString("logo"));
					ca.setStatus(rs.getInt("status"));
					ca.setUserID(rs.getLong("user_id"));
					ca.setCreate_date(rs.getDate("create_date"));
					ca.setModifier_date(rs.getDate("modifier_date"));			
					
					//System.out.println(ca.getName() + " me!");
					suparr.add(ca);					
					
					if(rs.isLast())
						obj.put(temp, suparr);
			
				}									
			}		
			
			return new Gson().toJson(obj);
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
	
	public static String convertQandA(ResultSet rs){
		
		try
		{						
			HashMap<String, ArrayList<Question>> obj = new HashMap<String, ArrayList<Question>>(); 
			
			
			String sup = "";
			String temp = "";
			int i = 0;
					
			ArrayList<Question> suparr = new ArrayList<Question>();
						
			while(rs.next()){
					
				sup = rs.getString("question").trim();
				System.out.println(sup);
				
				if(!(sup.equalsIgnoreCase(temp.trim())) && i>0){					
					
					ArrayList<Question> suptmp = new ArrayList<Question>(suparr);					
					
					obj.put(temp, suptmp);					
					temp = sup;
					
					suparr = new ArrayList<Question>();
					
					Question qust = new Question();
					qust.setDescription(rs.getString("answer"));
					qust.setVideoID(rs.getLong("video_id"));
					qust.setAnswer_id(rs.getLong("answer_id"));
					//qust.setAnswer(rs.getString("answer"));							
					
					//System.out.println(ca.getName());
					suparr.add(qust);
					
					if(rs.isLast())
						obj.put(temp, suparr);
													
				}
				
				else{
										
					Question qust = new Question();					
					
					temp = sup;
					i++;
					qust.setDescription(rs.getString("answer"));
					qust.setVideoID(rs.getLong("video_id"));
					qust.setAnswer_id(rs.getLong("answer_id"));
//					qust.setAnswer(rs.getString("answer"));				
					
					//System.out.println(ca.getName() + " me!");
					suparr.add(qust);					
					
					if(rs.isLast())
						obj.put(temp, suparr);				
					
				}									
			}		
			
			return new Gson().toJson(obj);
			
		}catch(Exception ex){
			
			ex.printStackTrace();
			return null;
		}
	}
	
//	public static String convertRecommendVideo(ResultSet rs){
//		
//	}
	
	public static void main(String[] args) {
		
		
	}
}
