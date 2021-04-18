<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>FAQ</title>
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

.panel {
  display: none;
}
.hhh{
text-decoration: none;
color: white;
}
	</style>
</head>
<body>

     <nav>
   <a href="Home.jsp" class="hhh"> <p id="heading"><b>Covid Companion</b></a> 
    </p>
  </nav>

<div class="faq-header">
  <h2>Frequently Asked Questions</h2>

<div class="faq-content">
  <div class="faq-question">
    <input id="q1" type="checkbox" class="panel">
    <div class="plus">+</div>
    <label for="q1" class="panel-title">As a smoker, is my risk of getting the COVID-19 virus higher than that of a non-smoker?</label>
    <div class="panel-content">
      <p>
        At the time of preparing this Q&A, there are no peer-reviewed studies that have evaluated the risk of SARS-CoV-2 infection associated with smoking. However, tobacco smokers (cigarettes, waterpipes, bidis, cigars, heated tobacco products) may be more vulnerable to contracting COVID-19, as the act of smoking involves contact of fingers (and possibly contaminated cigarettes) with the lips, which increases the possibility of transmission of viruses from hand to mouth. Smoking waterpipes, also known as shisha or hookah, often involves the sharing of mouth pieces and hoses, which could facilitate the transmission of the COVID-19 virus in communal and social settings.
      </p>
    </div>
  </div>
  
  <div class="faq-question">
    <input id="q2" type="checkbox" class="panel">
    <div class="plus">+</div>
    <label for="q2" class="panel-title">What is contact tracing?</label>
    <div class="panel-content">
      <p>
        Contact tracing is the process of identifying, assessing, and managing people who have been exposed to a disease to prevent onward transmission. These people are called contacts. Contact tracing for COVID-19 requires identifying people who may have been exposed to SARS-CoV-2, the virus that causes COVID-19, and following them daily for 14 days. The goal is to stop transmission of the virus by reducing the number of people who are circulating with the virus.
      </p>
    </div>
  </div>
  
  <div class="faq-question">
    <input id="q3" type="checkbox" class="panel">
    <div class="plus">+</div>
    <label for="q3" class="panel-title">How should I wash fruits and vegetables in the time of COVID-19?</label>
    <div class="panel-content">
      <p>
        Wash fruit and vegetables the same way you would in any other circumstance. Before handling them, wash your hands with soap and water. Then wash fruits and vegetables thoroughly with clean water, especially if you eat them raw. 
      </p>
    </div>
  </div>
  
   <div class="faq-question">
    <input id="q4" type="checkbox" class="panel">
    <div class="plus">+</div>
    <label for="q4" class="panel-title">Can someone who has tested positive for COVID-19 be cared for at home?</label>
    <div class="panel-content">
      <p>
       People with no symptoms should be able to stay at home, if adequately isolated from others, but this should be confirmed by a doctor. Those with mild or moderate disease can be considered for home care if they are under the age of 60, do not smoke, are not obese, and do not have other diseases such as cardiovascular disease, diabetes mellitus, chronic lung disease, cancer, chronic kidney disease, immunosuppression.
A health worker will assess risk factors along with the person’s symptoms, medical history and ability for the family to manage the care. Household members need to limit shared spaces, practice the recommended hygiene and know how to recognize and respond to signs of worsening health.
A trained health worker will need to assess whether the home in question is suitable for the isolation and care of a COVID-19 patient, and proper infection prevention control measures are put in place. Trained health workers are also important to support the patient and family in the home, or by phone, telemedicine, or outreach teams.
      </p>
    </div>
  </div>
 
   <div class="faq-question">
    <input id="q5" type="checkbox" class="panel">
    <div class="plus">+</div>
    <label for="q5" class="panel-title">Are pregnant women at higher risk from COVID-19?</label>
    <div class="panel-content">
      <p> 
        #	Pregnant women or recently pregnant women who are  older, overweight, and have pre-existing medical conditions such as hypertension and diabetes seem to have an increased  risk of developing severe COVID-19. When pregnant women develop severe disease, they also seem to more often require care in intensive care units than non-pregnant women of reproductive age.<br><br>
#	Due to changes in their bodies and immune systems, we know that pregnant women can be badly affected by some respiratory infections. It is therefore important that they take precautions to protect themselves against COVID-19, and report possible symptoms (including fever, cough or difficulty in breathing) to their healthcare provider.<br><br>
#	WHO will continue to review and update its information and advice as more evidence becomes available.<br>

      </p>
    </div>
  </div>
  
   <div class="faq-question">
    <input id="q6" type="checkbox" class="panel">
    <div class="plus">+</div>
    <label for="q6" class="panel-title">In communities where COVID-19 is prevalent, should mothers breastfeed?</label>
    <div class="panel-content">
      <p>
       Yes. In all socio-economic settings, breastfeeding improves survival and provides lifelong health and development advantages to newborns and infants. Breastfeeding also improves the health of mothers.
      </p>
    </div>
  </div>
  
  
  
</div>
    </div>
    
