<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Создание дисциплины</title>
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
        <a href="/disciplines">Назад</a>
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
          <p>Для того, чтобы создать новую дисциплину заполните все поля и нажмите кнопку "Создать".</p>
        </div>
      </div>
      <div class="center3container">
        <div>
          <form action="/discipline-create" method="post">
            <ul class="flex-outer">
              <li>
                <label class="label">Название</label>
                <input type="text" class="input" name="disciplineName">
              </li>
              <li><button type="submit" class="button">Создать</button> </li>
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
