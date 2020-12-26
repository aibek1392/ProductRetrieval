<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.service.Record" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Product</title>
</head>
<body>
	<div style="text-align:center; margin-top:10%">
		<div>
			<h1 style="margin-left:25%;
					   padding:10px;
					   width:50%;
					   text-align: center;
					   background: #1abc9c; 
					   color: white;
					   font-size: 40px;"
			>
				Product Search
			</h1>
		</div>
		<% 
			Record r = new Record();
			int total= r.getRecords();
		%>
		<div>
			<p>Please use the form below to search for product <br>
			 Our current product lines offer Models 1 to <%= total %></p>
		</div>
		<form action="Retrieval" method="post">
			Enter a product ID<input type="number" required="required" name="product_id"> <br> 
				<input type="hidden" name="total"  value="<%=total %>">
			<input style="background-color:aqua; margin-top: 5pt" type="submit">
		</form>
	</div>
</body>
</html>	