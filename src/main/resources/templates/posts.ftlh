<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sosister</title>
      <link rel="stylesheet" type="text/css" href="/css/style.x59549.css"/>
</head>
<body>
<h1>Sosister</h1>
<h3>Add post to list</h3>
<form action="/post/add" method="post">
    <table border="1px">
        <tr>
            <td>
                <label>User</label>
                <input type="text" name="user_id">
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
        <td>Delete from list</td>
    </tr>
    <#list postList as post>
    <tr>
        <td>${post.id}</td>
        <td>${post.user.email}</td>
        <td>${post.title}</td>
        <td>${post.description}</td>
        <td><a href="${'/post/delete/'+post.id}">Delete</a></td>
    </tr>
    </#list>
</table>
</body>
</html>
