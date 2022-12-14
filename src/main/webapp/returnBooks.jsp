<%@page import="javax.swing.plaf.metal.MetalBorders.Flush3DBorder"%>
<%@include file="header.html"%>
<!DOCTYPE html>
<html>
<title>FAST LIBRARY</title>
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
    <button class="w3-bar-item w3-button tablink w3-red" onclick="openCity(event,'London')">Return Books</button>
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
    
    	LocalDate currentDate = LocalDate.now();
    	
    
		String bookID_ = request.getParameter("bookID"); 
		String studentID_ = request.getParameter("studentID");
		String condition = request.getParameter("condition");
		int bookID = Integer.parseInt(bookID_);
		int studentID = Integer.parseInt(studentID_);
		int count =0;
		try {
      		Connection con = ConnectionProvider.getCon();
      		PreparedStatement statement = con.prepareStatement("select * from issue where student_id = ? and book_id = ?");    
      		statement.setInt(1, studentID);
      		statement.setInt(2, bookID);
      		ResultSet rs = statement.executeQuery();
      		//out.println(rs1.next());
      		
      		while(rs.next()) { 
      			count = 1;
      				try {

      					PreparedStatement st = con.prepareStatement("DELETE FROM issue WHERE student_id = ? and book_id = ?");
      		      		st.setInt(1, studentID);
      		      		st.setInt(2, bookID);
      			        st.executeUpdate();
      			        
      			      try {

	      					PreparedStatement st1 = con.prepareStatement("select * from books WHERE id = ?");
	      		      		st1.setInt(1, bookID);
	      		      		ResultSet price = st1.executeQuery();
	      		      		
	      		      		while(price.next()) {
	      		      			if(condition.equalsIgnoreCase("damaged")) {
	      		      				%>
	      		      				<h3 style="text-align: center; font-style: italic;">Pay <%= price.getString(6) %>$ for damages</h3>
	      		      				<%
	      		      			PreparedStatement update = con.prepareStatement("UPDATE students SET payments = ? WHERE student_ID = ?;");
	      		      					update.setString(1, price.getString(6));
	      		      			        update.setInt(2,studentID);
	      		      			        
	      		      			    update.executeUpdate();
	      		      			} 
	      		      			
	      		      			int day = rs.getDate(5).getDate();
	      		      			int month = rs.getDate(5).getMonth();
	      		      			int day1 = currentDate.getDayOfMonth();
	      		      			int month1 = currentDate.getMonthValue();
								
	      		      			if((month+1)<= month1) {
	      		      				if(day<day1) {
	      		      				int m = ((month+1) - month1)*30;
	      		      				int d = day1-day; %>
	      		      				
	      		      				<h3 style="text-align: center; font-style: italic;">Pay <%= m+d %>$ for late return</h3>
	      		      				<%
	      		      				}
	      		      				
	      		      			}
	      		      			
	      		      		}
	      		      		
			        	} catch (Exception e) {
	      					out.println(e);
	      				}
      			        

      			        
      			        %>
      			        <h3 style="text-align: center; font-style: italic;">Returned Successful</h3>
      			        <% 
      				} catch (Exception e) {
      					out.println(e);
      				}
      				
      
       }
      		if(count==0) {
  				%>
  				<h3 style="text-align: center; font-style: italic;">This book is not issued to this student</h3>
  			<% } 
		}
      catch(Exception e) {
    	  out.println(e);
      }
      %>
  </div>




    <hr class="new1">
  <center><h5>Note: Any errors occur then contact El Programmers.
Designed & Developed by El Programmers Team</h5></center>
  <hr class="new1">
<center><h5>All Right Reserved @ El Programmers:: 2022-Present</h5></center> 
  <hr class="new1">
<br>
</body>
</html>