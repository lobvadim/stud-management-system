<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Список семестров</title>
    <link rel="stylesheet" href="../resourses/css/style.css">
</head>
<body>
<div class="page">
    <div class="left-column">
        <div class="left_nav">
            <div>
                <a href="/">На главную</a>
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
            <div class="block-text-over-form form-terms-fish">
                <form action="/terms" method="get">
                    <label class="terms-fish">Выбрать семестр</label>

                    <select name="idSelectedTerm">
                        <c:forEach items="${terms}" var="t">
                            <c:choose>
                                <c:when test="${t.id eq selectedTerm.id}">
                                    <option selected value="${t.id}">${t.name}</option>
                                </c:when>
                                <c:otherwise>
                                    <option value="${t.id}">${t.name}</option>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </select>
                    <button type="submit" class="button">Выбрать</button>
                </form>
                <p class="terms-fish">Длительность семестра: ${selectedTerm.duration}</p>
                <p class="terms-fish">Список дисциплин семестра</p>
            </div>
            <div class="container-discipline-terms container-for-terms">
                <table class="discipline-one-ctudent-table">
                    <tr>
                        <th class="discipline-cell">Наименование дисциплины</th>
                    </tr>
                    <c:forEach items="${disciplines}" var="d">
                        <tr>
                            <td class="discipline-cell">${d.discipline}</td>
                        </tr>
                    </c:forEach>
                </table>
                <div class="discipline-list-buttons">
                    <c:if test="${role eq 1}">
                        <form action="/term-create" method="get">
                            <button type="submit" class="my_Button3">Создать семестр</button>
                        </form>
                        <form action="/term-modify" method="get">
                            <input type="hidden" name="idTermToModify" value="${selectedTerm.id}">
                            <button type="submit" class="my_Button3">Модифицировать текущий семестр..</button>
                        </form>
                        <form action="/delete-term" method="get">
                            <input type="hidden" name="idTermToDelete" value="${selectedTerm.id}">

                            <button type="submit" class="my_Button3">Удалить текущий семестр</button>
                        </form>
                    </c:if>
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