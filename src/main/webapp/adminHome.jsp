<%@include file="header.html"%>
<!DOCTYPE html>
<html>
<head>
	<title>FAST LIBRARY</title>
</head>

<body>

<center><img src="Footer-Logo.png" align="right" width="250" height="80"></center>	

<div class="w3-container">
  <div class="w3-bar w3-black">
    <button name="newBook" class="w3-bar-item w3-button tablink w3-red" onclick="openCity(event,'London')">Add New Books</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Paris')">Add New Students</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo')">Registered Students</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo1')">All Books</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Delete')">Delete Books</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Remove')">Remove Student</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Issue')">Issue Book</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Return')">Return Book</button>
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
<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Add New Books</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="addNewBook.jsp" method="post">
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Book ID</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="bookID">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">Book Name</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="bookName">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Author Name</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="authorName">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right">Publisher</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="publisher">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">Category</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="category">
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">Price</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="price">
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">Summary</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="summary">
                                    </div>
                                </div>

                                    <div class="col-md-6 offset-md-4">
                                        <button name="save" type="submit" class="btn btn-primary">
                                        Save
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

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
  </div>

  <div id="Paris" class="w3-container w3-border city" style="display:none">
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



<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Add New Student</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="addNewStudent.jsp" method="post">
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Student ID</label>
                                    <div class="col-md-6">
                                        <input type="text"class="form-control" name="studentID">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">Student Name</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="studentName">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Batch</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="batch">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right">Degree Title</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="degreeTitle">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">Degree Program (Ms/Bs)</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="degreeProgram">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Email</label>
                                    <div class="col-md-6">
                                        <input type="email"  class="form-control" name="email">
                                    </div>
                                </div>
                                
                                 <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Contact Number</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="contact">
                                    </div>
                                </div>
                                
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                       Save
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
        <br>
    </div>

</main>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html> 
  </div>

  <div id="Tokyo" class="w3-container w3-border city" style="display:none">
  
     <br>
   <main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Search Student</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="searchStudents.jsp" method="post">
                                
                                 <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Student ID</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="id">
                                    </div>
                                </div>
                                
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                       Search
                                        </button>
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
         <th>Student ID</th>
          <th>Student Name</th>
          <th>Batch</th>
          <th>Degree Title</th>
          <th>Program</th>
          <th>Email</th>
          <th>Contact</th>
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
  		ResultSet rs = st.executeQuery("select * from students");
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
          <td><%= rs.getString(7) %></td>
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
<div id="Tokyo1" class="w3-container w3-border city" style="display:none">
   <br>
   <main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Search Book</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="searchBooks.jsp" method="post">
                                
                                 <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Book ID</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="id">
                                    </div>
                                </div>
                                
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                       Search
                                        </button>
                                    </div>
                                    </form>
                                </div>
                        </div>
                    </div>
            </div>
        </div>
   </main>
   <br>

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

<div id="Issue" class="w3-container w3-border city" style="display:none">
   <br>
   
	<form name="my-form" onsubmit="return validform()" action="viewIssuedBooks.jsp" method="post">
                                
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary" style="margin-left: 562px;">
                                       View All Issued Books
                                        </button>
                                    </div>
                                    </form>
   
   <main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Issue Book</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="issueBooks.jsp" method="post">
                                
                                 <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Book ID</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="bookID">
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Student ID</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="studentID">
                                    </div>
                                </div>
                                
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                       Issue
                                        </button>
                                    </div>
                                    </form>
                                </div>
                        </div>
                    </div>
            </div>
        </div>
   </main>
  </div>
  
  <div id="Return" class="w3-container w3-border city" style="display:none">
   <br>
   <main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Return Book</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="returnBooks.jsp" method="post">
                                
                                 <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Book ID</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="bookID">
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Student ID</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="studentID">
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Codition</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="condition">
                                    </div>
                                </div>
                                
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                       Return
                                        </button>
                                    </div>
                                    </form>
                                </div>
                        </div>
                    </div>
            </div>
        </div>
   </main>
  </div>
  
<div id="Delete" class="w3-container w3-border city" style="display:none">
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



<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Delete Book</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="DeleteBooks.jsp" method="">
                                
                                 <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Book ID</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="deleteBook">
                                    </div>
                                </div>
                                
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                       Delete
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
        <br>
    </div>
    
<div id="Remove" class="w3-container w3-border city" style="display:none">
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



<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Remove Student</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="removeStudents.jsp" method="">
                                
                                 <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Student ID</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="id">
                                    </div>
                                </div>
                                
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                       Remove
                                        </button>
                                    </div>
                                    </form>
                                </div>
                        </div>
                    </div>
            </div>
        </div>
        <br>
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