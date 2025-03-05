package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.userDAO;
import com.db.DBConnect;
import com.entity.user;

@SuppressWarnings("serial")
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("login beigns...!!");

		String em = request.getParameter("email");
		String ps = request.getParameter("password");


		userDAO dao = new userDAO(DBConnect.getConnection());
		user user = dao.getLogin(em, ps);

		if (user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("user-ob", user);
			response.sendRedirect("welcomPage.jsp");
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("error-msg", "Registration UnSuccessfull...! EmailID/Password Invalid");
			response.sendRedirect("login.jsp");
		}

		System.out.println("login servlet form initiated");

	}

}
