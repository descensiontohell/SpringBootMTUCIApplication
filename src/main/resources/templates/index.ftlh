<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>New MTUCI LMS</title>
    <link rel="stylesheet" type="text/css" href="/style.css"/>
</head>
<body>


<#--ROLES-->
<h2>Roles (${roleSize} entries)</h2>

<div class="table_container">
    <table border="1px">
        <tr>
            <td>Id</td>
            <td>Name</td>
            <td>Permission Level</td>
            <td></td>
        </tr>

        <form id="add_role" action="/role/add" method="post">
            <tr>
                <td></td>
                <td>
                    <input type="text" name="name">
                </td>

                <td>
                    <input type="number" name="permissionLevel">
                </td>

                <td>
                    <a href="javascript:{}" onclick="document.getElementById('add_role').submit();">Add</a>
                </td>
            </tr>
        </form>

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
<h2>Users (${userSize} entries)</h2>

<div class="table_container">
    <table border="1px">
        <tr>
            <td>Id</td>
            <td>Email</td>
            <td>Role</td>
            <td>Male?</td>
            <td></td>
        </tr>
        <form id="add_user" action="/add" method="post">
            <tr>
                <td></td>

                <td>
                    <input type="text" name="email">
                </td>

                <td>
                    <select name="role_id">
                        <#if (roleSize > 0)>
                            <#list roleList as rl>
                                <option value="${rl.id}">${rl.name}</option>
                            </#list>
                        </#if>
                    </select>
                </td>

                <td>
                    <input type="checkbox" name="gender">
                </td>

                <td>
                    <a href="javascript:{}" onclick="document.getElementById('add_user').submit();">Add</a>
                </td>
            </tr>
        </form>

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
<h2>Posts (${postSize} entries)</h2>

<div class="table_container">
    <table border="1px">
        <tr>
            <td>Id</td>
            <td>User</td>
            <td>Title</td>
            <td>Description</td>
            <td></td>
        </tr>

        <form id="add_post" action="/post/add" method="post">
            <tr>
                <td></td>

                <td>
                    <select name="user_id">
                        <#if (userSize > 0)>
                            <#list userList as ul>
                                <option value="${ul.id}">${ul.email}</option>
                            </#list>
                        </#if>
                    </select>
                </td>

                <td>
                    <input type="text" name="title">
                </td>

                <td>
                    <input type="text" name="description">
                </td>

                <td>
                    <a href="javascript:{}" onclick="document.getElementById('add_post').submit();">Add</a>
                </td>

            </tr>
        </form>

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
</div>

</body>
</html>
