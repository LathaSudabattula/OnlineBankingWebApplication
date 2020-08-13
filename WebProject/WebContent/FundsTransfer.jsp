<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.List,java.util.ArrayList,com.ts.dao.CustomerDAO,com.ts.dto.Customer,com.ts.dao.AccountsDAO,com.ts.dto.Accounts,com.ts.dto.Beneficiary"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Samridhi Funds Transfer Page</title>
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
  </style>
</head>
<body style="background-color:white;">
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
    margin-left: 512px; 
    }
}
.flip-card {
  background-color: transparent;
  width: 300px;
  height: 300px;
  perspective: 1000px;
}

.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
}

.flip-card-front {
  background-color: #2980b9;
  color: white;
  z-index: 2;
}

.flip-card-back {
  background-color: #2980b9;
  color: white;
  transform: rotateY(180deg);
  z-index: 1;
}

</style>

<% int cId = (Integer)session.getAttribute("customerId");
   CustomerDAO customerDao = new CustomerDAO();
   Customer customer = customerDao.getCustomer(cId);
   Accounts account = customer.getAccount();
   
   session.setAttribute("account", account);
   List<Beneficiary> beneficiary = customer.getBeneficiary();
   List<Beneficiary> validbeneficiary = new ArrayList<Beneficiary>();
   for (Beneficiary beneficiary1 : beneficiary) {
	   if (beneficiary1.getStatus().equalsIgnoreCase("Approved")) {
		   validbeneficiary.add(beneficiary1);
	   }
   }
   session.setAttribute("validbeneficiary",validbeneficiary);
   
 %>

<div class="container" style="margin-top:0px">
  <nav class="navbar navbar-expand-lg navbar-light bg-info text-light py-1 main-nav">
          <div class="container">
            <a class="navbar-brand" href="index.html"><img src="logoonline.jpg" alt="Logo"></a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>

              <div class="collapse navbar-collapse " id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                  
                  <li class="nav-item active">
                    <a class="nav-link  text-uppercase font-weight-bold text-white" href="CustomerLogOutServlet"><i class="fa fa-fw fa-sign-out fa-lg"></i>Logout</a>
                  </li>
                </ul>
              </div>
          </div>
        </nav> 
        
        <marquee BEHAVIOR=SCROLL 
 
     direction="left"
     loop="30"
     scrollamount="5"
     scrolldelay="1"
     behavior="alternate"
     width="100%"
     height="20%"
     bgcolor="white"
     
     ><font color="red">
Dear Online snb users, Internet Banking services will not be accessible to you if your mobile number is not updated in the Bank records. Please register your mobile number immediately to enjoy uninterrupted services.        |          Dear customer, beware of fake sites- before logging into onlinesnb for making transactions, please ensure that the URL address bar begins with https:// with padlock symbol. Click the padlock to check the Security Certificate.        |         Longer the time taken to notify, higher would be the risk of loss to you.        |      Please be cautious.
</font>
</marquee>
 <nav class="navbar navbar-expand-lg navbar-light bg-info text-light py-1">
        <div class="container">
        <div class="collapse navbar-collapse" id="navbarCollapse2">
            <div class="navbar-nav">
              
                <a href="AboutUs.html" class="nav-item nav-link text-white active">About Us<span style="display:inline-block; width: 10px;"></span></a>
                <a href="ContactUs.html" class="nav-item nav-link text-white active">Contact</a><span style="display:inline-block; width: 10px;"></span>
            
                </div>
                </div>
                </div>
    </nav>
