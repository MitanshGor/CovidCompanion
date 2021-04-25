<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

	#toggle{
			display: none;
	}
	
	.toggleArea{
		display: none;
		}
	
	@media screen  and (max-width : 1000px) {
		.nav{
			flex-direction: column;
			display: none;
		}
		.btn-outline-danger:hover{
		color: white;
		font-weight:bolder;
		background-color: transparent;
		
			}	
		.btn-outline-danger:active{
		outline: none;
		}
		#toggle:checked + .nav
		{
			display: flex;
		}
		.toggleArea{
			display: flex;
		}
	}
	.AppName{
		font-weight:bolder;
		font-size: large;
		color: White;
		
		text-shadow: 0 0 30px rgba(0,0,0,0.5);
		overflow: hidden;
	
		letter-spacing: 3px;
		font-size: 50px;
	
	}
	.toggleArea{
		background-color: transparent;
		color: white;
		padding: 10px;
		justify-content: flex-end;	
	}
	.toggleArea label
	{
		text-decoration: none;
		color: black;
		background-color: white;
		border-radius: 10px;
		width: 50px;
		height: 45px;
		display: flex;
		justify-content: center;
		align-items: center;
		cursor: pointer;
		flex-direction: column;
	}
	.toggleArea label span{
			background-color: #32BA92;
			height: 4px;
			width: 75%;
			margin: 2.5px 0px;
	}
</style>
</head>
<body>

	<div class="row align-center"  style="background-color: #32BA92;">				  
		<div class="col-7">
			<img src="Images/lungblue1.jpg" alt="Logo Image" width="230px" height="100px">
			<a href="index.jsp"  class=""><span class="AppName">Covid Companion</span></a>
		</div>
		<div class="col-5 align-self-center">		
			  <div class="toggleArea">
				<label href="#" for="toggle">
					<span></span>
					<span></span>
					<span></span>
				</label>
			</div>
	<input type="checkbox" id="toggle">
	
		
		</div>
	</div>
</body> 
</html>	 
<!-- 

     <nav>
     <img src="Images\lungblue1.jpg">
    <p id="heading"><b>Covid Companion</b> 
    </p>
  
  </nav>

 -->
