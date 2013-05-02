/*
 * @Author Vinayak Deshpande
 * @Date 10-Oct-2012
 *  * 
 */
package com.webapp.org.util.condatabase;
/*
 * Interface to declare the drivers,url,usrname and password 
 * those reuired database connection
 *  in DB singleton class
 * 
 */
public interface DBDetails
{
	String DRIVER="com.mysql.jdbc.Driver";
	String URL="jdbc:mysql://localhost:3306/";
	String USER="root";
	String PSSWD="Neszzstfet@123";
}
