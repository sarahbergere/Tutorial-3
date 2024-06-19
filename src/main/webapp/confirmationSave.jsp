<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Confirmation Project Saved</title>
    <link rel="stylesheet" href="css/menu.css">    <!-- CSS file for the menu that is displayed on all pages -->
    <link rel="stylesheet" href="css/confirmationEdit.css">
    <script src="library/jquery.js"></script>
    <script src="js/menu.js"></script>
    <script src="js/titleBar.js"></script>
</head>
<body>
    <%@include file="WEB-INF/includes/titleBar.jsp"%>
    <script>
        $(document).ready(function() {
            var projectId = '<c:out value="${id}" />';
            $('#title').text('Confirmation Edit ' + projectId);
        });
    </script>
    <%@include file="WEB-INF/includes/menu.jsp"%>

    <div class = "central">
        <h2>Your edit has been saved, here is your project :</h2>
        <hr>
        <h3>${id} details</h3>
        <p><b>Title :</b> ${title}</p>
        <c:choose>
            <c:when test="${not empty image}">
                <div class="image">
                    <p><b>Image name : </b>${image}</p>
                </div>
            </c:when>
            <c:otherwise>
                <p><u>You didn't choose any image.</u></p>
            </c:otherwise>
        </c:choose>

        <p><b>Description :</b> ${description}</p>
        <p><b>My Part :</b> ${myPart}</p>
        <p><b>What I learned :</b> ${learned}</p>

        <div class="technologies">
            <p><b>Technologies used :</b></p>
            <ul>
                <c:forEach var="tech" items="${technologies}">
                    <li>${tech}</li>
                </c:forEach>
            </ul>
        </div>
    </div>
</body>
</html>
