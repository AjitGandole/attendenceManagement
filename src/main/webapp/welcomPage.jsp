<%@page import="com.entity.user"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
user user = (user) session.getAttribute("user-ob");
if (user == null) {

	session.setAttribute("login-msg", "Please Login First....");
	response.sendRedirect("login.jsp");

}
%>

<html lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Student Attendance System</title>
<script src="https://cdn.tailwindcss.com">
  </script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	rel="stylesheet" />
<script>
   function toggleMenu() {
            document.getElementById('mobile-menu').classList.toggle('hidden');
        }
  </script>
</head>
<body class="bg-gray-100">
	<header class="bg-gray-800 text-white p-4 flex items-center justify-between">
		<div class="flex items-center">
			<img alt="Logo" class="h-8 mr-2" height="50"
				src="https://storage.googleapis.com/a1aa/image/9OL9gYrhH9bkJ4vUXaz0SUpOl2EC6GgzVVGnX-Xu8Dw.jpg"
				width="50" />
			<h1 class="text-xl font-bold">Attendance Management</h1>
		</div>
		<nav class="hidden md:flex space-x-4">
			<a class="hover:underline" href="#"> Dashboard </a>
			<a class="hover:underline" href="#"> Students Activity </a> 
			<a class="hover:underline" href="#"> Students Attendance </a> 
			<a class="hover:underline" href="#"> Attendance Reports </a> 
			<a class="hover:underline" href="#"> Leave Management </a> 
			<a class="hover:underline" href="#"> Reports </a>
		</nav>
		<a class="hover:underline" href="#"> <%
				user user1 = (user) session.getAttribute("user-ob");
				%> <%
				if (user != null) {
				%>
			
				<%=user1.getName()%>
			
			
			<%} %>
			
			</a>
		<button class="md:hidden" onclick="toggleMenu()">
			<i class="fas fa-bars"> </i>
		</button>
	</header>
	<div class="hidden md:hidden bg-gray-800 text-white p-4"
		id="mobile-menu">
		<nav class="flex flex-col space-y-2">
			<a class="hover:underline" href="#"> Dashboard </a>
			<a class="hover:underline" href="#"> Students Activity </a> 
			<a class="hover:underline" href="#"> Students Attendance </a> 
			<a class="hover:underline" href="#"> Attendance Reports </a> 
			<a class="hover:underline" href="#"> Leave Management </a> 
			<a class="hover:underline" href="#"> Reports </a>
		</nav>
	</div>
	<main class="p-4">
		<section class="mb-4">
			<h2 class="text-xl font-bold mb-2">ADMIN MANAGEMENT</h2>
			<div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
				<div class="bg-white p-4 rounded shadow">
					<p class="text-2xl font-bold text-orange-500">0</p>
					<p>REGISTERED STUDENTS</p>
				</div>
				<div class="bg-white p-4 rounded shadow">
					<p class="text-2xl font-bold text-orange-500">0</p>
					<p>TODAY'S PRESENT STUDENTS</p>
				</div>
				<div class="bg-white p-4 rounded shadow">
					<p class="text-2xl font-bold text-orange-500">0</p>
					<p>TODAY'S ABSENT STUDENTS</p>
				</div>
				<div class="bg-white p-4 rounded shadow">
					<p class="text-2xl font-bold text-orange-500">0</p>
					<p>STUDENTS FEEDBACK</p>
				</div>
				<div class="bg-white p-4 rounded shadow">
					<p class="text-2xl font-bold text-orange-500">0</p>
					<p>ACTIVE STUDENTS</p>
				</div>
				<div class="bg-white p-4 rounded shadow">
					<p class="text-2xl font-bold text-orange-500">0</p>
					<p>INACTIVE STUDENTS</p>
				</div>
				<div class="bg-white p-4 rounded shadow">
					<p class="text-2xl font-bold text-orange-500">0</p>
					<p>APPROVED LEAVE REQUEST</p>
				</div>
				<div class="bg-white p-4 rounded shadow">
					<p class="text-2xl font-bold text-orange-500">0</p>
					<p>LEAVE REQUEST PENDING</p>
				</div>
			</div>
		</section>
		<section>
			<h2 class="text-xl font-bold mb-2">ATTENDANCE SYSTEM ALL REPORTS
				[ 4 JUL, 2020 9:41:22 AM ]</h2>
			<div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
				<div
					class="bg-white p-4 rounded shadow flex justify-between items-center">
					<p>Attendance Report</p>
					<button class="bg-blue-500 text-white px-4 py-2 rounded">
						Generate Reports</button>
				</div>
				<div
					class="bg-white p-4 rounded shadow flex justify-between items-center">
					<p>All Students Report</p>
					<button class="bg-blue-300 text-white px-4 py-2 rounded">
						Generate Reports</button>
				</div>
				<div
					class="bg-white p-4 rounded shadow flex justify-between items-center">
					<p>Student Active &amp; Deactive Report</p>
					<button class="bg-gray-500 text-white px-4 py-2 rounded">
						Generate Reports</button>
				</div>
				<div
					class="bg-white p-4 rounded shadow flex justify-between items-center">
					<p>Student Feedback Report</p>
					<button class="bg-yellow-500 text-white px-4 py-2 rounded">
						Generate Reports</button>
				</div>
				<div
					class="bg-white p-4 rounded shadow flex justify-between items-center">
					<p>Pending Leave Report</p>
					<button class="bg-red-500 text-white px-4 py-2 rounded">
						Generate Reports</button>
				</div>
				<div
					class="bg-white p-4 rounded shadow flex justify-between items-center">
					<p>Approved Leave Report</p>
					<button class="bg-green-500 text-white px-4 py-2 rounded">
						Generate Reports</button>
				</div>
			</div>
		</section>
	</main>
</body>
</html>


<%-- <%
    // Check if user is not logged in
    if (session.getAttribute("user") == null) {
%>
    <script type="text/javascript">
        alert("You must be logged in to access this page!");
        window.location.href = "<%= application.getContextPath() %>/login.jsp"; // Redirect to login page
    </script>
<%
    }
%> --%>






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