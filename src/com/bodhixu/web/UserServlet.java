package com.bodhixu.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 用户的控制层
 * 
 * @author 丰哥
 * 2019年9月25日
 *
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		String action = request.getParameter("action");
		switch (action) {
		case "registUi":
			request.getRequestDispatcher("/jsp/regist.jsp").forward(request, response);
			break;
		case "regist":
			break;
		case "usernameExit": //判断用户名是否可用
			String username = request.getParameter("username");
			//假数据，假设abc已有了
			if ("abc".equals(username)) { //用户名占用
				response.getWriter().write("not avilate");
			} else {
				response.getWriter().write("avilate");
			}
			break;
		}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
