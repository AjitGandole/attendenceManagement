package com.db;
import java.sql.*;



// it a class that provides a connection with the database when it is called.

public class DBConnect {
private static Connection conn;
public static Connection getConnection()
{
	try {
		
		if(conn==null||conn.isClosed()) {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendencemanagement?createIfNotExists=true","root","root");
			System.out.println("Connection Successful with database");
			
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return conn;
	}
}
