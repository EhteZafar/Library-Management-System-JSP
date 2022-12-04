<%@include file="header.html"%>
<!DOCTYPE html>
<html>
<head>
	<title>FAST LIBRARY</title>
</head>
<body>
<div class="row">
	<div class="col-md-6 col-sm-6">
		<h2 style="font-style: italic; text-align: left; padding-top: 25px; padding-left: 15px;">FAST LIBRARY SYSTEM</h2>
	</div>
	<div class="col-md-6 col-sm-6">
		<center><img src="images/Footer-Logo.png" align="right" width="250" height="80"></center>	
	</div>
</div>
<div class="w3-container">
  <div class="w3-bar w3-black">
    <button class="w3-bar-item w3-button tablink w3-red" onclick="openCity(event,'London')">Search Result</button>
    <a href="index.html" class="w3-bar-item w3-button tablink">Home</a>
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
	<%@ page import= "project.ConnectionProvider" %>
    <%@ page import= "java.sql.*" %>
	<%
		String book = request.getParameter("bookID");
		int id = Integer.parseInt(book);
		
		try {
      		Connection con = ConnectionProvider.getCon();
      		PreparedStatement statement = con.prepareStatement("select name, breif from books where id = ?");    
      		statement.setInt(1, id);    
      		ResultSet rs = statement.executeQuery();
  			if(rs.next())
  			{  
      	%>
      	<table>
      		<tbody>
      			<tr>
      				<td colspan="1"><img src="images/<%=rs.getString(1)%>.jpg" align="middle"  width="250" height="350" style="padding-bottom: 10px;"></td>
      				<td colspan="3"> <h3>Summary</h3><h5> <%= rs.getString(2) %></h5></td>
      			</tr>
      		</tbody>
      	</table>
      	
	
		<% }
		} catch(Exception e) {
			System.out.println(e);
		}
		%>

    <hr class="new1">
  <center><h5>Note: Any errors occur then contact El Programmers.
Designed & Developed by El Programmers Team</h5></center>
  <hr class="new1">
<center><h5>All Right Reserved @ El Programmers:: 2022-Present</h5></center> 
  <hr class="new1">
<br>
</body>
</html>