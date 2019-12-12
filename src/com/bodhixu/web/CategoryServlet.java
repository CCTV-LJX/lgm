package com.bodhixu.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

/**
 * 商品分类的控制器
 * 
 * @author 丰哥
 * 2019年9月25日
 *
 */
@WebServlet("/CategoryServlet")
public class CategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String action = request.getParameter("action");
		switch (action) {
		case "queryAll":
//			String category = request.getParameter("category");
						
			//调用service->dao查询全部商品分类
			//假数据
			List<Category> categories = new ArrayList<Category>();
			for (int i = 0; i < 6; i++) {
				categories.add(new Category(100 + i, "c" + i));
			}
			
			//gson的使用
			Gson gson = new Gson();
			String json = gson.toJson(categories);
			
			
			response.getWriter().write(json);
			
			break;
		}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
