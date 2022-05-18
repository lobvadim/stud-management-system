<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Создать страничку студента</title>
    <link rel="stylesheet" href="../resourses/css/style.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
    <script>
        $( function() {
            $( "#datepicker" ).datepicker();
        } );
    </script>
</head>
<body>
<div class="page">
    <div class="left-column">
        <div class="left_nav left_nav2">
            <div>
                <a href="/">На главную</a>
            </div>
            <div>
                <a href="/students">Назад</a>
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
                    <p>Для создания студента заполните все поля и нажмите кнопку "Создать".</p>
                </div>
            </div>
            <div class="center3container">
                <div>
                    <form action="/student-create" method="post">
                        <ul class="flex-outer">
                            <li>
                                <label class="label">Фамилия</label>
                                <input type="text" class="input" name="surname">
                            </li>
                            <li>
                                <label class="label">Имя</label>
                                <input type="text" class="input" name="name">
                            </li>
                            <li>
                                <label class="label">Группа</label>
                                <input type="text" class="input" name="group">
                            </li>
                            <li>
                                <label class="label">Дата поступления</label>
                                <input type="text" class="input" name="date" id="datepicker">
                            </li>
                            <li>
                                <button type="submit" class="button">Создать</button>
                            </li>
                        </ul>
                    </form>
                </div>

            </div>
            <c:if test="${error == '1'}">
                <h4>Поля не должны быть пустыми!</h4>
            </c:if>
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