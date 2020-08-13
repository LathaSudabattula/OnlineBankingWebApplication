<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<title>Samridhi Customer Profile Page</title>
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
    <strong>New User! Register here / Activate</strong> 
    <br/>
    </div>
    <form action="HomeRequestsServlet" method = "post">
    <div class="form-check">
    <select class="dropdown text-secondary" name="choice" style="width:270px;height:30px">
                        <option disabled selected hidden>Select Option</option>
                        <option value="newuser">New User Registration</option>
                        <option value="newaccount">New account</option>
                        </select>
                </div><br/> 
            <div class="form-check">
                 <input type="submit" value="Proceed">
            </div>
            </div>
            </div>
        </form><br/><br/>
        <div class="container">
            <font color="orange"><center><u><h2>For Your Own Security</h2></u></center></font>
            <div class="row">
                <div class="col-sm-12">
                <p><span1>&#8594;</span1>Phishing is a fraudulent attempt, usually made through email, phone calls, SMS etc seeking your personal and confidential information.
                </p>
                <p><span1>&#8594;</span1>Samridhi National Bank or any of its representative never sends you email/SMS or calls you over phone to get your personal information,password or one time SMS (high security) password.
                </p>
                <p><span1>&#8594;</span1> Any such e-mail/SMS or phone call is an attempt to fraudulently withdraw money from your account through Internet Banking.
                </p>
                <p> <span1>&#8594;</span1>Never respond to such email/SMS or phone call. Please report immediately on SNBonline@gmail.com if you receive any such email/SMS or Phone call. 
                </p>
                <p><span1>&#8594;</span1>Please lock your user access immediately, if you have accidentally revealed your credentials.Click here to lock.
                </p>
                </div>
            </div>
        </div>
</html>