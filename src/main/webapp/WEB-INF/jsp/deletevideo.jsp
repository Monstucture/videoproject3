<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE HTML>
<!--
Full Motion by TEMPLATED
templated.co @templatedco
Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->


<!-- Header -->
<%@ include file="header.jsp" %>
<!-- Main -->
<div id="main">
    <div class="inner">

        <form method="POST" action="deletevideo.jsp" class="form">

            <c:if test="${not empty VideosList.getVideosList()}">
                <table border="1" cellspacing="0" cellpadding="0" :>
                    <tr>
                        <th>X</th>
                        <th>ID</th>
                        <th>URL</th>
                        <th>Content</th>
                        <th>Description</th>
                        <th></th>
                    </tr>
                    <c:forEach var="video" items="${VideosList.getVideosList()}">
                        <tr>
                            <td><input type="checkbox" name="chkBox" id="id" value="${video.id }"></td>
                            <td>${video.id}</td>
                            <td>${video.url}</td>
                            <td>${video.h3content}</td>
                            <td>${video.pcontent}</td>
                            <td><c:url value="UDS" var="url">
                                <c:param name="VideoID" value="${video.id}"/>
                            </c:url> <a href="${url}">Edit</a></td>
                        </tr>
                    </c:forEach>

                </table>
            </c:if>
            <td><input type="submit" name="submit" value="Delete"></td>
        </form>


    </div>
</div>


<!-- Footer -->
<footer id="footer">
    <div class="inner">
        <h2>Etiam veroeros lorem</h2>
        <p>Pellentesque eleifend malesuada efficitur. Curabitur volutpat
            dui mi, ac imperdiet dolor tincidunt nec. Ut erat lectus, dictum sit
            amet lectus a, aliquet rutrum mauris. Etiam nec lectus hendrerit,
            consectetur risus viverra, iaculis orci. Phasellus eu nibh ut mi
            luctus auctor. Donec sit amet dolor in diam feugiat venenatis.</p>

        <ul class="icons">
            <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
            <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
            <li><a href="#" class="icon fa-instagram"><span
                    class="label">Instagram</span></a></li>
            <li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
        </ul>
        <p class="copyright">
            &copy; Untitled. Design: <a href="https://templated.co">TEMPLATED</a>.
            Images: <a href="https://unsplash.com/">Unsplash</a>. Videos: <a
                href="http://coverr.co/">Coverr</a>.
        </p>
    </div>
</footer>