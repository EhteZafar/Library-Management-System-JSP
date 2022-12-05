<%@ page import= "project.ConnectionProvider" %>
<%@ page import= "java.sql.*" %>

<%
	String id_ = request.getParameter("studentID");
	String name = request.getParameter("studentName");
	String batch = request.getParameter("batch");
	String title = request.getParameter("degreeTitle");
	String program = request.getParameter("degreeProgram");
	String email = request.getParameter("email");
	String contact = request.getParameter("contact");
	
	int id = Integer.parseInt(id_);
	try {
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		st.executeUpdate("insert into students values('"+id+"','"+name+"','"+batch+"','"+title+"','"+program+"','"+email+"','"+contact+"','"+0+"')");
		response.sendRedirect("adminHome.jsp");
	} catch (Exception e) {
		out.println(e);
	}
%>