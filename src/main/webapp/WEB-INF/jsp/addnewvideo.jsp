<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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

