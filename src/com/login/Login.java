package com.login;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
 
		if (validate(uname, pwd)) {
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("username", uname);
			response.sendRedirect("homepage.jsp");
		} else {
			response.sendRedirect("login.jsp");
		}

	}

	boolean validate(String uname, String password) {
		boolean loginValue = false;
		if (uname.equals("xsitlak") && password.equals("12345"))
			loginValue = true;
		else if (uname.equals("xbalvid") && password.equals("23456"))
			loginValue = true;

		return loginValue;
	}
}
