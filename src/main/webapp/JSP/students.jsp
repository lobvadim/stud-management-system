<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Список студентов</title>
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
            <div class="studentList-buttonContainer">
                <div class="studentList-buttonContainer-collumn">
                    <div>
                        <input type="submit" value="Просмотреть успеваемость выбранных студентов" class="my_Button1" onclick="progressStudents()">
                    </div>
                    <c:if test="${role eq 1}">
                    <div>
                        <input type="submit"value="Модифицировать выбранного студента..." class="my_Button1" onclick="modifyStudents()">
                    </div>
                </div>
                <div class="studentList-buttonContainer-collumn">
                    <div>
                        <form action="/student-create"><input type="submit" value="Создать студента..."
                                                                      class="my_Button2"></form>
                    </div>
                    <div>
                        <input type="submit" value="Удалить выбранных студентов" class="my_Button2" onclick="deleteStudents()">
                    </div></c:if>
                </div>

            </div>
            <div class="container-listStud-table">
                <table class="listStud-table">
                    <caption class="caption-table-students">Список студентов</caption>
                    <tr>
                        <th class="stud-th1"></th>
                        <th class="stud-th2">Фамилия</th>
                        <th class="stud-th2">Имя</th>
                        <th class="stud-th3">Группа</th>
                        <th class="stud-th3">Дата поступления</th>
                    </tr>
                    <c:forEach items="${students}" var="st">
                        <tr>
                            <td class="stud-td1"><input name="idStudent" type="checkbox" value="${st.id}"></td>
                            <td class="stud-td2">${st.surname}</td>
                            <td class="stud-td2">${st.name}</td>
                            <td class="stud-td3">${st.group}</td>
                            <td class="stud-td3"><fmt:formatDate pattern="dd/MM/yyyy" value="${st.date}"/></td>
                        </tr>
                    </c:forEach>
                </table>
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
<form action="/student-delete" method ="post" id = "deleteForm">
    <input type = "hidden" id="deleteHidden" name="deleteHidden">
</form>
<form action="/student-modify" method ="get" id = "modifyForm">
    <input type = "hidden" id="modifyHidden" name="modifyHidden">
</form><form action="/student-progress" method ="get" id = "progressForm">
    <input type = "hidden" id="progressHidden" name="progressHidden">
</form>
</html>
