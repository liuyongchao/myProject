package NingboHaijinguangfuAPP;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.NamingException;

import org.omg.CORBA.Object;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.justep.baas.action.ActionContext;
import com.justep.baas.data.Row;
import com.justep.baas.data.Table;
import com.justep.baas.data.Transform;
import com.justep.baas.data.sql.SQLException;

public class NingboHaijinguangfuAPP_action {
	private static final String DATASOURCE_TAKEOUT = "nbhjgfdata";

	public static JSONObject NingboHaijinguangfuAPP(JSONObject params, ActionContext context) throws SQLException, NamingException, java.sql.SQLException {
		Connection conn = null;
		java.sql.Statement statement = null;
		ArrayList<Integer> list = new ArrayList<Integer>();
		ArrayList list1 = new ArrayList();
		String USER_UUID = params.getString("USER_UUID");
		conn = context.getConnection(DATASOURCE_TAKEOUT);
		JSONObject object = new JSONObject();
		try {		
			String sql = null;
			String mysql = null;
			sql = "select distinct t.sbid from hjmv_fddata t where t.userid = '" + USER_UUID + "'";
			statement = conn.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			Table table = Transform.resultSetToTable(rs, "", null);
			for (Row row : table.getRows()) {
				list.add(row.getInteger("sbid"));
			}
			for (int i = 0; i < list.size(); i++) {
				mysql = "select top 1 t.* from hjmv_fddata t where t.userid = '" + USER_UUID + "' and t.sbid = '" + list.get(i).toString() + "' and updatetime between DATEADD(hour,-6,GETDATE()) and GETDATE() order by t.updatetime desc";
				statement = conn.createStatement();
				ResultSet rs1 = statement.executeQuery(mysql);
				Table table1 = Transform.resultSetToTable(rs1, "", null);
				for (Row row : table1.getRows()) {
					list1.add(row.getDecimal("zyggl"));
				}
			}
			object.put("num", list1);
			return object;
		} catch (Exception e) {
			object.put("status", true);
			return object;
		}

	}
	//年度月度数据拼接查询
	public static JSONObject yearMonth(JSONObject params, ActionContext context) throws SQLException, NamingException, java.sql.SQLException {
		Connection conn = null;
		java.sql.Statement statement = null;
		String YEAR = params.getString("YEAR");
		String USER_UUID = params.getString("USER_UUID");
		conn = context.getConnection(DATASOURCE_TAKEOUT);
			String sql = null;
				sql = " select sum(t.fdl) as sum_fdl,substring(replace(CONVERT(varchar(100),t.updatetime, 23),'-',''),1,6) as updatetime   from hjmv_fddata t where substring(replace(CONVERT(varchar(100),t.updatetime, 23),'-',''),1,4) = '"+YEAR+"' and t.userid = "+USER_UUID+" group by substring(replace(CONVERT(varchar(100),t.updatetime, 23),'-',''),1,6)";		
				System.out.println(sql);
				statement = conn.createStatement();
				ResultSet rs = statement.executeQuery(sql);
				Table table = Transform.resultSetToTable(rs, "", null);
			return Transform.tableToJson(table);
		
		}
	//年度月度数据拼接查询
		public static JSONObject yearMonthDays(JSONObject params, ActionContext context) throws SQLException, NamingException, java.sql.SQLException {
			Connection conn = null;
			java.sql.Statement statement = null;
			String USER_UUID = params.getString("USER_UUID");
			String YEARMONTH = params.getString("YEARMONTH");			
			conn = context.getConnection(DATASOURCE_TAKEOUT);
				String sql = null;
					sql = "select sum(t.fdl) as sum_fdl,substring(replace(CONVERT(varchar(100),t.updatetime, 23),'-',''),1,8) as updatetime   from hjmv_fddata t where substring(replace(CONVERT(varchar(100),t.updatetime, 23),'-',''),1,6) = '"+YEARMONTH+"' and t.userid = "+USER_UUID+" group by substring(replace(CONVERT(varchar(100),t.updatetime, 23),'-',''),1,8)";
					System.out.println(sql);
					statement = conn.createStatement();
					ResultSet rs = statement.executeQuery(sql);
					Table table = Transform.resultSetToTable(rs, "", null);
				return Transform.tableToJson(table);
			
			}
}