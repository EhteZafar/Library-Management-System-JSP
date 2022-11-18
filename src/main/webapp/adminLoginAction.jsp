
<%
	String userName = request.getParameter("username");
	String password = request.getParameter("password");
	
	if(userName.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")) {
		response.sendRedirect("adminHome.jsp");
	} else {
		response.sendRedirect("errorAdminLogin.html");
	}
%>