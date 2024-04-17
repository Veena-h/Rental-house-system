<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="f.css">

</head>
<body>
<div class="login-wrap">

<!--login  -->

   <form action="login_servlet" method="post">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">Email Address</label>
					<input id="user" type="email" class="input" name="email" required="required">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" type="password" class="input" data-type="password" name="password" required="required">
				</div>
				<div class="group">
					<input id="check" type="checkbox" class="check" checked>
					<label for="check"><span class="icon"></span> Keep me Signed in</label>
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign In">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="#forgot">Forgot Password?</a>
				</div>
				<%
			   HttpSession session2=request.getSession();
			  String s=(String)request.getSession().getAttribute("name");
			%>
				<%-- <h1 style="background-color: black;"><%=s %></h1>
 --%>				
			</div>
			
			
			
			</form>
			
			
			<!--  register-->
			<form  action="register_servlet" method="post">
			<div class="sign-up-htm">
				<div class="group">
					<label for="user" class="label">Username</label>
					<input id="user" type="text" class="input" name="name" required="required">
				</div>
				<div class="group">
					<label for="pass" class="label">Email Address </label>
					<input id="pass" type="email" class="input"  name="email" required="required"> 
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" type="password" class="input" data-type="password" name="password" required="required">
				</div>
				<div class="group">
					<label for="pass" class="label">Repeat Password</label>
					<input id="pass" type="password" class="input" name="re_password" required="required">
				</div>
				<!-- <div class="group">
					<label for="pass" class="label">Choose</label>
					<input id="pass" type="password" class="input" name="re_password" required="required">
				</div> -->
				<div class="group">
					<input type="submit" class="button" value="Sign Up">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<label for="tab-1">Already Member?</a>
				</div>
				
			</form>	
				
				
				
				
				
				
			</div>
		</div>
	</div>
</div>
</body>
</html>