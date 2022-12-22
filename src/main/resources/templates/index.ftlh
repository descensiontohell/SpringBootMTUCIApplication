<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>New MTUCI LMS</title>
    <link rel="stylesheet" type="text/css" href="/style.css"/>
</head>
<body>



<form class="form-wrapper" id="add_position" action="/position/add" method="post">
    <h2>Positions (${positionSize} entries)</h2>
    <lable>Position</lable>
    <input class="name-input" type="text" name="name">
    <lable>Salary</lable>
    <input class="number-input" type="number" value="0" name="salary">
    <a class="add-button" href="javascript:{}" onclick="document.getElementById('add_position').submit();">Add</a>
</form>

<div class="table_container">
    <table border="1px">
        <tr>
            <td>Id</td>
            <td>Name</td>
            <td>Salary</td>
            <td></td>
        </tr>
        <#list positionList as position>
            <tr>
                <td>${position.id}</td>
                <td>${position.name}</td>
                <td>${position.salary}</td>
                <td><a href="${'/position/edit/'+position.id}">Edit</a></td>
                <td><a href="${'/position/delete/'+position.id}">Delete</a></td>
            </tr>
        </#list>
    </table>
</div>


<form class="form-wrapper" id="add_employee" action="/add" method="post">
    <h2>Employees (${employeeSize} entries)</h2>
    <lable>Position</lable>
    <select name="position_id">
        <#if (positionSize > 0)>
            <#list positionList as rl>
                <option value="${rl.id}">${rl.name}</option>
            </#list>
        </#if>
    </select>
    <lable>Email</lable>
    <input type="text" name="email">
    <lable>Name</lable>
    <input type="text" name="name">
    <a class="add-button" href="javascript:{}" onclick="document.getElementById('add_employee').submit();">Add</a>
</form>

<div class="table_container">
    <table border="1px">
        <tr>
            <td>Id</td>
            <td>Name</td>
            <td>Email</td>
            <td>Position</td>
            <td></td>
        </tr>
        <#list employeeList as employee>
            <tr>
                <td>${employee.id}</td>
                <td>${employee.name}</td>
                <td>${employee.email}</td>
                <td><#if employee.position??>${employee.position.name}</#if></td>
                <td><a href="${'/edit/'+employee.id}">Edit</a></td>
                <td><a href="${'/delete/'+employee.id}">Delete</a></td>
            </tr>
        </#list>
    </table>
</div>


<form class="form-wrapper" id="add_task" action="/task/add" method="post">
    <h2>Tasks (${taskSize} entries)</h2>
    <lable>Employee</lable>
    <select name="employee_id">
        <#if (employeeSize > 0)>
            <#list employeeList as ul>
                <option value="${ul.id}">${ul.email}</option>
            </#list>
        </#if>
    </select>
    <lable>Title</lable>
    <input type="text" name="title">
    <lable>Description</lable>
    <input type="text" name="description">
    <a class="add-button" href="javascript:{}" onclick="document.getElementById('add_task').submit();">Add</a>
</form>

<div class="table_container">
    <table border="1px">
        <tr>
            <td>Id</td>
            <td>Employee</td>
            <td>Title</td>
            <td>Description</td>
            <td></td>
        </tr>
        <#list taskList as task>
            <tr class="table-row">
                <td>${task.id}</td>
                <td>${task.employee.name}</td>
                <td>${task.title}</td>
                <td>${task.description}</td>
                <td><a href="${'/task/edit/'+task.id}">Edit</a></td>
                <td><a href="${'/task/delete/'+task.id}">Delete</a></td>
            </tr>
        </#list>
    </table>
</div>

</body>
</html>
