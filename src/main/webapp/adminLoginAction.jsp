<%@ page import= "project.ConnectionProvider" %>
<%@ page import= "java.sql.*" %>


<%
	String userName = request.getParameter("username");
	String password = request.getParameter("password");
	
//	if(userName.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")) {
//		response.sendRedirect("adminHome.jsp");
//	} else {
//		response.sendRedirect("errorAdminLogin.html");
//	}

	int z=0;
	try{
		Connection con = ConnectionProvider.getCon();
		if(con!=null){
		//System.out.print("connected");
		}
		Statement st=con.createStatement();
		ResultSet rs= st.executeQuery("select * from admins where user_name='"+userName+"' and password='"+password+"'");


		while(rs.next()){
		z=1;
		response.sendRedirect("adminHome.jsp");

		}
		if(z==0){
			response.sendRedirect("errorAdminLogin.html");
		}
	}catch(Exception e){
		System.out.println(e);
		response.sendRedirect("errorAdminLogin.html");
	}
%>