
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Модифицирование семестра</title>
    <link rel="stylesheet" href="../resourses/css/style.css">
</head>
<body>
<div class="page">
    <div class="left-column">
        <div class="left_nav left_nav2">
            <div>
                <a href="/">На главную</a>
            </div>
            <div>
                <a href="/terms">Назад</a>
            </div>
        </div>
    </div>
    <div class="center-column">
        <header>
            <div class="name-project">
                <p>Система управления студентами и их успеваемостью</p>
            </div>
        </header>
        <main>
            <div class="block-text-over-form">
                <div class="text-over-form">
                    <p>Для редактирования семестра заполните следующие данные и нажмите кнопку "Применить".</p>
                </div>
            </div>
            <div class="center3container">
                <div>
                    <form action="/term-modify" method="post">
                        <input type="hidden" name="idTermModify" value="${term.id}">
                        <ul class="flex-outer">
                            <li>
                                <label class="label">Длительность (в нед.)</label>
                                <input type="text" class="input" name="duration" value="${term.duration}">
                            </li>
                            <li>
                                <label class="label">Дисциплины в семестре</label>
                                <select size="8" multiple name="idsDisc" id="" placeholder="Информатика" class="input" >
                                    <c:forEach items="${disciplines}" var="d">
                                        <option value="${d.id}">${d.discipline}</option>
                                    </c:forEach>
                                </select>
                            </li>
                            <li><button type="submit" class="button">Применить</button> </li>
                        </ul>
                    </form>
                </div>
            </div>
        </main>
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
