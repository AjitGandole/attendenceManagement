<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log-in</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<%= application.getContextPath()%>/css/style.css">

</head>
<body>
	<!--navbar Start  -->

	<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
		<a class="navbar-brand" href="#">Navbar</a>


		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="index.jsp">Home </a></li>
				<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="register.jsp">Register</a>
				</li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>

	<!--navbar End  -->


	<div class="container">
		<div class="row mt-4">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header text-center c-head text-white">
						<i
							class="fa fa-user-circle fa-2x d-flex justify-content-center align-items-center"></i>
						<h4>Login</h4>
					</div>

					<%
				String	logOutMsg=(String)session.getAttribute("logout-msg");
					if(logOutMsg!=null){
						%>
					<div class="alert alert-success" role="alert"><%= logOutMsg %></div>


					<%
					session.removeAttribute("logout-msg");
					}
					
					%>

					<!-- Error-msg -->
					<%String errorMsg=(String)session.getAttribute("error-msg");
					if(errorMsg!=null){
					
					%>
					<div class="alert alert-danger" role="alert"><%= errorMsg %></div>
					<%
					session.removeAttribute("error-msg");
					}
					
					%>

					<div class="card-body">
						<form action="<%= application.getContextPath() %>/loginServlet"
							method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="email">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="password">
							</div>
							<a href="forgetPassword">Forget Password</a>
							<button type="submit"
								class="btn btn-primary btn-block badge-pill">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>









	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
</body>
</html>