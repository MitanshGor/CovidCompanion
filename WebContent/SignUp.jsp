
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
	<strong><center  style="margin-top: 20px;"><h2 style="font-size: 60px;">Signup</h2></center></strong>
		<hr>
		
		
		 <div class="row">
		 	<div class="col-2"></div>
		 	<div class="col-8 a">
					<form action="HospSignup" id="HospitalSignup" >
							<div class="row card-deck">
								<div class="col-6">
										
												<div class="form-group">
													<label>HospitalName</label>
													<input class="form-control"  aria-describedby="emailHelp" type="text" name="HospName" >
												</div>
												<div class="form-group">
										
													<label>Email</label>
													<input class="form-control"  aria-describedby="emailHelp" type="text" name="Email" >
											</div>
											<div class="form-group">
										
													<label>ContactNo</label>
													<input class="form-control"  aria-describedby="emailHelp" type="text" name="ContactNo" >
											</div>
											<div class="form-group">
												
													<label>Password</label>
													<input class="form-control"  aria-describedby="emailHelp" type="text" name="Password" >
												</div>
										</div>		
								<div class="col-6">
												<div class="form-group">
											
														<label>City</label>
														<input class="form-control"  aria-describedby="emailHelp"  type="text" name="City" >
												</div>		
												<div class="form-group">
											
														<label>Gst</label>
														<input class="form-control"  aria-describedby="emailHelp" type="text" name="GST" >
												</div>
												<div class="form-group">
													
														<label>Pincode</label>
														<input class="form-control"  aria-describedby="emailHelp" type="text" name="Pincode" >
												</div>
														<input class="btn-outline-dark btn-block" type="submit" style="padding: 5px;margin-top: 46px;">	
					</div>
				</div>
						
		</form>		 	
		 	</div>
		 	<div class="col-2"></div>
		</div>



</body>
<script>
	
</script>
</html>