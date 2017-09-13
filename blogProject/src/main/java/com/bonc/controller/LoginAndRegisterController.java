package com.bonc.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bonc.entity.BlogUser;
import com.bonc.jdbc.LoginAndRegisterJDBC;

public class LoginAndRegisterController extends HttpServlet {

	/**
	 * 
	 */
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 
		String userName = req.getParameter("userName");
		String userPW = req.getParameter("userPW");
		BlogUser bu = new BlogUser();
		bu.setUserName(userName);
		bu.setUserPW(userPW);
		try {
			if (LoginAndRegisterJDBC.isExist(bu)) {
				PrintWriter pw = resp.getWriter();
				StringBuilder message = new StringBuilder();
				message.append("{\"");
				message.append("login\":");
				message.append(LoginAndRegisterJDBC.isExist(bu));
				message.append("}");
				pw.println(message.toString());
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
