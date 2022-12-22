<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>New MTUCI LMS</title>
    <link rel="stylesheet" type="text/css" href="/style.css"/>
</head>
<body>


<#--ROLES-->

<form class="form-wrapper" id="add_role" action="/role/add" method="post">
    <h2>Roles (${roleSize} entries)</h2>
    <lable>Role Name</lable>
    <input class="name-input" type="text" name="name">
    <lable>permission Level</lable>
    <input class="number-input" type="number" value="0" name="permissionLevel">
    <a class="add-button" href="javascript:{}" onclick="document.getElementById('add_role').submit();">Add</a>
</form>

<div class="table_container">
    <table border="1px">
        <tr>
            <td>Id</td>
            <td>Name</td>
            <td>Permission Level</td>
            <td></td>
        </tr>
        <#list roleList as role>
            <tr>
                <td>${role.id}</td>
                <td>${role.name}</td>
                <td>${role.permissionLevel}</td>
                <td><a href="${'/role/edit/'+role.id}">Edit</a></td>
                <td><a href="${'/role/delete/'+role.id}">Delete</a></td>
            </tr>
        </#list>
    </table>
</div>

<#--USERS-->

<form class="form-wrapper" id="add_user" action="/add" method="post">
    <h2>Users (${userSize} entries)</h2>
    <lable>User e-mail</lable>
    <input type="text" name="email">
    <lable>User role</lable>
    <select name="role_id">
        <#if (roleSize > 0)>
            <#list roleList as rl>
                <option value="${rl.id}">${rl.name}</option>
            </#list>
        </#if>
    </select>
    <lable>gender?</lable>
    <input type="checkbox" name="gender">
    <a class="add-button" href="javascript:{}" onclick="document.getElementById('add_user').submit();">Add</a>
</form>
<div class="table_container">
    <table border="1px">
        <tr>
            <td>Id</td>
            <td>Email</td>
            <td>Role</td>
            <td>Male?</td>
            <td></td>
        </tr>
        <#list userList as user>
            <tr>
                <td>${user.id}</td>
                <td>${user.email}</td>
                <td><#if user.role??>${user.role.name}</#if></td>
                <td>${user.gender?string("Male", "Female")}</td>
                <td><a href="${'/edit/'+user.id}">Edit</a></td>
                <td><a href="${'/delete/'+user.id}">Delete</a></td>
            </tr>
        </#list>
    </table>
</div>

<#--POSTS-->

<form class="form-wrapper" id="add_post" action="/post/add" method="post">
    <h2>Posts (${postSize} entries)</h2>
    <lable>User names</lable>
    <select name="user_id">
        <#if (userSize > 0)>
            <#list userList as ul>
                <option value="${ul.id}">${ul.email}</option>
            </#list>
        </#if>
    </select>
    <lable>Post title</lable>
    <input type="text" name="title">
    <lable>Post description</lable>
    <input type="text" name="description">
    <a class="add-button" href="javascript:{}" onclick="document.getElementById('add_post').submit();">Add</a>
</form>
<div class="table_container">
    <table border="1px">
        <tr>
            <td>Id</td>
            <td>User</td>
            <td>Title</td>
            <td>Description</td>
            <td></td>
        </tr>
        <#list postList as post>
            <tr class="table-row">
                <td>${post.id}</td>
                <td>${post.user.email}</td>
                <td>${post.title}</td>
                <td>${post.description}</td>
                <td><a href="${'/post/edit/'+post.id}">Edit</a></td>
                <td><a href="${'/post/delete/'+post.id}">Delete</a></td>
            </tr>
        </#list>
    </table>
</div>

</body>
</html>
