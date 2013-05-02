package com.webapp.org.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webapp.org.bean.LoginBean;
import com.webapp.org.service.LoginService;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController.do")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
    

	/**
	 * @UserName Password form 
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		RequestDispatcher rd = null;
		String userName = request.getParameter("user_name");
		String userPassword = request.getParameter("user_pass");
		
		try
		{
			userName = new String(userName.getBytes("8859_1"), "UTF-8");
			userPassword = new String(userPassword.getBytes("8859_1"), "UTF-8");
			// out.println(userPassword+userPassword+"get parameter <br>");
		}
		catch(java.io.UnsupportedEncodingException e)
		{
		    System.err.println(e);
			  //out.println(e);
		}
		
		
		if(userName.length() > 0 && userPassword.length() > 0)
		{
			LoginBean loginBean = new LoginBean();
			loginBean.setUserName(userName);
			loginBean.setUserPassword(userPassword);
			try 
			{
				@SuppressWarnings("unused")
				LoginBean lb = new LoginService().getLoginChecked(loginBean);
				rd = request.getRequestDispatcher("jsp_pages/HomePage.jsp");
			} 
			catch (SQLException e)
			{
				e.printStackTrace();
			}
		}
		
		else
		{
			rd = request.getRequestDispatcher("error.jsp"); //error comes to directly send to jsp page
		}
		
		rd.forward(request, response); //forward to RequestDispatcher
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
	}

}
