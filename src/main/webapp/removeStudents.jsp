<%@ page import= "project.ConnectionProvider" %>
<%@ page import= "java.sql.*" %>

<%
	String id_ = request.getParameter("id");
	
	int id = Integer.parseInt(id_);
	try {
		Connection con = ConnectionProvider.getCon();

		PreparedStatement st = con.prepareStatement("DELETE FROM students WHERE student_id = ?");
        st.setInt(1,id);
        st.executeUpdate();
		
		response.sendRedirect("adminHome.jsp");
	} catch (Exception e) {
		out.println(e);
	}
%>