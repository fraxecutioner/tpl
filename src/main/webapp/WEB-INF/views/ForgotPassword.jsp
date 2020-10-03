<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>
 <!-- Favicon -->
  <link href="../assets/img/brand/favicon.png" rel="icon" type="image/png">
  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <!-- Icons -->
  <link href="../assets/js/plugins/nucleo/css/nucleo.css" rel="stylesheet" />
  <link href="../assets/js/plugins/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link href="../assets/css/argon-dashboard.css?v=1.1.0" rel="stylesheet" />
  
  
  <script>
function onLoad()
{
	$('#otpContainer').hide();
	$('#passContainer').hide();
	$('#sendOTPCon').show();
}

function buttonClickOTP()
{
	
	$('#otpContainer').show();
	$('#sendOTPCon').hide();
	var value =document.getElementById("email").value;
//ajax call to send otp 
	$.ajax({
		type : "GET",
		url : "${pageContext.request.contextPath}/ResetPass/sendOTP",
		dataType : "json",
		data : {
			"id" : value
		},
		success : function(data) {
			for (i in data) {

				alert(data[i]);
			}
			$('#lablOtp').show();
			
		},
		error : function(data) {

			
		}
	});
	}
function buttonClickPass()
{
	
	

	
	}
function buttonClickSubOTP()
{
	var value =document.getElementById("otp").value;
	if(value=='1234'){
		
	
	$('#otpContainer').hide();
	
	$('#passContainer').show();
	}
	else
		{
alert('Invalid OTP');
		}
	}

  </script>
</head>
<body onload="onLoad()" style="background-image: url('/images/bg-01.jpg');">
 <div class="main-content" >
    <!-- Header -->
  <br>
      <div class="container">
        <div class="header-body text-center mb-7">
          <div class="row justify-content-center">
            <div class="col-lg-5 col-md-6">
              <h1 class="text-white">The Predictor League</h1>
             
            </div>
          </div>
        </div>
      </div>
     <br>
     
     <div class="container mt--8 pb-5">
      <!-- Table -->
      <div class="row justify-content-center">
        <div class="col-lg-6 col-md-8">
          <div class="card bg-secondary shadow border-0">
          
          <div class="card-body px-lg-5 py-lg-5">
              <div class="text-center text-muted mb-4">
                <small>Forgot Password</small>
              </div>
              <%-- <form:form action="processregisterForm" method="POST"
			modelAttribute="login"> --%>
                <div class="form-group" id="sendOTPCon">
                  <div class="input-group input-group-alternative mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-hat-3"></i></span>
                      		<input path="emailId" name="emailid" type="text" id="email"
							class="form-control" placeholder="Email"  />
						 
						
                    </div>
                    </div>
                    <div class="text-center" > 
                  <button  id="sendOTP" class="btn btn-primary mt-4" onclick="buttonClickOTP()">Send OTP</button>
                </div>
                    </div>
                    <div class="form-group" id="otpContainer">
                      <div class="input-group input-group-alternative mb-3" >
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-hat-3"></i></span>
                      		<input path="otp" name="otp" type="text" id="otp"
							class="form-control" placeholder="otp" />
						 
						
                    </div>
                   
                    </div>
                    <a href="#" onclick="buttonClickOTP()">Resend OTP</a> 
                    <br>
                    <span id="lablOtp" style="display:none">Otp sent </span>
                             <div class="text-center" > 
                  <button  id="buttonSubmit" class="btn btn-primary mt-4" onclick="buttonClickSubOTP()">Submit OTP</button>
                </div>
                    
                    </div>
                    <div id="passContainer">
                                    <div class="form-group" >
                  <div class="input-group input-group-alternative">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                    </div>
                    
                  <input path="password" name="pass" type="password"
							class="form-control" placeholder="Password"/>
						
                    
                  
                  </div>
                </div>
                
                
                
                                     <div class="form-group">
                  <div class="input-group input-group-alternative">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                    </div>
                    
       <input path="confirmPassword" name="pass" type="password"
							class="form-control" placeholder="Confirm Password" />
						
                    
                  
                  </div>
                </div>
                        <div class="text-center" > 
                  <button  id="buttonPass" class="btn btn-primary mt-4" onclick="buttonClickPass()">Change Password</button>
                </div>
                </div>
                 
                    
                 
                   <%--  </form:form> --%>
                    </div>
                    
          </div>
          </div>
          </div>
          </div>
          
 </div>
  <!-- Footer -->
  <footer class="py-5">
    <div class="container">
      <div class="row align-items-center justify-content-xl-between">
        <div class="col-xl-6">
          <div class="text-white">
            &copy; 2020 <a href="#"  class="text-white" target="_blank">Rain Inc</a>
          </div>
        </div>
   <!--      <div class="col-xl-6">
          <ul class="nav nav-footer justify-content-center justify-content-xl-end">
            <li class="nav-item">
              <a href="https://www.creative-tim.com" class="nav-link" target="_blank">Creative Tim</a>
            </li>
            <li class="nav-item">
              <a href="https://www.creative-tim.com/presentation" class="nav-link" target="_blank">About Us</a>
            </li>
            <li class="nav-item">
              <a href="http://blog.creative-tim.com" class="nav-link" target="_blank">Blog</a>
            </li>
            <li class="nav-item">
              <a href="https://github.com/creativetimofficial/argon-dashboard/blob/master/LICENSE.md" class="nav-link" target="_blank">MIT License</a>
            </li>
          </ul>
        </div> -->
      </div>
    </div>
  </footer>
  <!--   Core   -->
  <script src="../assets/js/plugins/jquery/dist/jquery.min.js"></script>
  <script src="../assets/js/plugins/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <!--   Optional JS   -->
  <!--   Argon JS   -->
  <script src="../assets/js/argon-dashboard.min.js?v=1.1.0"></script>
  <script src="https://cdn.trackjs.com/agent/v3/latest/t.js"></script>
</body>
</html>