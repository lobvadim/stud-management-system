<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Успеваемость студента</title>
    <link rel="stylesheet" href="../resourses/css/style.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
</head>
<body>
<div class="page">
    <div class="left-column">
        <div class="left_nav left_nav2">
            <div>
                <a href="/">На главную</a>
            </div>
            <div>
                <a href="/students"> Назад </a>
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
                    <p>Отображена успеваемость для следующего студента:</p>
                </div>
            </div>
            <div class="container-one-student-table">

                <table class="one-student-table">
                    <tr>
                        <th class="one-student-table-cell Surname ">Фамилия</th>
                        <th class="one-student-table-cell stName">Имя</th>
                        <th class="one-student-table-cell stGroup">Группа</th>
                        <th class="one-student-table-cell stDate">Дата поступления</th>
                    </tr>
                    <tr>
                        <td class="one-student-table-cell stSurname">${student.surname}</td>
                        <td class="one-student-table-cell stName">${student.name}</td>
                        <td class="one-student-table-cell stGroup">${student.group}</td>
                        <td class="one-student-table-cell stDate"><fmt:formatDate pattern="dd/MM/yyyy"
                                                                                  value="${student.date}"/></td>
                    </tr>
                </table>
            </div>
            <div class="container-discipline-terms">
                <table class="discipline-one-ctudent-table">
                    <tr>
                        <th class="discipline-cell">Дисциплина</th>
                        <c:if test="${haveMarks eq 1}">
                            <th class="discipline-cell">Оценка</th>
                        </c:if>
                    </tr>
                    <c:forEach items="${marks}" var="m" varStatus="loop">
                        <tr>
                            <td class="discipline-cell">${m.discipline.discipline}</td>
                            <c:if test="${m.mark ne -1}">
                                <td class="discipline-cell">${m.mark}</td>
                            </c:if>
                        </tr>
                    </c:forEach>
                </table>
                <div class="discipline-terms-left-container">
                    <div class="sudent-progress-form">
                        <form action="/student-progress" method="get">
                            <input type="hidden" name="progressHidden" value="${student.id}">
                            <label>Выбрать семестр</label>
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
                    </div>
                    <p class="average-grade">Средняя оценка за семестр:
                        <fmt:formatNumber pattern="#,##0.00" value="${avarage}"/> балла</p>
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
