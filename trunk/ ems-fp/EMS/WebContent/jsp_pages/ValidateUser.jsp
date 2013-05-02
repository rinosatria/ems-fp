<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@page import="java.util.ResourceBundle"%>

<%@page import="javax.servlet.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	ResourceBundle resource = ResourceBundle.getBundle("resources.messageBundle.MessagesBundle_hi_IN");
%>
<!DOCTYPE>
<html>
<head>
<base href="<%=basePath%>">
<title><%= resource.getString("employee_management") %></title>
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
	<div id = "main">
		<div id ="header-w">
			<div id ="header">
					<div id="company_name1">
						<label><%= resource.getString("employee_management") %> </label>
					</div>            							
			</div>			
		</div>
		<div id= " wrapper">
		       <div id ="navr">		        	
				     <div id = "main-content">
				         <div class="content">
							<div id="form_wrapper" class="form_wrapper">
								<form class="login active" method="get" action="LoginController.do">
									<label class="sign"><%= resource.getString("login") %></label>
									<div>
										<label><%= resource.getString("username") %> :</label>
											 <input	onkeypress="return change(this,event);" type="text" name="user_name" /> 
											 <span class="error">This is an error</span>
									</div>
									<div>
										<label><%= resource.getString("password") %> : </label> 
											<input	onkeypress="return change(this,event);" type="password" name ="user_pass" /> 
											<span	class="error">This is an error</span>
									</div>
									<div class="bottom">
										<input type="submit" value="<%= resource.getString("login") %>" ></input>
										<div class="clear"></div>
									</div>
								</form>
				
							</div>
							<div class="clear"></div>
						</div>					
					</div>
				</div>
		</div>
	</div>
	
</body>
</html>