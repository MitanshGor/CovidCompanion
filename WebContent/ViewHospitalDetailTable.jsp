<%@page import="Bean.HospitalBedBean"%>
<%@page import="Bean.HospitalBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="HeaderNavBar.jsp" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>

</head>
<body>

	<form action="ViewHospitalDetailTableServlet">
		<label for="cars">Enter PinCode To Search :</label>
		<input type="text" value="0" name="PinSearch">
		<input type="submit">
	</form>
	
	<%
		ArrayList<HospitalBedBean> list=(ArrayList<HospitalBedBean>)request.getAttribute("List");	
	if(!list.isEmpty())
	{
	%>
	<div class="table-responsive ">
		<table class="table table-hover  ">
		<tr class="bg-info text-center">
			<th>Name </th>		
	        <th>Email</th>
	        <th>ContactNo</th>
	        <th>City</th>
	        <th>Pincode</th>
	     <th> Isolation<br>(C) </th>
	     <th>Isolation<br>(V)</th>
	     <th> HDU<br>(C)</th>
	     <th> HDU<br>(V)</th>
	     <th> ICUV<br>(C)</th>
	     <th> ICUV<br>(V)</th>
	     <th> ICUNV<br>(C)</th>
	     <th> ICUNV<br>(V)</th>

	        
	    </tr>
	    
	    <%
	    	for(HospitalBedBean h : list)
	    	{
	    %>    
	    	<tr class="text-center table-secondary text-dark">
	    		<td><%=h.getHospName() %></td>
				<td><%=h.getEmail() %></td>
	            <td><%=h.getContactNo() %></td>
	            <td><%=h.getCity()%></td>
	            <td><%=h.getPincode()%></td>
	            <td><%=h.getTotalIsolation()%></td>
	            <td><%=h.getVacentIsolation()%></td>
	            <td><%=h.getTotalHDU()%></td>
	            <td><%=h.getVacentHDU()%></td>
	            <td><%=h.getTotalICUV()%></td>
	            <td><%=h.getVacentICUV()%></td>
	            <td><%=h.getTotalICUNV()%></td>
	            <td><%=h.getVacentICUNV()%></td>	
	           
	    	</tr>
	    	<%}%>
	    
	    </table>
    </div>
	<% }%>
	<%if(list.isEmpty()) 
		{%>
				<h1><center>pincode Not Available</center></h1>
	    <%} %>
</body>
</html>