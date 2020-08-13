<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.List,java.util.ArrayList,com.ts.dao.CustomerDAO,com.ts.dto.Customer,com.ts.dao.AccountsDAO,com.ts.dto.Accounts,com.ts.dto.Employee,com.ts.dao.EmployeeDAO,com.ts.dto.Beneficiary"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>Samridhi Manager Home Page</title>
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
</style>
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
.navbar1 {
  width: 100%;
  background-color:#17a2b8;
  overflow: auto;
  margin-left:13px;
  margin-right:13px;
}

.navbar1 a {
  float: left;
  padding: 12px;
  color: white;
  text-decoration: none;
  font-size: 15px;
  width: 10%; 
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
<%int empId = (Integer)session.getAttribute("empId");
EmployeeDAO employeeDao = new EmployeeDAO();
Employee employee = employeeDao.getEmployee(empId);%>
<div class="container" style="margin-top:30px">
  <nav class="navbar navbar-expand-lg navbar-light bg-info text-light py-1 main-nav">
          <div class="container">
            <a class="navbar-brand" href="index.html"><img src="logoonline.jpg" alt="Logo"></a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>

              <div class="collapse navbar-collapse " id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                 
                  <li class="nav-item active">
                    <a class="nav-link  text-uppercase font-weight-bold text-white" href="ManagerLogOutServLet"><i class="fa fa-fw fa-sign-out fa-lg"></i>Logout</a>
                  </li>
                </ul>
              </div>
          </div>
        </nav>
        </br>

<div class="row">
    <div class="navbar1">
  <a href="ManagerHomePage.jsp">Customer</a> 
  <a href="EmployeePage.jsp">Employee</a> 
  <a class="active" href="ManagerProfile.jsp">Profile</a>
</div>
</div>
   <div class="row">
<span style="display:inline-block; width: 17px;"></span>
<font style="background-color:#DEDEE4;height:30px">
Last Login:<%= " " + employee.getLastLogin()%></font>
<span style="display:inline-block; width: 700px;"></span>
<font style="background-color:#DEDEE4;height:30px;width:250px">
Welcome <%=employee.getfName() + " " + employee.getlName()%></font>
</div>
<br/>
<div class="row">
<div class="col-sm-8">  
    <h4><b>My Profile</h4></b><br/>     
        <div class="row">
        <div class="col-sm-4">
            <label for="CustomerId" control-label">Manager Id :</label>
            </div>
            <div class="col-sm-4">
                 <label for="CustomerId" control-label">100</label>
            </div>
        </div><br/>
        <div class="row">
        <div class="col-sm-4">
            <label for="First Name" control-label">First Name :</label>
            </div>
            <div class="col-sm-4">
                  <label for="First Name" control-label">Jahnavi</label>
            </div>
        </div><br/>
        <div class="row">
        <div class="col-sm-4">
            <label for="Last Name" control-label">Last Name :</label>
            </div>
           <div class="col-sm-4">
                  <label for="Last Name" control-label">kvs</label>
            </div>
        </div><br/>
        <div class="row">
        <div class="col-sm-4">
            <label for="Salary" control-label">Salary:</label>
            </div>
            <div class="col-sm-4">
                 <label for="Salary" control-label">50000</label>
            </div>
        </div><br/>
        <div class="row">
        <div class="col-sm-4">
            <label for="Gender" control-label">Gender :</label>
            </div>
            <div class="col-sm-4">
                 <label for="Gender" control-label">Female</label>
            </div>
        </div><br/>
        <div class="row">
        <div class="col-sm-4">
            <label for="Address Proof Number" control-label">Phone Number:</label>
            </div>
            <div class="col-sm-4">
                 <label for="Address Proof Number" control-label">9569871230</label>
            </div>
        </div><br/>
        <div class="row">
        <div class="col-sm-4">
            <label for="Email" control-label">Date Of Join :</label>
            </div>
            <div class="col-sm-4">
                 <label for="Email" control-label">2017-09-08</label>
            </div>
        </div><br/>
        <div class="row">
        <div class="col-sm-4">
            <label for="Email" control-label">Email :</label>
            </div>
            <div class="col-sm-4">
                 <label for="Email" control-label">jahnavikvs@gmail.com</label>
            </div>
        </div><br/><br/><br/>
        </div>
        <div class="col-sm-4">
        <img src="img_avatar2.png" width='300',height='300'></img>
        </div>
        </div>