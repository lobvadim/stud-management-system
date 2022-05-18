<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Главная страница</title>
    <link rel="stylesheet" href="../resourses/css/style.css">
</head>
<body>
<div class="page">
    <div class="left-column"></div>
    <div class="center-column">
        <header>
            <div class="name-project">
                <p>Система управления студентами и их успеваемостью</p>
            </div>
            <div class="index-mainText">
                <div class="index_nav">
                    <a href="/students">Студенты</a>
                </div>
                <div class="index_nav">
                    <a href="/disciplines">Дисциплины</a>
                </div>
                <div class="index_nav">
                    <a href="/terms">Семестры</a>
                </div>
            </div>
        </header>
    </div>
    <div class="right-column">
        <div class="container-login">
            <c:choose>
                <c:when test="${isLogin eq 1}">
                    <a href="/logout">${login}, Logout</a>
                </c:when>
                <c:otherwise>
                    <a href="/login">Login</a>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>
</body>
</html>