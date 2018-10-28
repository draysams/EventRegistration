<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: samdavies
  Date: 28/10/2018
  Time: 09:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Attendee Page</title>
    <style>
        .error {
            color: #ff0000;
        }

        .errorBlock {
            color: #ff0000;
            background-color: #ffEEEE;
            border: 3px solid black;
            padding: 8px;
            margin: 16px;
        }
    </style>
</head>
<body>
    <a href="?language=en">English</a> | <a href="?language=es">Spanish</a>
    <form:form commandName="attendee">
        <form:errors cssClass="errorBlock" element="<div>" path="*"/>
        <label for="textInput1"><spring:message code="attendee.name"/> </label>
        <form:input id="textInput1" path="name" cssErrorClass="error" />
        <br/>
        <label for="textInput2"><spring:message code="attendee.email"/> </label>
        <form:input id="textInput2" path="email" cssErrorClass="error" />
        <br/>
        <input type="submit" value=<spring:message code="attendee.button"/>/>
    </form:form>
</body>
</html>
