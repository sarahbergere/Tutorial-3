<!--
Made by Sarah BERGERE
Student number : 24030008
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Project</title>
    <link rel="stylesheet" href="css/project.css"> <!-- CSS file specifically for the project 2 page -->
    <link rel="stylesheet" href="css/menu.css">    <!-- CSS file for the menu that is displayed on all pages -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <script src="library/jquery.js"></script>
    <script src="js/menu.js"></script>
    <script src="js/editProject.js"></script>
</head>
<body>
    <%@include file="WEB-INF/includes/titleBar.jsp"%>  <!-- inclusion of the title bar and the menu -->
    <%@include file="WEB-INF/includes/menu.jsp"%>

    <div class="central">   <!-- The main part of the web page-->
        <div class="title">

        </div>
        <div class="image">
            <img id="projectImage" src="" alt="Project Image">
        </div>
        <div class="description">

        </div>
        <div class="technologies">
            <h3>Technologies used : </h3>
            <ul id="technologiesList"></ul>
        </div>
        <br>
        <br>

        <div class="inputs">  <!-- All of the inputs to makes edits -->

            <!-- Here the form is only used to send the edit info via the submit button to the action servlet -->
            <form action="save-project" method="post" enctype="multipart/form-data">
                <label for="idProject"></label>
                <input type="text" name="idProject" id="idProject" hidden="hidden" value="">

                <label for="titleInput">Title of the project :</label><br>
                <textarea name="titleInput" id="titleInput" wrap="soft" cols="25"></textarea><br><br>

                <label for="image">Image</label><br>
                <input type="file" name="image" id="image" accept="image/*"><br><br>

                <label for="description">Description : </label><br>
                <textarea name="description" id="description" wrap="soft" cols="60" rows="10"></textarea><br><br>

                <label for="myPart">What you did : </label><br>
                <textarea name="myPart" id="myPart" wrap="soft" cols="60" rows="3"></textarea><br><br>

                <label for="learned">What you learned : </label><br>
                <textarea name="learned" id="learned" wrap="soft" cols="60" rows="3"></textarea><br><br>

                <label for="technologies">Technologies : (please use comas to separate each technologies used)</label><br>
                <textarea name="technologies" id="technologies" wrap="soft" cols="60" rows="4"></textarea><br><br>

                <input type="button" id="reset" value="Reset">
                <button type="submit" id="submit">Submit</button>
            </form>
        </div>
    </div>
</body>
</html>
