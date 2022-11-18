<%@ page import= "project.ConnectionProvider" %>
<%@ page import= "java.sql.*" %>

<%
	String id_ = request.getParameter("bookID");
	String name = request.getParameter("bookName");
	String author = request.getParameter("authorName");
	String publisher = request.getParameter("publisher");
	String category = request.getParameter("category");
	String price = request.getParameter("price");
	
	int id = Integer.parseInt(id_);
	try {
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		st.executeUpdate("insert into books values('"+id+"','"+name+"','"+author+"','"+publisher+"','"+category+"','"+price+"')");
		response.sendRedirect("adminHome.jsp");
	} catch (Exception e) {
		out.println(e);
	}
%>