<div class="row">
<span style="display:inline-block; width: 17px;"></span>
<font style="background-color:#DEDEE4;height:30px">
Last Login: <%= customer.getLastLogin()%></font>
<span style="display:inline-block; width: 697px;"></span>
<font style="background-color:#DEDEE4;height:30px;width:250px">
Welcome <%=customer.getFirstName() + " " + customer.getLastName()%></font>
</div>
  <div class="row">
    <div class="col-sm-4">
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a class="nav-link active bg-success">Online Services</a>
        </li>
         
        <li class="nav-item">
          <a class="nav-link" href="AccountSummary.jsp"><i class="fa fa-fw fa-list fa-lg" aria-hidden="true"></i><span class="sr-only">(current)</span><b>Account Summary</b></a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="FundsTransfer.jsp"><i class="fa fa-fw fa-exchange fa-lg" aria-hidden="true"></i><b>Funds Transfer</b></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="TransactionHomePage.jsp"><i class="fa fa-fw fa-repeat fa-lg" aria-hidden="true"></i><b>Quick Transfer</b></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="TransactionHistory1.jsp"><i class="fa fa-fw fa-history fa-lg" aria-hidden="true"></i><b>Transaction History</b></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="ManageBeneficiaries.jsp"><i class="fa fa-fw fa-group fa-lg" aria-hidden="true"></i><b>Manage Beneficiaries</b></a>
        </li>
        <li class="nav-item">        
          <a class="nav-link" href="CustomerProfile.jsp"><i class="fa fa-fw fa-user-circle-o fa-lg" aria-hidden="true"></i><b>Profile</b></b></a>
        </li>
      </ul>
      
      <hr class="d-sm-none">
      
    </div>
    <div class="col-sm-8"> 
                   
        <h3>Account Details :</h3></br>
              
        <table class="table" cellspacing="5">
      <tr>
    <th>Account Number :</th>
    <th>Balance :</th>
  </tr>
  
  <tr>
    <td><%=account.getAccountNumber() %></td>
    <td><%=account.getBalance() %></td>
  </tr>
 
        </table>
               <form action="FundsTransferServlet" method="post" class="form-horizontal" class="form-horizontal" role="form">
                 
                   
               
               <h3>Beneficiary Details :</h3>
             <div class="row">
               <table class="table" cellspacing = "1" >
               <tr><td>
                   </br><span style="width:20px"></span> <label for="Account Type" class="col-sm-9 control-label"><span class="req">Select  Beneficiary Account Number<font color="red">*</font></label>
                    <div class="col-sm-4">
                        </td><td></br><select class="dropdown text-secondary" name="bAccNumber"style="width:200px;height:30px">
                        <option disabled selected hidden>Select Account Number</option>
                        <c:forEach var="beneficiary" items="${validbeneficiary}">
                              <option value="${beneficiary.beneficiaryAccNumber}"><c:out value="${beneficiary.beneficiaryAccNumber}" /></option>
                        </c:forEach>
                        </select>
                            
                    </td>
                    </tr>
                    </table> 
                    </div>
                    <div class="row">
                    <span style="width:17px"></span><label for="Amount" class="col-sm-3 control-label"><span class="req">Amount<font color="red">*</font></label>
                    <span style="width:230px"></span><div class="col-sm-4">
                        <input type="text" name="amount" id="Amount" placeholder="Amount" class="form-control" autofocus  required >
                    </div>
                </div>
                </br>
                </br>
                <input type="checkbox" name="Terms&conditions" value="terms"required> I agree the <a href="TermsAndonditions.html">terms and conditions </a><br>
                    </br>
                    <input type="submit" name="submit" class="btn btn-success" value="submit"></br>
                </br>
                </form>
                </div>
        </div>
       
        
                <br/>
    <div class="row">
             <div id="demo" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
    <li data-target="#demo" data-slide-to="3"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="pic.png" alt="Image" height="250" width="1120">   
    </div>
    <div class="carousel-item">
    
      <img src="accounts.png" alt="Image" height="250" width="1120">
    </div>
    <div class="carousel-item">
      <img src="Watch this site reallygreatsite.com (2).png" alt="Image" height="250" width="1120">
    </div>
    <div class="carousel-item">
      <img src="Watch this site reallygreatsite.com (3).png" alt="Image" height="250" width="1120">   
    </div>
  </div>
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
       </div> 
                
    </div>
  </div>
  <br/>
  

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
                 I agree to abide by theq1
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
