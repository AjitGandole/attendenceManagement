package com.servlet;

import javax.servlet.ServletException; 
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.DAO.userDAO;
import com.db.DBConnect;
import com.entity.user;

@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("uname");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		System.out.println("post method executed");
		PrintWriter out=response.getWriter();
		
		user us=new user();
		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);
		System.out.println("user servlet executed");
		
		userDAO ud=new userDAO(DBConnect.getConnection());
		
		boolean f=ud.userRegister(us);
		
		if(f) {
		HttpSession	session=request.getSession();
		session.setAttribute("reg-msg", "Registration Successfull...");
		response.sendRedirect("register.jsp");
		
		}else {
			HttpSession	session=request.getSession();
			session.setAttribute("error-msg", "Something went wrong...");
			response.sendRedirect("register.jsp");
		}
		System.out.println("userDAO executed");
	}

}
