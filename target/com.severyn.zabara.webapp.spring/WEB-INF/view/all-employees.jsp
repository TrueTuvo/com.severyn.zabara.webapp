<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>
<h2>
    All Employees
</h2>
<br>
<br>

<table>
    <tr>Name</tr>
    <tr>Surname</tr>
    <tr>Department</tr>
    <tr>Salary</tr>
    <tr>Operations</tr>
    <c:forEach var="emp" items="${allEmps}">

        <c:url var="updateButton" value="/updateInfo">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>

        <c:url var="deleteButton" value="/deleteEmployee">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>

        <tr>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
            <td><input type="button" value="update"
                       onclick="window.location.href = '${updateButton}'"/>
                <input type="button" value="delete"
                       onclick="window.location.href = '${deleteButton}'"/>
            </td>
            <td></td>
        </tr>
    </c:forEach>
</table>
<br>
<br>
<br>
<input type="button" value="Add"
       onclick="window.location.href = 'addNewEmployee'">


</body>
</html>