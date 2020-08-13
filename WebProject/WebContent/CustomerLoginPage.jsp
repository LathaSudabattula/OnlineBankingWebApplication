<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<!------ Include the above in your HEAD tag ---------->


<!DOCTYPE html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Samridhi Customer Login</title>
<link rel ="icon" type="image/ico" href="only globe.jpg"/>
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
    </header>

  </body>
</html>
<div class="alert alert-danger">
    <span style="display:inline-block; width: 180px;"></span><strong>CARE : </strong> Username and Password are case sensitive<span style="display:inline-block; width: 600px;"></span><a  class="text-muted">Welcome to personal Internet Banking</a>
  </div>
<section class="login-block">


    <div class="container" >
	<div class="row">
		<div class="col-md-4 login-sec">
		    <h2 class="text-center">Login</h2>
		    <form action="CustomerLoginServlet" method="post">
		    <form class="login-form"> 
  <div class="form-group">
    <label for="userName" class="text-uppercase"><span class="req">Customer Id<font color="red">*</font> </span></label>
    <input type="text" name="customerId" class="form-control" placeholder="customer Id" required>
    
  </div>
  <div class="form-group">
    <label for="password" class="text-uppercase"><span class="req">Password<font color="red">*</font> </span></label>
    <input type="password" name="password" class="form-control" placeholder="password" required>
  </div>
    <div class="form-check">
    <button type="submit" class="btn btn-sm btn-success float-right">Login</button>
  </div>
</form>
</form>
<div class="copy-text"><a href="ForgetPassword">Forget Password?</a></div>
</br>
  <button type="button" class="btn btn-white btn-sm" onclick="location.href='NewUser.jsp'"><img src="">New User?</button>
  
<br><br>
    <ul> 
       <li>Give the correct information for the above mentioned fields</li>
       <li>Do not provide your username and password anywhere other than in this page</li>
       <li>Your username and password are highly confidential.Never part with them.SNB will never ask for this information.</li></div>
		</ul>
		<div class="col-md-8 banner-sec">
            <div id="carouselExampleIndicators" class=
            
            "carousel slide" data-ride="carousel">
                 <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                  </ol>
            <div class="carousel-inner" role="listbox">
    <div class="carousel-item active">
      <img class="d-block img-fluid" src="loginPicture.jpg" alt="First slide">
      <div class="carousel-caption d-none d-md-block">
        <div class="banner-text">
            <h2>Experience the best way of banking</h2>
        </div>	
  </div>
    </div>
            </div>	   
		    
		</div>
	</div>
</div>
</section>