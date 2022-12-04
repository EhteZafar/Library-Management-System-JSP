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

		PreparedStatement st = con.prepareStatement("UPDATE students SET student_ID = ?, student_name = ?, batch = ?, title = ?, program = ?, email = ?, contact =? WHERE student_ID = ?;");
		
		st.setInt(1,id);
        st.setString(2,name);
        st.setString(3,batch);
        st.setString(4,title);
        st.setString(5,program);
        st.setString(6,email);
        st.setString(7,contact);
        st.setInt(8,id);
        st.executeUpdate();
		
		response.sendRedirect("adminHome.jsp");
	} catch (Exception e) {
		out.println(e);
	}
%>