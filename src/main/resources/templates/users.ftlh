<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sosister</title>
      <link rel="stylesheet" type="text/css" href="/css/style.x59549.css"/>
</head>
<body>
<h1>Sosister</h1>
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
                <input type="number" name="role_id">
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
        <td>Delete from list</td>
    </tr>
    <#list userList as user>
    <tr>
        <td>${user.id}</td>
        <td>${user.email}</td>
        <td>${user.role.name}</td>
        <td>${user.gender}</td>
        <td><a href="${'/delete/'+user.id}">Delete</a></td>
    </tr>
    </#list>
</table>
</body>
</html>
