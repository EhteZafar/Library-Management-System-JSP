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
    <button class="w3-bar-item w3-button tablink w3-red" onclick="openCity(event,'London')">Your Profile</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo1')">All Books</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo')">Brief Books</button>
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

<main class="my-form" style="width: 40%; margin: auto;">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Print Card</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="studentHome.jsp" method="post">
                                <div class="form-group row">
                                    
                                    <div class="col-md-9">
                                        <input type="text"class="form-control" name="studentID" placeholder="Enter Student ID">
                                    </div>
                                                                    
                                    <div class="col-md-2">
                                        <button type="submit" class="btn btn-primary">
                                       Search
                                        </button>
                                    </div>
                                </div>
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
        </main>
        <br>
         <%
  			String msg= request.getParameter("msg");
  			if("notexist".equals(msg))
  			{
		%>  
		<h3 style="text-align: center; font-style: italic;">Student is not registered</h3>
 		<% } %>
    </div>
    
    <div id="Tokyo1" class="w3-container w3-border city" style="display:none">
   <br>
   	
   <main class="my-form" style="width: 40%; margin: auto;">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-10">
                    <div class="card">
                        <div class="card-header">Search Book</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="searchBooks.jsp" method="post">
                                
                                 <div class="form-group row">
                                    
                                    <div class="col-md-9">
                                        <input type="text"  class="form-control" name="id" placeholder="Search by ID">
                                    </div>
                                     <div class="col-md-2">
                                        <button type="submit" class="btn btn-primary">
                                       Search
                                        </button>
                                    </div>
                                </div>
                                
                                    </form>
                                    
                                     <form name="my-form" onsubmit="return validform()" action="searchBooksbyName.jsp" method="post">
                                
                                 <div class="form-group row">
                                    
                                    <div class="col-md-9">
                                        <input type="text"  class="form-control" name="name" placeholder="Search by Name">
                                    </div>
                                    <div class="col-md-2">
                                        <button type="submit" class="btn btn-primary">
                                       Search
                                        </button>
                                    </div>
                                </div>
                                    </form>
                                </div>
                        </div>
                    </div>
            </div>
        </div>
   </main>
   

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
      	try {
  			Connection con = ConnectionProvider.getCon();
  			Statement st = con.createStatement();
  			ResultSet rs = st.executeQuery("select * from books");
  			while(rs.next())
  			{ 
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
      <% }}
      catch(Exception e) {
    	  out.println(e);
      }
      %>
    </table>
  </div>
</section>
</div>


  <div id="Tokyo" class="w3-container w3-border city" style="display:none">
  
     <br>
	
	<table>
    <thead>
      <tr>
        <td colspan="1"> 
        <form action="breifBooks.jsp" method="post">
        	<img src="images/Wimpy Kid.jpg" align="middle"  width="150" height="250" style="padding-bottom: 10px;">
        	<input type="hidden" name="bookID" value="3" >
        	<br>
        	<input type="submit" value="view details">
        </form>
        </td>
        
        <td colspan="1"> 
        <form action="breifBooks.jsp" method="post">
        	<img src="images/Harry Potter.jpg" align="middle"  width="150" height="250" style="padding-bottom: 10px;">
        	<input type="hidden" name="bookID" value="5" >
        	<br>
        	<input type="submit" value="view details">
        </form>
        </td>
        
        <td colspan="1"> 
        <form action="breifBooks.jsp" method="post">
        	<img src="images/Twilight.jpg" align="middle"  width="150" height="250" style="padding-bottom: 10px;">
        	<input type="hidden" name="bookID" value="2" >
        	<br>
        	<input type="submit" value="view details">
        </form>
        </td>
      </tr>
      <tr>
 
        
      </tr>
    </thead>
    <tbody>
      <tr>
       	
      </tr>
      <tr>
        

      </tr>
      <tr>
        

      </tr>
      <tr>
       
      </tr>
      <tr>
      
      </tr>
     

    </tbody>
  </table>
	
  </div>
</section>
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