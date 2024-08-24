<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Success Page</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-color: #f2f2f2;
}

.success-container {
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	text-align: center;
}

.success-container h2 {
	color: #4CAF50;
	margin-bottom: 20px;
}

.success-container p {
	font-size: 18px;
	color: #333;
}

.success-container a {
	display: inline-block;
	margin-top: 20px;
	padding: 10px 20px;
	background-color: #4CAF50;
	color: white;
	text-decoration: none;
	border-radius: 4px;
}

.success-container a:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<div class="success-container">
		<h2>Operation Successful</h2>
		<p>Your Operation Done Successfully</p>
		<a href="index.jsp">Go to Home</a>
	</div>
</body>
</html>
