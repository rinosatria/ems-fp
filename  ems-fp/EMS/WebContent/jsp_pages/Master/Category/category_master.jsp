<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ResourceBundle"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	ResourceBundle resource1 = ResourceBundle.getBundle("resource.MessagesBundle_hi_IN");
%>
<!DOCTYPE>
<html>
<head>
<base href="<%=basePath%>">
<title><%= resource1.getString("employee_management") %>....<%= resource1.getString("title_category") %></title>
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
</head>
<body>
    
   		
			<%@ include  file="/menu.jsp" %>
			
		<div id="form_wrapper" class="form_wrapper1">	
		<form class="login active">
					
					<table width="397" height="116" align="center">
						<tr>
						  <td width="189"><label>
						    <div align="center"><%= resource1.getString("serial_no") %> :</div>
						  </label></td>
						  <td width="196">
						    <div align="center">
						      <input type="text" onKeyPress="return change(this,event);" />
				            </div></td>
						</tr>
						<tr>
							<td><label>
							  <div align="center"><%= resource1.getString("category_name") %> :</div>
							</label></td>
							<td><div align="center">
							  <input type="text" onKeyPress="return change(this,event);" />
						    </div></td>
						</tr>
						<tr>
							<td><label>
							  <div align="center"><%= resource1.getString("remark") %> :</div>
							</label></td>
							<td><div align="center">
							  <input type="text" onKeyPress="return change(this,event);" />
						    </div></td>
						</tr>
						<tr>
							<td colspan=2><div align="center">
							  <input type="submit" value="<%= resource.getString("save_button") %>">
							  </input>
						    </div></td>
						</tr>					
		  			</table>
					
					
					
					<div class="column">
							<div>
								
								
								
							</div>
							<div>
								
								
								
							</div>
							<div>
								
								
								
							</div>
							<div>
							
							</div>
						<div class="clear"></div>
		  </div>
					
					
			  </form>
		
		</div>
						
		</div>
		</div>
		</div>
			
		
		

    </body>
</html>