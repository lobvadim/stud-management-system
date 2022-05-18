<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Авторизация</title>
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
                <a href="./disciplines_list.html"></a>
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
                    <p>Для авторизации заполните следующие данные и нажмите кнопку "Войти".</p>
                </div>
            </div>
            <div class="center3container">
                <div>
                    <form action="/login" method="post">
                        <ul class="flex-outer">
                            <li>
                                <label class="label">Логин</label>
                                <input type="text" class="input" name="login">
                            </li>
                            <li>
                                <label class="label">Пароль</label>
                                <input type="text" class="input" name="password">
                            </li>
                            <li>
                                <label class="label">Выберите роль</label>
                                <select name="role"   class="input">
                                    <option value="3">Студент</option>
                                    <option value="2">Учитель</option>
                                    <option value="1">Администратор</option>
                                </select>
                            </li>
                            <li><button type="submit" class="button">Войти</button> </li>
                        </ul>
                    </form>
                </div>

            </div>
                <div class="error">
                    <c:if test="${error == '1'}">
                        <h4>Неверный логин, или пароль, или не та роль!</h4>
                    </c:if>
                </div>
        </main>
    </div>
    <div class="right-column">
        <div class="container-login">
            <div class="login"><a href=""></a></div>
        </div>
    </div>
</div>
</body>
</html>
