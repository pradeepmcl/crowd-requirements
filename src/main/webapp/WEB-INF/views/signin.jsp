<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="resources/favicon.ico">

<title>Signin to Smart Home Study</title>

<!-- Bootstrap core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<!-- <link href="resources/css/signin.css" rel="stylesheet"> -->

<!--  <script src="../../assets/js/ie-emulation-modes-warning.js"></script>-->

</head>

<body>
 <div class="container">
  <!-- Static navbar -->
  <nav class="navbar navbar-default">
   <div class="container-fluid">
    <div class="navbar-header">
     <button type="button" class="navbar-toggle collapsed"
      data-toggle="collapse" data-target="#navbar" aria-expanded="false"
      aria-controls="navbar">
      <span class="sr-only">Toggle navigation</span> <span
       class="icon-bar"></span> <span class="icon-bar"></span> <span
       class="icon-bar"></span>
     </button>
     <a class="navbar-brand" href="#">Smart Home Requirements</a>
    </div>
    <div id="navbar" class="navbar-collapse collapse">
     <ul class="nav navbar-nav">

     </ul>
     <ul class="nav navbar-nav navbar-right">
      
     </ul>
    </div>
    <!--/.nav-collapse -->
   </div>
   <!--/.container-fluid -->
  </nav>
  <h3 class="form-signin-heading">Please Sign In</h3>
  <form:form id="registrationForm" class="form-horizontal" method="POST"  modelAttribute="user">
   <div class="form-group">
    
    <label class="col-xs-3 control-label">MTurk ID</label>
    <div class="col-xs-5">
     <form:input type="text" class="form-control" path="mturkId"
      placeholder="Amazon Mechanical Turk Worker ID" required="required"
      autofocus="autofocus" />
    </div>
   </div>

   <div class="form-group">
    <label class="col-xs-3 control-label">Terms</label>
    <div class="col-xs-5">
     <div
      style="border: 1px solid #e5e5e5; overflow: auto; padding: 10px;">
      <p>
       This HIT is part of a research study being conducted at North
       Carolina State University (NCSU). Please review the <a
        href="resources/doc/irb-consent.pdf">informed consent</a> form for
       research. By clicking the checkbox below:
      </p>
      <ol>
       <li>You consent to participate in the study, and</li>
       <li>You confirm that you are not currently employed by North
        Carolina State University.</li>
      </ol>
     </div>
    </div>
   </div>

   <div class="form-group">
    <div class="col-xs-6 col-xs-offset-3">
     <div class="checkbox">
      <label> <input type="checkbox" name="agree" value="agree" id="chkConsent"/>
       Agree with the terms and conditions
      </label>
     </div>
    </div>
   </div>

   <button class="col-xs-5 col-xs-offset-3 btn btn-lg btn-primary" type="submit" id="testcheck">
    Sign in</button>
  </form:form>
 </div>
 
 
  <!-- Bootstrap core JavaScript
    ================================================== -->
 <!-- Placed at the end of the document so the pages load faster -->
 <script src="resources/js/jquery.min.js" type="text/javascript"></script>
 <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>

 <script type="text/javascript">
		jQuery(document).ready(function($) {
			$("#testcheck").on('click', function() {
				if (jQuery("#chkConsent").is(":checked")) {
					//alert("Consent Checked");
					return true;
				} else {
					alert("You must agree with Terms and Conditions");
					return false;
				}
			});
		});
	</script>

 <!-- /container -->

 <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
 <!-- <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script> -->
</body>
</html>
