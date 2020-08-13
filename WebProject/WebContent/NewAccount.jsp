<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<title>Samridhi Customer Opening Page</title>
<link rel="icon" type="image/ico" href="only globe.jpg" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
.fakeimg {
	height: 200px;
	background: #aaa;
}
.span1 {
  content: "\2192";
}
</style>
</head>
<div class="container" style="margin-top: 0px">
		<nav
			class="navbar navbar-expand-lg navbar-light bg-info text-light py-1 main-nav">
			<div class="container">
				<a class="navbar-brand" href="index.html"><img
					src="logoonline.jpg" alt="Logo"></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
		    </div>
		</nav>
		<div class="alert alert-info">
    <strong>New User! Register here </strong> 
    <br/>
    </div>
    
    <div class="container">
            <form action="CustomerRegisterServlet" method = "post" class="form-horizontal" role="form">
            </br>
            </br>
               <h2>Registration Form</h2>
               <div class="form-group">
               <div class="row">
               <div class ="col-sm-3">
                    <label for="FirstName" class="control-label">First Name<font color="red">*</font></label></div>
                    <div class="col-sm-4">
                        <input type="text" id="lastName" name="firstName" placeholder="First Name" required class="form-control" autofocus>
                    </div>
                </div>
                </div>
                <div class="form-group">
                <div class="row">
               <div class ="col-sm-3">
                    <label for="lastName" class="control-label">Last Name<font color="red">*</font></label></div>
                    <div class="col-sm-4">
                        <input type="text" id="lastName" placeholder="Last Name" name="lastName" required class="form-control" autofocus>
                    </div>
                </div>
                </div>
                <div class="form-group">
                <div class="row">
                <div class="col-sm-3">
                    <label class="control-label">Gender<font color="red">*</font></label></div>
                    <div class="col-sm-4">
                        
                                <label class="radio-inline">
                                    <input type="radio" name="gender" id="femaleRadio" value="Female">Female
                                </label>
                               <span style="width:20px"></span>
                                <label class="radio-inline">
                                    <input type="radio" name="gender" id="maleRadio" value="Male">Male
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                <div class="row">
               <div class ="col-sm-3">
                    <label for="birthDate" class="control-label">Date of Birth<font color="red">*</font></label></div>
                    <div class="col-sm-4">
                        <input type="date" id="birthDate" name="dateOfBirth" placeholder="Date of birth" required class="form-control">
                    </div>
                </div>
                </div>
                
                <div class="form-group">
                <div class="row">
               <div class ="col-sm-3">
                    <label for="Adhar Card number" class="control-label">Aadhar Card number<font color="red">*</font> </label></div>
                    <div class="col-sm-4">
                        <input type="text" id="Adhar Card number" name="aadharNumber" placeholder="Aadhar Card number" required class="form-control">
                    </div>
                </div> 
                </div>
                <div class="form-group">
                <div class="row">
               <div class ="col-sm-3">
                    <label for="Adhar Card number" class="control-label">Address<font color="red">*</font> </label></div>
                    <div class="col-sm-4">
                        <input type="text" id="Address" placeholder="Address" name="address" required class="form-control">
                    </div>
                </div> 
                </div>
                
                <div class="form-group">
                <div class="row">
                <div class="col-sm-3">
                  <label class="control-label">Address Proof<font color="red">*</font></label></div>
                  <div class="col-sm-4">
                     <select class="dropdown text-secondary" name="addressProof" style="width:353px;height:30px">
                        <option value="Ration Card">Ration Card</option>
                        <option value="Electricity Bill">Electricity Bill</option>
                        <option value="Gass Bill">Gas Bill</option>
                        </select>
                 </div>
                 </div>
                 </div>
                 <div class="form-group">
                <div class="row">
               <div class ="col-sm-3">
                    <label for="Address proof number" class="control-label">Address Proof Number<font color="red">*</font> </label></div>
                    <div class="col-sm-4">
                        <input type="text" id="Adhar Card number" name="addressNumber" placeholder="Address proof number" required class="form-control">
                    </div>
                </div> 
                </div>
                <div class="form-group">
                <div class="row">
               <div class ="col-sm-3">
                    <label for="phoneNumber" control-label">Phone Number <font color="red">*</font></label></div>
                    <div class="col-sm-4">
                        <input type="phoneNumber" id="phoneNumber" name="phNo" placeholder="Phone number" required class="form-control">
                        <span class="help-block"><font color="blue">Your phone number won't be disclosed anywhere</font></span>
                    </div>
                </div>
                </div>
                <div class="form-group">
                <div class="row">
               <div class ="col-sm-3">
                    <label for="Address proof number" class="control-label">Email Id<font color="red">*</font> </label></div>
                    <div class="col-sm-4">
                        <input type="email" id="Adhar Card number" name="email" placeholder="Email Id" required class="form-control">
                    </div>
                </div> 
                </div>
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <input type="submit" value="SUBMIT">
                    </div>
                    
                </div>
                
            </form> <!-- /form -->
        </div> <!-- ./container -->
    
</html>