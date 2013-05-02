
<%@page import="java.util.ResourceBundle"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	ResourceBundle resource1 = ResourceBundle.getBundle("resources.messageBundle.MessagesBundle_hi_IN");
%>
<!DOCTYPE>
<html>
<head>
<base href="<%=basePath%>">
<title><%= resource1.getString("employee_management") %></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/ChunkFive_400.font.js" type="text/javascript"></script>

<script src="js/mr_mangal.js"></script>
<script src="js/Parser_mangal.js"></script>
<script type="text/javascript" src="imp.js"></script>	


<script>
				Cufon.replace('h1',{ textShadow: '1px 1px #fff'});
				Cufon.replace('h2',{ textShadow: '1px 1px #fff'});
				Cufon.replace('h3',{ textShadow: '1px 1px #000'});
				Cufon.replace('.back');
			</script>
</head>
 
  <body>
    	
    	
			
			 <%@ include  file="../jsp_pages/HeaderwithMenu.jsp" %>
			
		</div>
		</div>
		</div>
		</div>

    </body>
</html>