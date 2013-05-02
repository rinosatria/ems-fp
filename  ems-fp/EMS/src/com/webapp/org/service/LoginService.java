package com.webapp.org.service;

import java.sql.SQLException;

import com.webapp.org.dao.LoginDAO;
import com.webapp.org.bean.LoginBean;

public class LoginService
{
   public LoginBean getLoginChecked(LoginBean lb) throws SQLException
   {
	   LoginBean lb1 = new LoginDAO().getverified(lb);
	   return lb1;   
   }
}
