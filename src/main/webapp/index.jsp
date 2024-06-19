<!--
Made by Sarah BERGERE
Student number : 24030008
-->
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="library/jquery.js"></script>
    <link rel="icon" href="img/me.jfif" type="image/icon type">
    <link rel="stylesheet" href="css/index.css">  <!-- CSS file specifically for the home page -->
    <link rel="stylesheet" href="css/menu.css">   <!-- CSS file for the menu that is displayed on all pages -->
    <script src="js/index.js" type="text/javascript"></script>
    <script src="js/menu.js"></script>
    <title>My Portfolio</title>
</head>
<body>
    <%@include file="WEB-INF/includes/titleBar.jsp"%>   <!-- inclusion of the title bar and the menu -->
   <%@include file="WEB-INF/includes/menu.jsp"%>
    
    <div class="central">   <!-- The main part of the web page-->
        <div class="informations">   <!-- Informations about me -->
            <h3>Basic information :</h3>
            <div class="both">       <!-- Here I encapsulated the two divs so that I could put one on the left and the other on the right -->
                <div class="introduce_me">
                    <p>Name : Sarah or 白吉</p>
                    <p>Age : 21 years old</p>
                    <p>Nationality : French <img src="img/french.png" alt="French Flag" width="16" height="16"></p>
                    <p>Education: 4th year, CY Tech, France</p>
                </div>
                <div class="image">
                    <img src="img/me.jfif" alt="user image">
                </div>
            </div>
        </div>
    
        <div class="career_goal">
            <h3>Career Goals :</h3>
            <p>When I finish my studies I would like to work in cybersecurity in a company in France. I am also open to the opportunity of working abroad for a year
                to gain experience.</p>
        </div>
    
        <div class="post-it">  <!-- Here I did the same things as before so that I could put one div on the left and the other on the right -->
            <div class="experience">
                <h3>My experience :</h3>
                <ul>
                    <li class="myExperience">Internship in a company as a Software Engineer for 3 months during the summer of 2023.</li>
                    <li class="myExperience" id="schoolProject" >School projects :
    
                    </li>
                </ul>
            </div>
    
            <div class="skills">
                <h3>Skills :</h3>
                <p>Technical skills :</p>
                <ul>
                    <li>Java, C, Prolog</li>
                    <li>HTML, CSS, PHP, JS</li>
                    <li>Computer network, database</li>
                </ul>
    
                <p>Languages spoken :</p>
                <ul>
                    <li>French</li>
                    <li>English</li>
                    <li>Spanish</li>
                </ul>
            </div>
        </div>
        <br>
        <div class="interest">
            <h3>My interests :</h3>
            <div class="sub">
                <div class="subInterest">
                    <img src="img/books.jfif" alt="Image of books">
                    <p>In my spare time I love reading books of different genres.</p>
                </div>
                <div class="subInterest">
                    <img src="img/swim.jfif"
                         alt="someone swimming in a pool, shot in the water from underneath the person swimming">
                    <p>If I have time I like to swim, I learned when I was 3 years old. It helps clearing my mind.</p>
                </div>
                <div class="subInterest">
                    <img src="img/travel.jfif" alt="Image of famous monuments on earth">
                    <p>I also love discovering new cultures and landscapes.</p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>