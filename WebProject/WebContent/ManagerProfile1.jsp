<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.ts.dao.EmployeeDAO,com.ts.dto.Employee"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<html>
<title>Manager Profile</title>
<link rel="icon" type="image/ico"href="only globe.png">
<head>
<style>
body, html {
  height: 100%;
}

.bg { 
  /* The image used */
  background-image: url("back2.jpg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
label {
    width:180px;
    clear:left;
    text-align:right;
    padding-right:10px;
}

input, label {
    float:left;
}
body{
    margin-top:20px;
    background:#F0F8FF;
}
.card {
    margin-bottom: 1.5rem;
    box-shadow: 0 1px 15px 1px rgba(52,40,104,.08);
}
.card {
    position: relative;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-direction: column;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid #e5e9f2;
    border-radius: .2rem;
}
.card-header:first-child {
    border-radius: calc(.2rem - 1px) calc(.2rem - 1px) 0 0;
}
.card-header {
    border-bottom-width: 1px;
}
.card-header {
    padding: .75rem 1.25rem;
    margin-bottom: 0;
    color: inherit;
    background-color: #fff;
    border-bottom: 1px solid #e5e9f2;
}
</style>
<%EmployeeDAO employeeDAO = new EmployeeDAO();
int empId = (Integer)session.getAttribute("empId");
Employee employee = employeeDAO.getEmployee(empId);
session.setAttribute("employee", employee);
%>
</head>
<body background="back2.jpg">
<div class="container">
<nav class="navbar navbar-expand-lg navbar-light bg-info text-light py-1 main-nav">
          
            <a class="navbar-brand" href="index.html"><img src="logoonline.jpg" alt="Logo"></a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>

              <div class="collapse navbar-collapse " id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link text-uppercase font-weight-bold text-white" href="Image1.html">Home<span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item active">
                    <a class="nav-link text-uppercase font-weight-bold text-white" href="index.html"><i class="fa fa-fw fa-home"></i>Logout<span class="sr-only">(current)</span></a>
                  </li>
                </ul>
              </div>
          </div>
        </nav>
        </div>
<div class="container p-0">

    <h1 class="h3 mb-3"><center>WELCOME TO MANAGER PROFILE</center></h1>

    
            <div class="tab-content">
                <div class="tab-pane fade show active" id="profile" role="tabpanel">
                    <div class="card">
                        <div class="card-header">
                            <center><h4 class="card-title mb-0">Profile</h4></center>
                        </div>
                        <div class="card-body">
                            <form align = center>
                                <div class="row">
                                        <div class="form-group">
                                        <div class="text-center">
                                        <div class="col-lg">
                                           <img  src="managerfinal.png"  class="center rounded-circle img-responsive mt-1" width="128" height="128">  
                                           </div>
                                            </div>
                                            </div>
                                            </div>
                                            <div class="row">
                                           <span style="width:50"></span>
                                         <label for="inputManagerId" class="col-mod-6 control-lable">Manager Id :</label>
                                         <div class="col-sm-5">
                                        <input type="text" class="form-control" id="inputMangerId" value="${employee.empId }" readonly placeholder="Manager Id">
                                        </div>
                                        </div>
                                        </br>
                                         <div class="row">
                                           <span style="width:50"></span>
                                        <label for="inputFirstName class="col-mod-6 control-label">First name :</label>
                                        <div class="col-sm-5">
                                        <input type="text" class="form-control" id="inputFirstName" value="${employee.fName}" readonly placeholder="First name">
                                        </div>
                                        </div>
                                        </br>
                                        <div class="row">
                                           <span style="width:50"></span>
                                        <label for="inputLastName class="col-mod-6 control-label">Last name :</label>
                                        <div class="col-sm-5">
                                        <input type="text" class="form-control" id="inputLastName" value="${employee.lName}" readonly placeholder="Last name">
                                        </div>
                                        </div>
                                        </br>
                                        <div class="row">
                                           <span style="width:50"></span>
                                        <label for="inputSalary class="col-mod-6 control-label">Salary :</label>
                                        <div class="col-sm-5">
                                        <input type="double" class="form-control" id="inputSalary" value="${employee.salary}" readonly placeholder="Salary">
                                        </div>
                                        </div>
                                        </br>
                                        <div class="row">
                                           <span style="width:50"></span>
                                        <label for="inputJob" class="col-mod-6 control-label">Job :</label>
                                        <div class="col-sm-5">
                                        <input type="text" class="form-control" id="inputJob" value="${employee.job}" readonly placeholder="Job">
                                        </div>
                                        </div>
                                        </br>
                                        <div class="row">
                                           <span style="width:50"></span>
                                        <label for="inputUserName class="col-mod-6 control-label">User name :</label>
                                        <div class="col-sm-5">
                                        <input type="text" class="form-control" id="inputUserName" value="${employee.userName}" readonly placeholder="User name">
                                        </div>
                                        </div>
                                        </br>
                                        <div class="row">
                                           <span style="width:50"></span>
                                        <label for="inputPhone class="col-mod-6 control-label">Phone Number :</label>
                                        <span style="width50"></span>
                                        <div class="col-sm-5">
                                        <span style="width50"></span>
                                        <input type="text" class="form-control" id="inputPhone" value="${employee.ePhno}" readonly placeholder="Phone Number">
                                        </div>
                                        </div>
                                        </br>
                                        <div class="row">
                                           <span style="width:50"></span>
                                        <label for="inputEmail class="col-mod-6 control-label">Email :</label>
                                        
                                        <div class="col-sm-5">
                                        <span style="width50"></span>
                                        <input type="email" class="form-control" id="inputEmail" value="${employee.eEmail}" readonly placeholder="Email">
                                        </div>
                                        </div>
                                        </br>
                            </form>
                    </div>
                </div>           
                </div>
    </div>
</div>
</html>