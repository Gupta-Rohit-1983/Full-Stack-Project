<%@page import="com.notetaker.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_css.jsp"%>

</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
	
		<h1>Edit Your Note</h1>
		<br>
		
		<%
		int noteId=Integer.parseInt(request.getParameter("note_id").trim());
		
		Session s = FactoryProvider.getfactory().openSession();
		Note note = (Note)s.get(Note.class, noteId);
		
		
		%>
		
		<form action="UpdateServlet" method="post">
		
		<input value="<%=note.getId() %>" name="noteId" type="hidden" />
			<div class="form-group">
				<label for="title">Note Title</label> 
				<input 
				name="title"
				type="text" 
				class="form-control" 
				id="title"
				aria-describedby="emailHelp"
				placeholder="Enter your title" 
				value="<%=note.getTitle() %>"
				required>	 	
			</div>
			<div class="form-group">
				<label for="content">Note Content</label> 
				<textarea 
				name="content" 
				class="form-control" 
				id="content" 
				placeholder="Enter your content here" 
				style="height: 300px" required><%=note.getContent() %></textarea>
			</div>
			
			<div class="container text-center" >
				<button type="submit" class="btn btn-primary">Save Note</button>
			</div>
		</form>
	</div>
</body>
</html>