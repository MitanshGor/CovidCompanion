<%@page import="Bean.HospitalBedBean"%>
<%@page import="Bean.HospitalBean"%>
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
<style>
.a{
box-shadow: 0 0 30px rgba(0,0,0,0.5);
	overflow: hidden;
	border-radius: 25px;
	padding: 30px;
	font-size: large;
	
}
</style>
</head>
<body>
<%
HospitalBean h =(HospitalBean)session.getAttribute("SessionHospitalBean");
HospitalBedBean hb =(HospitalBedBean)session.getAttribute("SessionHospitalBedBean");
int id=h.getHospId();
%>

	<div class="row">
		<div class="col-3"></div>
		<div class="col-6"><strong><center  style="margin-top: 20px;"><h2 style="font-size: 60px;">Update Beds</h2></center></strong></div>
		<div class="col-3"><a href="Home.jsp" ><button class="btn btn-outline-dark btn-lg" style="margin-top: 50px;margin-left: 0px;">LogOut</button></a></div>
	</div>

	
		<hr>
	

		<div class="row" >
		<div class="col-2">
		</div>
		<form  action="hospitalChangeBedDetailServlet" class="col-8 a">
					<div class="row">
						<div class="col">
							<div class="form-group">
							
								<input type="hidden" value="<%=id%>" name="id">
								<label>Total Isolation Beds</label>
								<input type="number" class="form-control"  aria-describedby="emailHelp" min="0"  name="TotalIsolation" value="<%=hb.getTotalIsolation()%>">
								
							</div>
						</div>
						<div class="col">
							<div class="form-group">
									<label>Vacant Isolation Beds</label>
									<input type="number" class="form-control"  aria-describedby="emailHelp" min="0"  name="VacentIsolation"  value="<%=hb.getVacentIsolation() %>">
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col">
							<div class="form-group">
															<label>Total HDU Beds</label>
														<input type="number" class="form-control"  aria-describedby="emailHelp" min="0"  name="TotalHDU" value="<%= hb.getTotalHDU() %>">
	
							</div>
						</div>
						<div class="col">
							<div class="form-group">
											<label>Vacant HDU Beds</label>
									<input type="number" class="form-control"  aria-describedby="emailHelp" min="0"   name="VacentHDU"  value="<%=hb.getVacentHDU() %>">
	
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col">
							<div class="form-group">
									<label>Total ICU Beds With Ventilator </label>
									<input type="number" class="form-control"  aria-describedby="emailHelp" min="0"  name="TotalICUV"  value="<%=hb.getTotalICUV() %>"> 
	
							</div>
						</div>
						<div class="col">
							<div class="form-group">
												<label>Vacant ICU Beds with Ventilator</label>
									<input type="number" class="form-control"  aria-describedby="emailHelp" min="0"   name="VacentICUV" value="<%=hb.getVacentICUV() %>">
		
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col">
							<div class="form-group">
									<label>Total ICU Beds Without Ventilator</label>
									<input type="number" class="form-control"  aria-describedby="emailHelp" min="0"   name="TotalICUNV"  value="<%=hb.getTotalICUNV()%>">
	
							</div>
						</div>
						<div class="col">
							<div class="form-group">
										<label>Vacant ICU Beds Without Ventilators</label>
										<input type="number" class="form-control"  aria-describedby="emailHelp" min="0"  name="VacentICUNV" value="<%=hb.getVacentICUNV() %>">
							</div>
						</div>
					</div>
					
		<button class="btn btn-outline-dark btn-block">Update</button>
		
		</form> 
			<div class="col-2">
		</div>	
	</div>
		<!-- 		
		-->
	
		
</body>
</html>