<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sosister</title>
      <link rel="stylesheet" type="text/css" href="/css/style.x59549.css"/>
</head>
<body>
<h1>Sosister</h1>
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
        <td>Delete from list</td>
    </tr>
    <#list roleList as role>
    <tr>
        <td>${role.id}</td>
        <td>${role.name}</td>
        <td>${role.permissionLevel}</td>
        <td><a href="${'/role/delete/'+role.id}">Delete</a></td>
    </tr>
    </#list>
</table>
</body>
</html>
