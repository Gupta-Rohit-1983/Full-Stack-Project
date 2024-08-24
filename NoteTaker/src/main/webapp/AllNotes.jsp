<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.notetaker.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Note Taker: All Notes</title>
<%@include file="all_css.jsp"%>

</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>All Notes:</h1>


		<div class="row">
			<div class="col-12">

				<%
				Session s = FactoryProvider.getfactory().openSession();

				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>

				<div class="card mt-3" >
					<div class="card-body">
						<h5 class="card-title"><%=note.getTitle() %></h5>
						<p class="card-text"><%=note.getContent() %></p>
						<a href="DeleteServlet?note_id=<%=note.getId() %>" class="card-link">Delete</a> 
						<a href="Edit.jsp?note_id=<%=note.getId() %>" class="card-link">Edit</a>
					</div>
				</div>


				<%
				}

				s.close();
				%>


			</div>
		</div>



	</div>

</body>
</html>