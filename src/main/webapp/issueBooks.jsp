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
    <button class="w3-bar-item w3-button tablink w3-red" onclick="openCity(event,'London')">Issue Books</button>
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
	
	<%@ page import= "project.ConnectionProvider" %>
    <%@ page import= "java.sql.*" %>
    <%@ page import= "java.time.LocalDate" %>
	<%@ page import= "java.time.temporal.ChronoUnit" %>
    <%

		String bookID_ = request.getParameter("bookID"); 
		String studentID_ = request.getParameter("studentID");
		int bookID = Integer.parseInt(bookID_);
		int studentID = Integer.parseInt(studentID_);
		int count =0;
		
		try {
      		Connection con = ConnectionProvider.getCon();
      		PreparedStatement statement1 = con.prepareStatement("select * from books where id = ?");    
      		statement1.setInt(1, bookID);    
      		ResultSet rs1 = statement1.executeQuery();
      		
      		while(rs1.next()) {
      			PreparedStatement statement2 = con.prepareStatement("select * from students where student_ID = ?");    
      			statement2.setInt(1, studentID);    
      			ResultSet  rs2 = statement2.executeQuery();
      			while(rs2.next())
  				{
      				count=1;
      			%>

<section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Student ID</th>
          <th>Book ID</th>
          <th>Book Name</th>
          <th>Issue Date</th>
          <th>Return Date</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
      	<% 
      		LocalDate currentDate = LocalDate.now();
		  	LocalDate result = currentDate.plus(1, ChronoUnit.WEEKS);

		  	
      	%>
        <tr>
        	<td><%= rs2.getString(1) %></td>
          	<td><%= rs1.getString(1) %></td>
          	<td><%= rs1.getString(2) %></td>
          	<td><%= currentDate %></td>
          	<td><%= result %></td>
        </tr>
      </tbody>
      
     <% try {
		Statement st = con.createStatement();
		st.executeUpdate("insert into issue values('"+rs2.getString(1)+"','"+rs1.getString(1)+"','"+rs1.getString(2)+"','"+currentDate+"','"+result+"')");
		
		PreparedStatement insert = con.prepareStatement("UPDATE students SET payments = ? WHERE student_ID = ?;");
			insert.setString(1, "0");
	        insert.setInt(2,studentID);
	        
	    insert.executeUpdate();
	} catch (Exception e) {
		out.println(e);
	}
      
       }}
      		if(count==0) {
  				%>
  				<h3 style="text-align: center; font-style: italic;">Book ID or Student ID incorrect</h3>
  			<% } 
      		}
      catch(Exception e) {
    	  out.println(e);
      }
      %>
    </table>
  </div>
</section>



    <hr class="new1">
  <center><h5>Note: Any errors occur then contact El Programmers.
Designed & Developed by El Programmers Team</h5></center>
  <hr class="new1">
<center><h5>All Right Reserved @ El Programmers:: 2022-Present</h5></center> 
  <hr class="new1">
<br>
</body>
</html>