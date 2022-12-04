<%@ page import= "project.ConnectionProvider" %>
<%@ page import= "java.sql.*" %>

<%	
	String id_ = request.getParameter("bookID");
	String name = request.getParameter("bookName");
	String author = request.getParameter("authorName");
	String publisher = request.getParameter("publisher");
	String category = request.getParameter("category");
	String price = request.getParameter("price");
	String brief = request.getParameter("summary");
	
	int count = 0;
	
	int id = Integer.parseInt(id_);
	try {
		Connection con = ConnectionProvider.getCon();

		PreparedStatement st = con.prepareStatement("UPDATE books SET id = ?, name = ?, author = ?, publisher = ?, category = ?, price = ?, breif =? WHERE id = ?;");
		
		st.setInt(1,id);
        st.setString(2,name);
        st.setString(3,author);
        st.setString(4,publisher);
        st.setString(5,category);
        st.setString(6,price);
        st.setString(7,brief);
        st.setInt(8,id);
        st.executeUpdate();
		
		response.sendRedirect("adminHome.jsp");
	} catch (Exception e) {
		out.println(e);
	}
%>