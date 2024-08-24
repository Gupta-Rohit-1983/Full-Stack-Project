<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Note Taker: Add Note</title>
<%@include file="all_css.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>

		<h1>Add Your Notes</h1>
		<br>

		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note Title</label> 
				<input 
				name="title"
				type="text" 
				class="form-control" 
				id="title"
				aria-describedby="emailHelp"
				placeholder="Enter your title" required>	 	
			</div>
			<div class="form-group">
				<label for="content">Note Content</label> 
				<textarea 
				name="content" 
				class="form-control" 
				id="content" 
				placeholder="Enter your content here" 
				style="height: 300px" required></textarea>
			</div>
			
			<div class="container text-center" >
				<button type="submit" class="btn btn-primary">Add Note</button>
			</div>
		</form>
	</div>
</body>
</html>