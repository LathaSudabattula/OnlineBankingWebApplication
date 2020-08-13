<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Samridhi Employee Login</title>
<link rel ="icon" type="image/ico" href="only globe.png"/>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    
    <link rel="stylesheet" type="text/css" href="css/style.css">
  </head>
  <body>
    <header>
   <div class="container">
       <nav class="navbar navbar-expand-lg navbar-light bg-info text-light py-1 main-nav">
          <div class="container">
            <a class="navbar-brand" href="index.html"><img src="logoonline.jpg" alt="Logo"></a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>

              <div class="collapse navbar-collapse " id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                  <li class="nav-item active">
                    <a class="nav-link text-uppercase font-weight-bold text-white" href="MainHomePage.jsp"><i class="fa fa-fw fa-home fa-lg"></i>Home<span class="sr-only">(current)</span></a>
                  </li>
                  
                </ul>
              </div>
          </div>
        </nav>
        <section class="login-block">

<div class="alert alert-danger">
    <strong>CARE : </strong> Username and Password are case sensitive<span style="display:inline-block; width: 450px;"></span><a  class="text-muted">Welcome to Employee Login Page</a>
  </div>
    </header>

  </body>
</html>
  
    <div class="container" >
	<div class="row">
		<div class="col-md-4 login-sec">
		    <h2 class="text-center">Login</h2>
		    		    <form action="LoginServlet" method="post">
		    <form class="login-form">
  <div class="form-group">
    <label for="exampleInputEmail1" class="text-uppercase"><span class="req">Employee Id</span></label>
    <input type="text" class="form-control" name="empId" placeholder="Employee Id"required>
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1" class="text-uppercase"><span class="req">Password</span></label>
    <input type="password" class="form-control" name="password" placeholder="password"required>
  </div>
  
      <div class="form-check">
    
    <button type="submit" class="btn btn-sm btn-success float-right">Submit</button>
  </div>
  
</form>
</form>
</form>
<div class="copy-text"><a href="ForgetPassword">Forget Password?</a></div><br><br>
    <ul> 
       <li>Give the correct information for the above mentioned fields</li>
       <li>Do not provide your username and password anywhere other than in this page</li>
       <li>Your username and password are highly confidential.Never part with them.SNB will never ask for this information.</li></div>
		</ul>
		<div class="col-md-8 banner-sec">
            
		<img src="pic7.jpg" width="730" height="600">
		
		
	</div>
</div>
</section>

