/*
 * @Author Vinayak Deshpande
 * @Date 10-Oct-2012
 *  * 
 */
package com.webapp.org.util.condatabase;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.apache.log4j.Logger;

import static com.webapp.org.util.condatabase.DBDetails.*;
/*
 * DBSingleton class is a utility class whole and sole
 * purpose is to using a single connection object throughout
 * the project.  
 * 
 */
public class DBSingleton
{
	private static DBSingleton sobj = new DBSingleton();
	private Connection con;
    private static Logger logger=Logger.getLogger(DBSingleton.class);  

	/*Declared Constructor private
	 * 	we dont want anyone to create object for the class
	 */
    //System.out.println("hi....");
	private DBSingleton()
	{
		try 
		{
			Class.forName(DRIVER);
			con=DriverManager.getConnection(URL,USER,PSSWD);
            logger.info("------------------------------");
            logger.info("---Connection is Activated----");
            logger.info("------------------------------");
            System.out.println("Connectioin is activated");
		} 
		catch (SQLException e) 
		{
			System.out.println("Check the connection details");
		}
		catch (ClassNotFoundException e) 
		{
			System.out.println("Check the jar file");
		}	
	}

	/*getInstance function provides the 
	 * object of this class and connection object 
	 * can be accessed
	 */
	public static DBSingleton getInstance()
	{
		return sobj;
	}

	/*@return Declared public so that can be accessed by anyone.
	 * getConnection method of DBSingleton class provides
	 * the connection object to perform the database transactions
	 */
	public Connection getConnection()
	{
		return con;
	}
	
}
