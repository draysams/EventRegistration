<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <title>Event Page</title>
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

    <form:form commandName="event">
        <form:errors cssClass="errorBlock" element="<div>" path="*"/>
        <label for="textInput1">Enter Event Name : </label>
        <form:input id="textInput1" path="name" cssErrorClass="errorBlock" />
        <br/>
        <input type="submit" value="Submit Event Name">
    </form:form>
</body>
</html>
