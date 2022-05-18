<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Список дисциплин</title>
    <link rel="stylesheet" href="../resourses/css/style.css">
    <script src = "../resourses/js/function.js"></script>
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
            <div class="block-text-over-form">
                <div class="text-over-form">
                    <p>Список дисциплин</p>
                </div>
            </div>
            <div class="container-discipline-terms">
                <table class="discipline-one-ctudent-table">
                    <tr>
                        <th class="discipline-cell"></th>
                        <th class="discipline-cell">Наименование дисциплины</th>
                    </tr>
                    <c:forEach items="${disciplines}" var="ds">
                        <tr>
                            <td class="discipline-cell">
                                <input name="idDicipline" type="checkbox" value="${ds.id}" >
                            </td>
                            <td class="discipline-cell">${ds.discipline}</td>
                        </tr>
                    </c:forEach>

                </table>
                <div class="discipline-list-buttons">
                    <c:if test="${role eq 1}">
                    <form action="/discipline-create">
                        <input type="submit" value="Создать дисциплину" class="my_Button3">
                    </form>

                        <input type="submit" value="Модифицировать выбранную дисциплину" class="my_Button3" onclick="modifyDiscipline()">

                        <input type="submit" value="Удалить выбранную дисциплину" class="my_Button3" onclick="deleteDiscipline()">
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

<form action="/discipline-delete" method ="post" id = "deleteForm">
    <input type = "hidden" id="deleteHidden" name="deleteHidden">
</form>

    <form action="/discipline-modify" method ="get" id = "modifyForm">
        <input type = "hidden" id="modifyHidden" name="modifyHidden">
    </form>


</html>