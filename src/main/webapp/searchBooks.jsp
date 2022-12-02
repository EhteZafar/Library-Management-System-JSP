<%@include file="header.html"%>
<!DOCTYPE html>
<html>
<head>
	<title>FAST LIBRARY</title>
</head>
<body>
<center><img src="images/Footer-Logo.png" align="right" width="250" height="80"></center>
<div class="w3-container">
  <div class="w3-bar w3-black">
    <button class="w3-bar-item w3-button tablink w3-red" onclick="openCity(event,'London')">Search Result</button>
    <a href="adminLogin.html" class="w3-bar-item w3-button tablink">Logout</a>
  </div>
  
  <div id="London" class="w3-container w3-border city">
  <br>
   <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>

<section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Book ID</th>
          <th>Book Name</th>
          <th>Author Name</th>
          <th>Publisher Name</th>
          <th>Category</th>
          <th>Price</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
        <%@ page import= "project.ConnectionProvider" %>
      	<%@ page import= "java.sql.*" %>
      	<%
    	String id_ = request.getParameter("id");
    	int id = Integer.parseInt(id_);
		int count =0;
      	try {
      		Connection con = ConnectionProvider.getCon();
      		PreparedStatement statement = con.prepareStatement("select * from books where id = ?");    
      		statement.setInt(1, id);    
      		ResultSet rs = statement.executeQuery();
  			while(rs.next())
  			{  
  				count=1;
      	%>
        <tr>
        	<td><%= rs.getString(1) %></td>
          	<td><%= rs.getString(2) %></td>
          	<td><%= rs.getString(3) %></td>
          	<td><%= rs.getString(4) %></td>
          	<td><%= rs.getString(5) %></td>
          	<td><%= rs.getString(6) %></td>
        </tr>
      </tbody>
    </table>
    <%
  			}
  			if(count==0) {
  				%>
  				<h3 style="text-align: center; font-style: italic;">Book is not in Database</h3>
  			<% } 
  		   
      	} catch (Exception e) {
    	  System.out.println(e);
      }
      %>
  </div>
</section>

</body>
</html>