<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.format.FormatStyle" %>
<jsp:useBean id="currentDate" type="java.time.LocalDate" scope="request" />
<jsp:useBean id="user" type="java.lang.String" scope="request" />

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Jakarta EE - Demo</title>
        <style>
            body {
                font-family: Arial, sans-serif;
            }

            img {
                float: left;
                margin-right: 3%;
            }
        </style>
    </head>
    <body>
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Duke_%28Java_mascot%29_waving.svg/568px-Duke_%28Java_mascot%29_waving.svg.png" width="64" height="100" alt="Dukes"/>

        <h1>Hello, ${user}!</h1>

        <p><% DateTimeFormatter dateFormatter = DateTimeFormatter.ofLocalizedDate(FormatStyle.FULL);
            out.print(dateFormatter.format(currentDate)); %>
        </p>
    </body>
</html>
