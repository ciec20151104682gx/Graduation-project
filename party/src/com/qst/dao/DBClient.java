package com.qst.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * 有关数据库底层基本操作，如连接数据库等，可以写成一个专用的类*/
public class DBClient {
	public static String DB_URL = "jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf-8";
	public static String DB_USER = "root";
	public static String DB_PASSWORD = "123456";
	
	/*获取到数据库的连接，用于其他代码调用*/
	public static Connection getConnection(){
		try {
			/*需要将包含com.mysql.jdbc.Driver这个类的jar包放到本Web应用的classpath底下
			 * 对于Web应用而言，当它被部署之后，WEB-INF/lib文件夹是classpath的一部分，应将第三方的jar包放在WEB-INF/lib之下
			 * */
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
			return conn;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return null;
	}
}
