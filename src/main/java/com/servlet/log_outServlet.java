package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/log_outServlet")
public class log_outServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		session.removeAttribute("user-ob");
		
		
		@SuppressWarnings("unused")
		HttpSession session2=request.getSession();
		session.setAttribute("logout-msg", "Logout Successfully...!!");
		
		response.sendRedirect("login.jsp");
	}
}
