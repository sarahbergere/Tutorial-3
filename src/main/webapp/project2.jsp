<!--
Made by Sarah BERGERE
Student number : 24030008
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Project 2</title>
    <link rel="stylesheet" href="css/project.css">  <!-- CSS file specifically for the project 2 page -->
    <link rel="stylesheet" href="css/menu.css">     <!-- CSS file for the menu that is displayed on all pages -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <script src="library/jquery.js"></script>
    <script src="js/menu.js"></script>
    <script src="js/project.js"></script>
    <script src="js/titleBar.js"></script>
</head>
<body>
    <%@include file="WEB-INF/includes/titleBar.jsp"%> <!-- inclusion of the title bar and the menu -->
    <%@include file="WEB-INF/includes/menu.jsp"%>

    <div class="central">   <!-- The main part of the web page-->
        <div class="image">
        </div>
        <div class="resume">

        </div>
        <div class="technologies">
            <h3>Technologies used : </h3>

        </div><br><br>
        <a href="editProject.jsp?project=2" class="edit">Edit Project</a><br><br>
    </div>
</body>
</html>