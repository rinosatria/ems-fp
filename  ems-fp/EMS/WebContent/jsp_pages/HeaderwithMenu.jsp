<%@page import="java.util.ResourceBundle"%>

<%
	ResourceBundle resource = ResourceBundle.getBundle("resources.messageBundle.MessagesBundle_hi_IN");
	
	String strname="";
	
		String pass=""+application.getAttribute("password");
	
%>

    <div id="main">
		<div id="header-w">
			<div id="header">
				<div id="company_name3">
            			
            		<a href="index.jsp"><%= resource.getString("logout") %></a>
            		</div>	
					<div id="company_name1">
						<label><%= resource.getString("employee_management") %> </label>
					</div>
            		<div id="company_name2">
            			
            		<label><%= resource.getString("welcome") %> <%= strname %></label>
            		</div>						
			</div>			
		</div>
		<div id="wrapper">
		        <div id="navr">
						 <div id="main-content">	
								<div id="leftbar-w">
									<div id="sidebar">
							        	<div class="arrowlistmenu">
							
											<label class="menuheader_expandable"><%= resource.getString("master") %></label>
													<ul class="categoryitems">
														<li><a href="jsp_pages/Master/Department/DepartmentMaster.jsp"><%= resource.getString("department") %></a></li>
														<li><a href="com/org/sample/designation/designation_master.jsp"><%= resource.getString("designation") %></a></li>
														<li><a href="com/org/sample/category/category_master.jsp"><%= resource.getString("category") %></a></li>
														<li><a href="com/org/sample/QT/qt_master.jsp"><%= resource.getString("qt") %></a></li>
														<li><a href="com/org/sample/user_master/user_master.jsp"><%= resource.getString("users_master") %></a></li>						
													</ul>
							
											<label class="menuheader_expandable1"><%= resource.getString("forms") %></label>
													<ul class="categoryitems">
														<li><a href="com/org/sample/forms/employee_form.jsp"><%= resource.getString("employee_forms") %></a></li>
													</ul>
							
											<label class="menuheader_expandable2"><%= resource.getString("report") %></label>
													<ul class="categoryitems">
														<li><a href="com\org\sample\reports\categorywise_report.jsp" ><%= resource.getString("departmentwise") %></a></li>
														<li><a href="#" ><%= resource.getString("categorywise") %></a></li>
														<li><a href="#" ><%= resource.getString("retirmentwise") %></a></li>
							 						</ul>
										</div> <!-- end div arrowlistmenu -->
									</div> <!-- end div sidebar -->
								</div> <!-- end div leftbar-w -->

				<div id="centercontent">
			

