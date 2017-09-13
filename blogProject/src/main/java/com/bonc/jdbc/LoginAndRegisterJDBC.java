package com.bonc.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.h2.util.StringUtils;

import com.bonc.common.CST;
import com.bonc.entity.BlogUser;

public class LoginAndRegisterJDBC {

	public static boolean isExist(BlogUser bu) throws ClassNotFoundException {
		Connection conn = null;
		Statement stmt = null;
		PreparedStatement ptmt = null;
		ResultSet rs = null;
		
		// 1.裝載驅動程序
		Class.forName(CST.JDBC_DRIVER);
		// 2.建立數據庫連接
		try {
			conn = DriverManager.getConnection(CST.DB_URL+"&useCursorFetch=true", CST.USER, CST.PASSWORD);
			// 3.執行SQL語句
			ptmt = conn.prepareStatement("select t.USER_NAME_ num from user t");
			ptmt.setFetchSize(1);
			rs = ptmt.executeQuery();
			while (rs.next()) {
				return true;
			}
			return false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (conn!=null){
					conn.close();
				}
				if (stmt!=null){
					stmt.close();
				}
				if (ptmt!=null) {
					ptmt.close();
				}
				if (rs!=null) {
					rs.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return true;
	}

}
