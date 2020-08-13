<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.List,java.util.ArrayList,com.ts.dao.CustomerDAO,com.ts.dto.Customer,com.ts.dao.AccountsDAO,com.ts.dto.Accounts,com.ts.dto.Employee,com.ts.dao.EmployeeDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<title>Samridhi employee Home Page</title>
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
  <a class="active" href="EmployeePage.jsp">Employee</a> 
  <a href="ManagerProfile.jsp">Profile</a>
</div>
</div>

 <div class="row">
<span style="display:inline-block; width: 17px;"></span>
<font style="background-color:#DEDEE4;height:30px">
Last Login:<%= " " + employee.getLastLogin()%></font></font>
<span style="display:inline-block; width: 700px;"></span>
<font style="background-color:#DEDEE4;height:30px;width:250px">
Welcome <%=employee.getfName() + " " + employee.getlName()%></font>

</div>
<br/>
  <div class="row">
    <div class="col-sm-4">
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a class="nav-link active bg-success">Services</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="ViewAllEmployees.jsp"><b>View All Employees</b></a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="AddEmployee.jsp"><b>Add Employee</b></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="DeleteEmployee.jsp"><b>Delete Employee</b></a>
        </li>
      </ul>
      
    </div>
    
    <div class="col-sm-8">
            </br>
            <h2>Employee Details</h2>
            <br/>
            <form action="AddEmployeeServlet" method="post">
                <div class="row">
                    <label for="First Name" class="col-sm-3 control-label">First Name :</label>
                    <div class="col-sm-5">
                        <input type="text" id="First Name" name="fName" placeholder="First Name"required class="form-control" autofocus>
                    </div>
                </div>
                </br>
                <div class="row">
                    <label for="Last Name" class="col-sm-3 control-label">Last Name :</label>
                    <div class="col-sm-5">
                        <input type="text" id="Last Name" name="lName" placeholder="Last Name"required class="form-control" autofocus>
                    </div>
                </div>
                </br>
                <div class="form-group">
                <div class="row">
                <div class="col-sm-3">
                    <label class="control-label">Gender :</label></div>
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
               
                <div class="row">
                    <label for="Phone Number" class="col-sm-3 control-label">Phone Number :</label>
                    <div class="col-sm-5">
                        <input type="text" id="Phone Number" name="ePhno" placeholder="Phone Number"required class="form-control" autofocus>
                    </div>
                </div>
                </br>
                <div class="row">
                    <label for="E-Mail" class="col-sm-3 control-label">E-Mail :</label>
                    <div class="col-sm-5">
                        <input type="text" id="E-Mail" name="eEmail" placeholder="E-Mail"required class="form-control" autofocus>
                    </div>
                </div>
                <br/>
                <div class="row">
                    <label for="Job" class="col-sm-3 control-label">Job :</label>
                    <div class="col-sm-5">
                        <input type="text" name="job" id="Job" placeholder="Job"required class="form-control" autofocus>
                    </div>
                </div>
                </br>
                <div class="row">
                    <label for="Salary" class="col-sm-3 control-label">Salary :</label>
                    <div class="col-sm-5">
                        <input type="text" name="salary" id="Salary" placeholder="Salary"required class="form-control" autofocus>
                    </div>
                </div>
                </br>
                <br/>
                
                <input type="submit" value="SUBMIT">
  </form>
  </div>
</div>
</div><br/><br/>
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
