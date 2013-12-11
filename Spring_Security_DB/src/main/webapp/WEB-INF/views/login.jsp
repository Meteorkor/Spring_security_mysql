<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Login Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/js/bootstrap.min.js"></script>


<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css" />


<style>
.errorblock {
	color: #ff0000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
          body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
      }

      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }


</style>


</head>
<body onload='document.f.j_username.focus();'>
	
 <div class="container">
 
 <h3>Login with Username and Password (Authentication with Database)</h3>
 <c:if test="${not empty error}">
		<div class="errorblock">
			Your login attempt was not successful, try again.<br /> Caused :
			${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
		</div>
	</c:if>
	<form name='f' action="<c:url value='j_spring_security_check' />"
		method='POST' class="form-signin">
		
		<h2 class="form-signin-heading">Please sign in</h2>
        <input type="text" class="input-block-level" name='j_username' placeholder="ID">
        <input type="password" class="input-block-level" placeholder="Password" name='j_password'>
	<!-- cookie
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
          
        </label>
 -->
        <button class="btn btn-large btn-primary" type="submit">Sign in</button>
    
	</form>
	<div>
	${sessionScope["SPRING_SECURITY_CONTEXT"]} 
	</div>
	
</div>

	
	
</body>
</html>