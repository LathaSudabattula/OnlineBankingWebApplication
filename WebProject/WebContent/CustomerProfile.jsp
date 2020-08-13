<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.ts.dao.CustomerDAO,com.ts.dto.Customer"%>
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
</style>
</head>
<body style="background-color: white;">
	<style>
img.bg {
	min-height: 100%;
	min-width: 1024px;
	width: 100%;
	height: auto;
	position: fixed;
	top: 0;
	left: 0;
}

@media screen and (max-width: 1024px) {
	img.bg {
		left: 50%;
		margin-left: 512px;
	}
}

* {
	box-sizing: border-box
}

body {
	font-family: Arial, Helvetica, sans-serif;
}

.navbar1 {
	width: 100%;
	background-color: #2F6FA0;
	overflow: auto;
}

.navbar1 a {
	float: left;
	padding: 12px;
	color: white;
	text-decoration: none;
	font-size: 15px;
	width: 25%;
	text-align: center;
}

.navbar1 a:hover {
	background-color: #000;
}

.navbar1 a.active {
	background-color: #4CAF50;
}

@media screen and (max-width: 500px) {
	.navbar1 a {
		float: none;
		display: block;
		width: 100%;
		text-align: left;
	}
}
</style>

<% int cId = (Integer)session.getAttribute("customerId");
CustomerDAO customerDao = new CustomerDAO();
Customer customer = customerDao.getCustomer(cId); %>

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

				<div class="collapse navbar-collapse " id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto">
						
						<li class="nav-item active"><a
							class="nav-link  text-uppercase font-weight-bold text-white"
							href="CustomerLogOutServlet"><i class="fa fa-fw fa-sign-out"></i>Logout</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>

		<marquee BEHAVIOR=SCROLL direction="left" loop="30" scrollamount="5"
			scrolldelay="1" behavior="alternate" width="100%" height="10%"
			bgcolor="white">
			<font color="red"> Important ! Dear Customers donot share your
				Username and Password with others.This may lead to difficult
				situations. </font>
		</marquee>
		<nav
			class="navbar navbar-expand-lg navbar-light bg-info text-light py-1">
			<div class="container">
				<div class="collapse navbar-collapse" id="navbarCollapse2">
					<div class="navbar-nav">
						<a href="AboutUs.html"
							class="nav-item nav-link text-white active">About Us<span
							style="display: inline-block; width: 10px;"></span></a> <a href="ContactUs.html"
							class="nav-item nav-link text-white active">Contact</a><span
							style="display: inline-block; width: 10px;"></span>

					</div>
				</div>
			</div>
		</nav>
		<div class="row">
			<span style="display: inline-block; width: 17px;"></span> <font
				style="background-color: #DEDEE4; height: 30px"> Last Login: <%= customer.getLastLogin()%></font> <span style="display: inline-block; width: 697px;"></span>
			<font style="background-color: #DEDEE4; height: 30px; width: 250px">
				Welcome <%=customer.getFirstName() + " " + customer.getLastName()%></font>
		</div>
		<div class="row">
			<div class="col-sm-4">
				<ul class="nav nav-pills flex-column">
					<li class="nav-item"><a class="nav-link active bg-success">Online
							Services</a></li>

					<li class="nav-item"><a class="nav-link"
						href="AccountSummary.jsp"><i class="fa fa-fw fa-list fa-lg"
							aria-hidden="true"></i><span class="sr-only">(current)</span><b>Account
								Summary</b></a></li>
					<li class="nav-item"><a class="nav-link"
						href="FundsTransfer.jsp"><i class="fa fa-fw fa-exchange fa-lg"
							aria-hidden="true"></i><b>Funds Transfer</b></a></li>
					<li class="nav-item"><a class="nav-link"
						href="TransactionHomePage.jsp"><i
							class="fa fa-fw fa-repeat fa-lg" aria-hidden="true"></i><b>Quick
								Transfer</b></a></li>
					<li class="nav-item"><a class="nav-link"
						href="TransactionHistory1.jsp"><i
							class="fa fa-fw fa-history fa-lg" aria-hidden="true"></i><b>Transaction
								History</b></a></li>
					<li class="nav-item"><a class="nav-link"
						href="ManageBeneficiaries.jsp"><i
							class="fa fa-fw fa-group fa-lg" aria-hidden="true"></i><b>Manage
								Beneficiaries</b></a></li>
					<li class="nav-item"><a class="nav-link active"
						href="CustomerProfile.jsp"><i class="fa fa-fw fa-user-circle-o fa-lg"
							aria-hidden="true"></i><b>Profile</b></b></a></li>
				</ul>

				<hr class="d-sm-none">

			</div>
			<div class="col-sm-8">
				<h4>
					<b>My Profile
				</h4>
				</b><br />
				<div class="row">
					<div class="col-sm-4">
						<label for="CustomerId"control-label">Customer Id :</label>
					</div>
					<div class="col-sm-4">
						<label for="CustomerId"control-label"><%=customer.getCustomerId()%></label>
					</div>
				</div>
				<br />
				<div class="row">
					<div class="col-sm-4">
						<label for="First Name"control-label">First Name :</label>
					</div>
					<div class="col-sm-4">
						<label for="First Name"control-label"><%=customer.getFirstName()%></label>
					</div>
				</div>
				<br />
				<div class="row">
					<div class="col-sm-4">
						<label for="Last Name"control-label">Last Name :</label>
					</div>
					<div class="col-sm-4">
						<label for="Last Name"control-label"><%=customer.getLastName()%></label>
					</div>
				</div>
				<br />
				<div class="row">
					<div class="col-sm-4">
						<label for="Gender"control-label">Gender :</label>
					</div>
					<div class="col-sm-4">
						<label for="Gender"control-label"><%=customer.getGender()%></label>
					</div>
				</div>
				<br />
				<div class="row">
					<div class="col-sm-4">
						<label for="Date Of Birth"control-label">Date Of Birth :</label>
					</div>
					<div class="col-sm-4">
						<label for="Date Of Birth"control-label"><%=customer.getDateOfBirth()%></label>
					</div>
				</div>
				<br />
				<div class="row">
					<div class="col-sm-4">
						<label for="Phone Number"control-label">Phone Number :</label>
					</div>
					<div class="col-sm-4">
						<label for="Phone Number"control-label"><%=customer.getPhno()%></label>
					</div>
				</div>
				<br />
				<div class="row">
					<div class="col-sm-4">
						<label for="Address Proof Type"control-label">Address
							Proof Type :</label>
					</div>
					<div class="col-sm-4">
						<label for="Address Proof Type"control-label"><%=customer.getAddressProof()%></label>
					</div>
				</div>
				<br />
				<div class="row">
					<div class="col-sm-4">
						<label for="Address Proof Number"control-label"> <%=customer.getAddressProof() + " "%>Number :</label>
					</div>
					<div class="col-sm-4">
						<label for="Address Proof Number"control-label"><%=customer.getAddressNumber()%></label>
					</div>
				</div>
				<br />
				<div class="row">
					<div class="col-sm-4">
						<label for="AadharNumber"control-label">Aadhar Number :</label>
					</div>
					<div class="col-sm-4">
						<label for="AadharNumber"control-label"><%=customer.getAadharNumber()%></label>
					</div>
				</div>
				<br />
				<div class="row">
					<div class="col-sm-4">
						<label for="Email"control-label">Email :</label>
					</div>
					<div class="col-sm-4">
						<label for="Email"control-label"><%=customer.getCustomerEmail()%></label>
					</div>
				</div>
				<br />
				<br />
				<br /> <i class="fa fa-fw fa-lightbulb-o fa-lg" aria-hidden="true"></i><span
					style="display: inline-block; width: 5px;"></span> <b>In case
					of Data Mismatch,Kindly mail to us to update your details in the
					bank records</b>
			</div>
		</div>

	</div>
	<br/>

	<br/>


	<div class="jumbotron text-center">
		<footer class="page-footer font-small blue pt-0">
			<div class="row">

				<div class="col-sm-4">
					<b><p>Information & Research Help</p></b>
					<p>630-844-5437 (phone)</p>
					<p>630-844-3848 (fax)</p>
					<p>630-796-7615 (text)</p>
				</div>

				<div class="col-sm-4">
					<b><p>@SAMRIDHI Terms and conditions</p></b>
					<p>I agree to abide by the</p>
					<b>
						<p>Bank's Terms and Conditions</p>
					</b>
					<p>and rules and the changes</p>
					<p>in terms and conditions.</p>

				</div>
				<div class="col-sm-4">
					<b><p>e-mail</p></b>
					<p>SNBonline@gmail.com
				</div>
			</div>
		</footer>
</body>
</html>
