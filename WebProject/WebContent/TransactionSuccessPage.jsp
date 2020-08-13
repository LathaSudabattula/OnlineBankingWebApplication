<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.List,java.util.ArrayList,com.ts.dao.TransactionsDAO,com.ts.dto.Transactions,com.ts.dao.AccountsDAO,com.ts.dto.Accounts, com.ts.dto.Customer"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<title>Samridhi Transaction Summary Page</title>
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
<% Transactions transaction= (Transactions)session.getAttribute("transaction");
   long bAccNo = transaction.getBeneficiaryAccNo();
   long accNo = (Long)session.getAttribute("accountNumber");
   double amount = transaction.getAmount();
   AccountsDAO accountsDao = new AccountsDAO();
   Accounts accounts = accountsDao.getAccount(accNo);
   Accounts baccounts = accountsDao.getAccount(bAccNo);
   String bAccName = baccounts.getCustomer().getFirstName() +  " " + baccounts.getCustomer().getLastName();
   Customer customer = accounts.getCustomer();
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
          <a class="nav-link" href="FundsTransfer.jsp"><i class="fa fa-fw fa-exchange fa-lg" aria-hidden="true"></i><b>Funds Transfer</b></a>
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
    <span style="display:inline-block; width: 2000px;"><a class="nav-link text-uppercase font-weight-bold text-success" href="#">Transaction Summary<span class="sr-only">(current)</span></a>   
             <nav class="navbar navbar-expand-lg navbar-light py-1 main-nav">
             <div class="alert alert-success">
          
    <i class="fa fa-check-circle" style="font-size:28px; color:green"><span style="display:inline-block; width:10px;color:"""></i>Transaction Successful<span class="sr-only">(current)</span></a>   </a>
    <span style="display:inline-block; width: 500px;">
                    </span>
                    </div>
                    </nav>
            </span>
             </nav>
            
             <div class="container">          
  <table class="table" cellspacing="5">
    <tbody>
      <tr>
        <td>Date :</td>
        <td><%=transaction.getTransactionDate()%></td>
        </tr>
        <tr>
        <td>Transaction Id :</td>
        <td><%=transaction.getTransactionId()%></td>
        </tr>
        <tr>
        <td>Account Number :</td>
        <td><%=accNo%></td>
        </tr>
        <tr>
        <td>Current Balance :</td>
        <td><%=accounts.getBalance() %></td>
        </tr>
        </tbody>
        </table>
       
        
        
        <table class="table" cellspacing="5">
    <tbody>
    <h4>Beneficiary Details</h4>
    <tr>
        <td>Account Number:</td>
        <td><%=bAccNo %></td>
        </tr>
      <tr>
        <td>Name :</td>
        <td><%=bAccName %></td>
      </tr>
      <tr>
        <td>Amount :</td>
        <td><%=amount %></td>
        </tr>
        </tbody>
        </table>
        
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
