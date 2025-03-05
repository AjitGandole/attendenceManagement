package com.DAO;

import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.*;

public class userDAO {
private Connection conn;


public userDAO(Connection conn) {
	super();
	this.conn = conn;
}

public boolean userRegister(user us) {
	boolean f=false;
	try {
	String insert="INSERT INTO user(name,email,password) VALUES(?,?,?)";
	PreparedStatement ps= conn.prepareStatement(insert);
		ps.setString(1, us.getName());
		ps.setString(2, us.getEmail());
		ps.setString(3, us.getPassword());
		
		int rowsInserted= ps.executeUpdate();
		if(rowsInserted>0) {
			f=true;	
			System.out.println("rows are executed");
		}else {
			System.out.println("rows are not executed");
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return f;
}

public user getLogin(String em,String ps) {
	user us = null;
	try {
		
		String qu="select* from user where email=? and password=?";
		PreparedStatement pu=conn.prepareStatement(qu);
		pu.setString(1, em);
		pu.setString(2, ps);
		
		ResultSet rs=pu.executeQuery();
		
		if(rs.next()) {
			
			us=new user(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return us;
	}

public user delete(Long id ,String name ,String email) {
	return null;}

public user delete(String name ,String email) {
	

return null;
}
}
