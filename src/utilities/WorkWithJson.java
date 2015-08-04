package utilities;

import java.sql.ResultSet;

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
}
