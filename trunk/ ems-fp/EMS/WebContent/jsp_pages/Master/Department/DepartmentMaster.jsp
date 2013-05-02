<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ResourceBundle"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	ResourceBundle resource1 = ResourceBundle.getBundle("resources.messageBundle.MessagesBundle_hi_IN");
%>
<!DOCTYPE>
<html>
<head>
<base href="<%=basePath%>">
<title><%= resource1.getString("employee_management") %>....<%= resource1.getString("department_title") %></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="css/style.css" />

<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/ChunkFive_400.font.js" type="text/javascript"></script>

<script src="js/mr_mangal.js"></script>
<script src="js/Parser_mangal.js"></script>

<script>
				Cufon.replace('h1',{ textShadow: '1px 1px #fff'});
				Cufon.replace('h2',{ textShadow: '1px 1px #fff'});
				Cufon.replace('h3',{ textShadow: '1px 1px #000'});
				Cufon.replace('.back');
</script>
 <script>
 function disable_both()//used in sale-purchase invoice and sale-purchase_part_payment
	{
	 //document.getElementById("add_button").style.display="none";
	 document.getElementById("update_button").style.display="none";
	 document.getElementById("delete_button").style.display="none";
	// document.getElementById("Sub_button").style.display="none";
	}
function Enable_add()
 {
document.getElementById("add_button").style.display="Block";
document.getElementById("update_button").style.display="none";
 document.getElementById("delete_button").style.display="none"; 
 document.getElementById("btn_add").disabled = true;
 document.getElementById("btn_update").disabled = false;
 document.getElementById("btn_delete").disabled = false;

 }
 function Enable_update()
 {
 document.getElementById("add_button").style.display="none";
  document.getElementById("update_button").style.display="Block";
 document.getElementById("delete_button").style.display="none";   
 
 document.getElementById("btn_add").disabled = false;
 document.getElementById("btn_update").disabled = true;
 document.getElementById("btn_delete").disabled = false;
 
 }
 function Enable_delete()
 {
 document.getElementById("add_button").style.display="none";
 document.getElementById("update_button").style.display="none";
 document.getElementById("delete_button").style.display="Block";
 
 document.getElementById("btn_add").disabled = false;
 document.getElementById("btn_update").disabled = false;
 document.getElementById("btn_delete").disabled = true;
 }
 </script>

</head>
<body onload="disable_both();">
    		
			<%@ include  file="/jsp_pages/HeaderwithMenu.jsp" %>
			<div id="form_wrapper" class="form_wrapper1">	
					<form class="login1 active1">					
					<div align="center">
						<table>
							<tr>
								<td> 
									<div align="center"> <input type="button" id="btn_add" value="<%= resource.getString("add_button") %>" onclick="Enable_add();"/></div>
								</td>
								<td> 
									<div align="center"> <input type="button" id="btn_update" value="<%= resource.getString("update_button") %>" onclick="Enable_update();" /></div>
								</td>
								<td> 
									<div align="center"> <input type="button" id="btn_delete" value="<%= resource.getString("delete_button") %>" onclick="Enable_delete();" /></div>
								</td>
							</tr>
						</table>
					</div>
					
					<table id="add_button">
					<tr>
								<td>In Add</td>
							</tr>
					<tr>
							  <td>
							  	<label><%= resource1.getString("serial_no") %> : </label>
							  </td>
							  <td >
							      <input type="text" onKeyPress="return change(this,event);" />
				              </td>
						 </tr>
						 <tr>
								<td>
									<label><%= resource1.getString("department_name") %> :	</label>
								</td>
								<td>
								  <input type="text" onKeyPress="return change(this,event);" />
							    </td>
						 </tr>
						 <tr>
								<td>
									<label><%= resource1.getString("remark") %> : </label>
								</td>
								<td>
								  <input type="text" onKeyPress="return change(this,event);" />
							    </td>
						 </tr>
						 <tr>
								<td colspan="2">
								 <div align="center"> <input type="submit" value="<%= resource.getString("save_button") %>" /></div>
								</td>
						 </tr>			
		 			</table>
					
					
					
						<table id="update_button">
							<tr>
								<td>In Update</td>
							</tr>
							<tr>
							  <td>
							  	<label><%= resource1.getString("serial_no") %> : </label>
							  </td>
							  <td >
							      <input type="text" onKeyPress="return change(this,event);" />
				              </td>
						 </tr>
						 <tr>
								<td>
									<label><%= resource1.getString("department_name") %> :	</label>
								</td>
								<td>
								  <input type="text" onKeyPress="return change(this,event);" />
							    </td>
						 </tr>
						 <tr>
								<td>
									<label><%= resource1.getString("remark") %> : </label>
								</td>
								<td>
								  <input type="text" onKeyPress="return change(this,event);" />
							    </td>
						 </tr>
						 <tr>
								<td colspan="2">
								 <div align="center"> <input type="submit" value="<%= resource.getString("save_button") %>" /></div>
								</td>
						 </tr>			
						</table>
					
					
						<table  id="delete_button">
							<tr>
								<td>In Delete</td>
							</tr>
							<tr>
							  <td>
							  	<label><%= resource1.getString("serial_no") %> : </label>
							  </td>
							  <td >
							      <input type="text" onKeyPress="return change(this,event);" />
				              </td>
						 </tr>
						 <tr>
								<td>
									<label><%= resource1.getString("department_name") %> :	</label>
								</td>
								<td>
								  <input type="text" onKeyPress="return change(this,event);" />
							    </td>
						 </tr>
						 <tr>
								<td>
									<label><%= resource1.getString("remark") %> : </label>
								</td>
								<td>
								  <input type="text" onKeyPress="return change(this,event);" />
							    </td>
						 </tr>
						 <tr>
								<td colspan="2">
								 <div align="center"> <input type="submit" value="<%= resource.getString("save_button") %>" /></div>
								</td>
						 </tr>			
						</table>
					
					
					
			  </form>
		
		  </div>
			
			
			
			</div>			
		</div>
		</div>
		</div>
			
		
		

    </body>
</html>