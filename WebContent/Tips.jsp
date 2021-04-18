<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Tips</title>
  <link rel="stylesheet" href="./style.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Antonio:wght@700&family=Fjalla+One&family=IBM+Plex+Sans:ital@1&family=Roboto+Condensed:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP&family=Open+Sans&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Antonio:wght@700&family=Fjalla+One&family=Roboto+Condensed:wght@700&display=swap" rel="stylesheet">

<style>
	#heading{
  position: absolute;
  color:white;
  top : -20%;
  left : 10%;
  right : 5%;
}
.hhh{
	text-decoration: none;
	color:white;
}
h1{
  position:absolute;
  font-size : 40px;
  font-family: 'Noto Sans JP', sans-serif;
 font-family: 'Open Sans', sans-serif; 
 top:10%
}

nav{
  text-align:center;
  font-size:35px;
  color: white;
  
 background: #8360c3;  
background: -webkit-linear-gradient(to right, #2ebf91, #8360c3); 
background: linear-gradient(to right, #2ebf91, #8360c3); 
  
	box-shadow:0px 1px 5px rgba(0,0,0,0.4);
	height:80px;
	position:fixed;
	top:0;
	left:0;
	width:100%;
	z-index:100;
}


body{
  font-family: 'Roboto', sans-serif;
  margin: 0;
  pading: 0;
  /*background-color: #bcd4e6 */
}

#list{
  font-size:30px;
  font-weight: 300;
font-family: 'Antonio', sans-serif;
font-family: 'Fjalla One', sans-serif;
font-family: 'IBM Plex Sans', sans-serif;
font-family: 'Roboto Condensed', sans-serif;
   line-height: 1.6;

}

.container{
  position:absolute;
  top:60%;
  left:55%;
  transform: translate(-50%,-50%);
  width: 1000px;
  height: auto;  
  padding: 40px;
  background: #fff;
  border-radius:50px;
  box-shadow: 0 15px 50px rgba(0,0,0,.9);
}
</style>
</head>
  <body>
    
     <nav>
   <a href="Home.jsp" class="hhh"> <p id="heading"><b>Covid Companion</b> </a>
    </p>
  </nav>
    
    <h1> To prevent the spread of COVID-19: </h1>
    <br>
    
    <div class="container">
      <div class="box">
        <p id="list">
          #	Clean your hands often. Use soap and water, or an alcohol-based hand rub.<br>
          #	Maintain a safe distance from anyone who is coughing or sneezing.<br>
#	Wear a mask when physical distancing is not possible.<br>
#	Don't touch your eyes, nose or mouth.<br>
#	Cover your nose and mouth with your bent elbow or a tissue when you cough or sneeze.<br>
#	Stay home if you feel unwell.<br>
#	If you have a fever, cough and difficulty breathing, seek medical attention.<br>
</p>
  </div>        
    </div>
  </body>
</html>
<!-- partial -->
