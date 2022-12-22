<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sosister</title>
      <link rel="stylesheet" type="text/css" href="/css/style.x59549.css"/>
</head>
<body>
<h1>Sosister</h1>

<#--USERS-->
<h3>Add user to list</h3>
<form action="/add" method="post">
    <table border="1px">
        <tr>
            <td>
                <label>Email</label>
                <input type="text" name="email">
            </td>

            <td>
                <label>Role</label>
                <select name="role_id">
                    <#if (roleSize > 0)>
                        <#list roleList as rl>
                            <option value="${rl.id}">${rl.name}</option>
                        </#list>
                    </#if>
                </select>
            </td>

            <td>
                <label>Gender</label>
                <input type="checkbox" name="gender">
            </td>

            <td>
                <input type="submit" value="add user">
            </td>

        </tr>

    </table>
</form>
<br>
<h2>User list(user count : ${userSize})</h2>
<table border="1px">
    <tr>
        <td>Id</td>
        <td>Email</td>
        <td>Role</td>
        <td>Gender</td>
        <td></td>
        <td></td>
    </tr>
    <#list userList as user>
    <tr>
        <td>${user.id}</td>
        <td>${user.email}</td>
        <td><#if user.role??>${user.role.name}</#if></td>
        <td>${user.gender?string("true", "false")}</td>
        <td><a href="${'/edit/'+user.id}">Edit</a></td>
        <td><a href="${'/delete/'+user.id}">Delete</a></td>
    </tr>
    </#list>
</table>


<#--ROLES-->
<h3>Add role to list</h3>
<form action="/role/add" method="post">
    <table border="1px">
        <tr>
            <td>
                <label>Name</label>
                <input type="text" name="name">
            </td>

            <td>
                <label>Permission Level</label>
                <input type="number" name="permissionLevel">
            </td>

            <td>
                <input type="submit" value="add role">
            </td>

        </tr>

    </table>
</form>
<br>
<h2>Role list(user count : ${roleSize})</h2>
<table border="1px">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Permission Level</td>
        <td></td>
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


<#--POSTS-->
<h3>Add post to list</h3>
<form action="/post/add" method="post">
    <table border="1px">
        <tr>
            <td>
                <label>User</label>
                <select name="user_id">
                    <#if (userSize > 0)>
                        <#list userList as ul>
                            <option value="${ul.id}">${ul.email}</option>
                        </#list>
                    </#if>
                </select>
            </td>

            <td>
                <label>Title</label>
                <input type="text" name="title">
            </td>

            <td>
                <label>Description</label>
                <input type="text" name="description">
            </td>

            <td>
                <input type="submit" value="add post">
            </td>

        </tr>

    </table>
</form>
<br>
<h2>Post list(post count : ${postSize})</h2>
<table border="1px">
    <tr>
        <td>Id</td>
        <td>User</td>
        <td>Title</td>
        <td>Description</td>
        <td></td>
        <td></td>
    </tr>
    <#list postList as post>
        <tr>
            <td>${post.id}</td>
            <td>${post.user.email}</td>
            <td>${post.title}</td>
            <td>${post.description}</td>
            <td><a href="${'/post/edit/'+post.id}">Edit</a></td>
            <td><a href="${'/post/delete/'+post.id}">Delete</a></td>
        </tr>
    </#list>
</table>
</body>
</html>
