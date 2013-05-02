package com.webapp.org.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.webapp.org.bean.LoginBean;
import com.webapp.org.util.condatabase.DBSingleton;

public class LoginDAO
{
	public LoginBean getverified(String uname,String upass) throws SQLException
	{
		ResultSet loginresult=null;
		Statement stmt=null;
		LoginBean ld=null;
		boolean result=false;
		Connection con=null;
		try {

			String querry="SELECT EMS_user_name FROM ems.users where EMS_user_name='"+uname+"' and EMS_password='"+upass+"'";

			//connection object accessed
			con = DBSingleton.getInstance().getConnection();
			


			//Statement to execute the Querry
			stmt=con.createStatement();
			loginresult=stmt.executeQuery(querry);

			
			//Check whether the value exists or not
			result=loginresult.next();
			

			//If the value exists means this is valid loginid and password

			if(result)
			{
				//user is valid bean object can be created to store the value
				ld=new LoginBean();
				ld.setUserName(loginresult.getString("userName")); 
				ld.setUserName(uname);

			}

			return ld;
		}
		finally
		{
			if(stmt!=null)
			{stmt.close();}
		}
	}

	public LoginBean getverified(LoginBean lb) 
	{
		return null;
	}
}
