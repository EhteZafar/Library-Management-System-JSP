<%@ page import= "project.ConnectionProvider" %>
<%@ page import= "java.sql.*" %>

<%	
	String id_ = request.getParameter("deleteBook");
	
	int id = Integer.parseInt(id_);
	try {
		Connection con = ConnectionProvider.getCon();

		PreparedStatement st = con.prepareStatement("DELETE FROM books WHERE id = ?");
        st.setInt(1,id);
        st.executeUpdate();
		
		response.sendRedirect("adminHome.jsp");
	} catch (Exception e) {
		out.println(e);
	}
%>