<%@ page import= "project.ConnectionProvider" %>
<%@ page import= "java.sql.*" %>

<%
	String id_ = request.getParameter("studentID");
	int count=0;

	int id = Integer.parseInt(id_);
	try {
		Connection con = ConnectionProvider.getCon();
	    PreparedStatement statement = con.prepareStatement("select * from students where students.student_ID = ?");    
	    statement.setInt(1, id);    
	    ResultSet rs = statement.executeQuery();
	    while(rs.next()) {
		count=1;
%>


<img src="Footer-Logo.png" align="right"  width="250" height="150" style="padding-bottom: 10px;"></center>

  
<style>
table{
  width:100%;
  table-layout: fixed;
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
 border: 2px solid rgba(255,255,255,0.3);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}

</style>

<style>
html {
  font-family:arial;
  font-size: 25px;
}

td {
  border: 2px solid #726E6D;
  padding: 15px;
  color:black;
  text-align:center;
}

thead{
  font-weight:bold;
  text-align:center;
  background: #625D5D;
  color:white;
}

table {
  border-collapse: collapse;
}

.footer {
  text-align:right;
  font-weight:bold;
}

tbody >tr:nth-child(odd) {
  background: #D1D0CE;
}

</style>
<head>
 <h1 style="text-align:left; padding-top: 60px;"> Library Card</h1>
</head>
<body>
  <table>
    <thead>
      <tr>
        <td colspan="3">ID: <%= rs.getString(1) %></td>
        
        
      </tr>
      <tr>
 
        <td colspan="3">Name: <%= rs.getString(2) %></td>
      </tr>
    </thead>
    <tbody>
      <tr>
       	<td colspan="3">Batch: <%= rs.getString(3) %></td>
      </tr>
      <tr>
        <td colspan="3">Title: <%= rs.getString(4) %></td>

      </tr>
      <tr>
        <td colspan="3">Program: <%= rs.getString(5) %></td>

      </tr>
      <tr>
        <td colspan="3">Email: <%= rs.getString(6) %></td>
      </tr>
      <tr>
        <td colspan="3">Contact: <%= rs.getString(7) %></td>
      </tr>
      <%
      	
	    PreparedStatement st = con.prepareStatement("select issue.* from students INNER JOIN issue ON (students.student_ID = issue.student_id) where students.student_ID = ?");    
	    st.setInt(1, id);    
	    ResultSet rs1 = st.executeQuery();
	    while(rs1.next()) {
	    	
	    
      %>
      <tr>
        <td colspan="1">Issued Book: <%= rs1.getString(3) %></td>
        <td colspan="1">Issue Date: <%= rs1.getString(4) %></td>
        <td colspan="1">Return Date: <%= rs1.getString(5) %></td>
      </tr>
      <%} %>	
      <tr>
        <td colspan="3"><a titlt="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;"><center><img src="print.png"></center></a></td>
      </tr>

    </tbody>
  </table>
<%
	    }
	    if(count==0) {
	    	response.sendRedirect("student.jsp?msg=notexist");
		}
	} catch(Exception e) {
		System.out.println(e);
	}

%>  