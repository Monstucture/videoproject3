<%@ page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML>
<!--
Full Motion by TEMPLATED
templated.co @templatedco
Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->


<!-- Header -->
<html>
<head>
    <title>Full Motion</title>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="assets/css/main.css"/>
</head>
<body id="top">

<section id="banner" data-video="images/banner">
    <div class="inner">
        <header>
            <h1>Videos daily</h1>
            <p>Daily videos to forget about quarantine</p>
        </header>
        <a href="#main" class="more">Learn More</a>
    </div>
</section>
<!-- Main -->
<div id="main">
    <div class="inner">
        <div class="thumbnails">


            <jsp:useBean id="videos" scope="request" type="java.util.List"/>
            <c:forEach items="${videos}" var="video">
                <div class="box">
                    <a href="${video.url}" class="image fit"><img
                            src="${video.img}" alt=""/></a>

                    <div class="inner">
                        <h3>${video.h3content}</h3>
                        <p>${video.pcontent}</p>
                        <a href="${video.url}" class="button fit"
                           data-poptrox="youtube,800x400">Watch</a>
                    </div>
                </div>

            </c:forEach>
        </div>

    </div>
    <div class="inner">

        <div class="inner">

            <%--@elvariable id="Videos" type="com.project.videoproject.entity.Videos"--%>
            <form:form action="addvideo" method="post" modelAttribute="Videos">
                <form:input type="hidden" path="img" value="null"/>
                YouTube video url (shareable link!): <form:input type="text" path="url" size="20"/>
                <br/> Title: <form:input type="text" path="h3content" size="10"/>
                <br/> Description: <form:input type="text" path="pcontent" size="10"/>
                <br/> <form:button style="margin: auto auto auto 90%" type="submit">Submit</form:button>
            </form:form>


        </div>
        <a href="deletevideo.jsp">DELETE VIDEO</a>


    </div>
</div>

<!-- Footer -->

<%@ include file="footer.jsp" %>


</body>
<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.scrolly.min.js"></script>
<script src="assets/js/jquery.poptrox.min.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>
</html>