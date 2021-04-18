<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Myth</title>
  <link rel="stylesheet" href="./style.css">
<style>

@import url(https://fonts.googleapis.com/css?family=Raleway);

#heading{
  position: absolute;
  top : -20%;
  left : 10%;
  right : 5%;
}

h1{
  position:absolute;
  top:10%;
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
body {
  color: #333;
  background: #fcfcfc;
  font-family: 'Raleway', sans-serif;
  overflow-x: hidden;
}

.faq-header{
  font-size: 42px;
  border-bottom: 1px dotted #ccc;
  padding: 24px;
  position : absolute;
  top:10%;
  height:1000px;
  width:1500px;
}

.faq-content {
  margin: 0 auto;
  height:1000px;
}

.faq-question {
  padding: 20px 0;
  border-bottom: 1px dotted #ccc;
}

.panel-title {
  font-size: 24px;
  width: 100%;
  position: relative;
  margin: 0;
  padding: 10px 10px 0 48px;
  display: block;
  cursor: pointer;
}

.panel-content {
  font-family: 'Antonio', sans-serif;
font-family: 'Fjalla One', sans-serif;
font-family: 'IBM Plex Sans', sans-serif;
font-family: 'Mukta', sans-serif;
font-family: 'Roboto Condensed', sans-serif;
  width:900px;
  font-size: 20px;
  padding: 0px 14px;
  margin: 0 40px;
  height: 0;
  overflow: hidden;
  z-index: -1;
  position: relative;
  opacity: 0;
  -webkit-transition: .4s ease;
  -moz-transition: .4s ease;
  -o-transition: .4s ease;
  transition: .4s ease;
}

.panel:checked ~ .panel-content{
  height: auto;
  opacity: 1;
  padding: 14px;
}

.plus {
  position: absolute;
  margin-left: 20px;
  margin-top: 4px;
  z-index: 5;
  font-size: 42px;
  line-height: 100%;
  -webkit-user-select: none;    
  -moz-user-select: none;
  -ms-user-select: none;
  -o-user-select: none;
  user-select: none;
  -webkit-transition: .2s ease;
  -moz-transition: .2s ease;
  -o-transition: .2s ease;
  transition: .2s ease;
}

.panel:checked ~ .plus {
  -webkit-transform: rotate(45deg);
  -moz-transform: rotate(45deg);
  -o-transform: rotate(45deg);
  transform: rotate(45deg);
}
.hhh{
text-decoration: none;
color: white;
}
.panel {
  display: none;
}
</style>
</head>
<body>   
     <nav>
   <a href="Home.jsp" class="hhh"><p id="heading"><b>Covid Companion</b></a> 
    </p>
  </nav>

<div class="faq-header">
  <h2>Myths</h2>

<div class="faq-content">
  <div class="faq-question">
    <input id="q1" type="checkbox" class="panel">
    <div class="plus">+</div>
    <label for="q1" class="panel-title">Taking a hot bath does not prevent COVID-19</label>
    <div class="panel-content">
      <p>
        Taking a hot bath will not prevent you from catching COVID-19. Your normal body temperature remains around 36.5°C to 37°C, regardless of the temperature of your bath or shower. Actually, taking a hot bath with extremely hot water can be harmful, as it can burn you. The best way to protect yourself against COVID-19 is by frequently cleaning your hands. By doing this you eliminate viruses that may be on your hands and avoid infection that could occur by then touching your eyes, mouth, and nose.      </p>
    </div>
  </div>
  
  <div class="faq-question">
    <input id="q2" type="checkbox" class="panel">
    <div class="plus">+</div>
    <label for="q2" class="panel-title">Drinking methanol, ethanol or bleach DOES NOT prevent or cure COVID-19 and can be extremely dangerous</label>
    <div class="panel-content">
      <p>
        Methanol, ethanol, and bleach are poisons. Drinking them can lead to disability and death. Methanol, ethanol, and bleach are sometimes used in cleaning products to kill the virus on surfaces – however you should never drink them. They will not kill the virus in your body and they will harm your internal organs.
To protect yourself against COVID-19, disinfect objects and surfaces, especially the ones you touch regularly. You can use diluted bleach or alcohol for that. Make sure you clean your hands frequently and thoroughly and avoid touching your eyes, mouth and nose.
      </p>
    </div>
  </div>
  
  <div class="faq-question">
    <input id="q3" type="checkbox" class="panel">
    <div class="plus">+</div>
    <label for="q3" class="panel-title">Thermal scanners CANNOT detect COVID-19</label>
    <div class="panel-content">
      <p>
        Thermal scanners are effective in detecting people who have a fever (i.e. have a higher than normal body temperature). They cannot detect people who are infected with COVID-19. There are many causes of fever. Call your healthcare provider if you need assistance or seek immediate medical care if you have fever and live in an area with malaria or dengue      </p>
    </div>
  </div>
  
   <div class="faq-question">
    <input id="q4" type="checkbox" class="panel">
    <div class="plus">+</div>
    <label for="q4" class="panel-title">Being able to hold your breath for 10 seconds or more without coughing or feeling discomfort DOES NOT mean you are free from COVID-19</label>
    <div class="panel-content">
      <p>
       The most common symptoms of COVID-19 are dry cough, tiredness and fever. Some people may develop more severe forms of the disease, such as pneumonia. The best way to confirm if you have  the virus producing COVID-19 disease is with a laboratory test.  You cannot confirm it with this breathing exercise, which can even be dangerous.      </p>
    </div>
  </div>
 
   <div class="faq-question">
    <input id="q5" type="checkbox" class="panel">
    <div class="plus">+</div>
    <label for="q5" class="panel-title">Ultra-violet (UV) lamps should NOT be used to disinfect hands or other areas of your skin</label>
    <div class="panel-content">
      <p> 
       UV radiation can cause skin irritation and damage your eyes.<br>
Cleaning your hands with alcohol-based hand rub or washing your hands with soap and water are the most effective ways to remove the virus.

      </p>
    </div>
  </div>
  
   <div class="faq-question">
    <input id="q6" type="checkbox" class="panel">
    <div class="plus">+</div>
    <label for="q6" class="panel-title">Eating garlic does NOT prevent COVID-19</label>
    <div class="panel-content">
      <p>
       Garlic is a healthy food that may have some antimicrobial properties. However, there is no evidence from the current outbreak that eating garlic has protected people from the new coronavirus.
      </p>
    </div>
  </div>
  
  
  
</div>
    </div>
    
    