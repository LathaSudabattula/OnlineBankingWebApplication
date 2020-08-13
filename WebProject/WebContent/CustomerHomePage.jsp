<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.ArrayList,com.ts.dao.CustomerDAO, com.ts.dto.Customer"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<title>Samridhi Customer Home Page</title>
<link rel ="icon" type="image/ico" href="only globe.jpg"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <style>
  .fakeimg {
    height: 200px;
    background: #aaa;
  }
  .dropbtn {
  background-color: white;
  color: #2D97DC;
  padding: 8px;
  font-size: 16px;
  font-color: #2D97DC;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: white;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: blue;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: white;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: white;}
  </style>
</head>
<body>
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


@media screen and (max-width: 1024px){
    img.bg {
    left: 50%;
    margin-left: 512px; }
}
</style>
<% int cId = (Integer)session.getAttribute("cId"); 
   //int accNo = (Integer)session.getAttribute("accNo");
   String userName = (String)session.getAttribute("userName");
   CustomerDAO customerDao = new CustomerDAO();
   Customer customer = customerDao.getCustomer(userName);
   session.setAttribute("customer", customer);
   //System.out.println(redgCustomer);
   //System.out.println(accNo);
   System.out.println(userName);
%>
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
                    <a class="nav-link text-uppercase font-weight-bold text-white" href="index.html"><i class="fa fa-fw fa-home fa-lg"></i>Home<span class="sr-only">(current)</span></a>
                  </li>
     
                  <li class="nav-item active">
                    <a class="nav-link  text-uppercase font-weight-bold text-white" href="CustomerLogin.html"><i class="fa fa-fw fa-sign-out fa-lg"></i>Logout</a>
                  </li>
                </ul>
              </div>
          </div>
        </nav>


  <div class="row">
    <div class="col-sm-4">
      <br/>
      <br/>
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a class="nav-link active bg-success">Online Services</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="AccountSummary.jsp"><i class="fa fa-fw fa-list fa-lg" aria-hidden="true"></i><b>Account Summary</b></a>
        </li>
        <li class="nav-item">
         <a class="nav-link" href="AddBeneficiary.jsp"><i class="fa fa-fw fa-user-plus fa-lg" aria-hidden="true"></i><b>Add Beneficiary</b></a>         
        </li>
        <li class="nav-item">
         <a class="nav-link" href="TransactionHomePage.jsp"><i class="fa fa-fw fa-repeat fa-lg" aria-hidden="true"></i><b>Quick Transfer</b></a>         
        </li>
        <li class="nav-item">
         <a class="nav-link" href="FundsTransfer.jsp"><i class="fa fa-fw fa-exchange fa-lg" aria-hidden="true"></i><b>Funds Transfer</b></a>         
        </li>
        <li class="nav-item">
          <a class="nav-link" href="TransactionHistory.jsp"><i class="fa fa-fw fa-history fa-lg" aria-hidden="true"></i><b>Transaction History</b></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="RequestForAnother.jsp"><i class="fa fa-fw fa-group fa-lg" aria-hidden="true"></i><b>Request for another Account</b></a>
        </li>
        <li class="nav-item">
        
          <a class="nav-link" href="CustomerProfile.jsp"><i class="fa fa-user-circle-o fa-lg" aria-hidden="true"></i><b>Profile</b></b></a>
        </li>
      </ul>
      
      <hr class="d-sm-none">
    </div>
    <div class="col-sm-8">
      <div class="topright">
      <p align="right">Welcome..${customer.firstName} ${customer.lastName}</p>
    </div>
    
    </div>
    </div>
    
  </div>
</div>

<div class="jumbotron text-center" style="margin-bottom:0">
  <footer class="page-footer font-small blue pt-0">
     <div class="row">
   
         <div class="col-sm-4">
             <b><p>
                 Information & Research Help
             </p></b>
             <p>
                 630-844-5437 (phone)
             </p>
             <p>
                 630-844-3848 (fax)
             </p>
             <p>
                 630-796-7615 (text)
             </p>
         </div>
         
          <div class="col-sm-4">
             <b><p>
                 @SAMRIDHI Terms and conditions
             </p></b>
             <p>
                 I agree to abide by the
             </p>
            <b> <p>
                Bank's Terms and Conditions 
             </p></b>
             <p>
                and rules and the changes
             </p>
             <p>
                in terms and conditions.
             </p>
             
         </div>
         <div class="col-sm-4">
             <b><p>
                e-mail 
             </p></b>
             <p>
                SNBonline@gmail.com
             </div>
</div>
</footer>
</body>
</html>
