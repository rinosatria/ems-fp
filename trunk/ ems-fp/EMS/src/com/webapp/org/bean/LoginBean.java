package com.webapp.org.bean;

public class LoginBean
{
		private String userName;
		private String userPassword;
		/**
		 * @return the userName
		 */
		public String getUserName() 
		{
			return userName;
		}
		/**
		 * @param userName the userName to set
		 */
		public void setUserName(String userName) 
		{
			this.userName = userName;
		}
		/**
		 * @return the userPassword
		 */
		public String getUserPassword() 
		{
			return userPassword;
		}
		/**
		 * @param userPassword the userPassword to set
		 */
		public void setUserPassword(String userPassword) 
		{
			this.userPassword = userPassword;
		}
		
	    @Override
	    public String toString() 
	    {
	    	return super.toString();
	    } 
 
}
