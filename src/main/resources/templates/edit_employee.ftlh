<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>New MTUCI LMS</title>
    <link rel="stylesheet" type="text/css" href="/style.css"/>
</head>
<body>


<h3>Edit Employee</h3>
<form class="form-wrapper" action="/edit/${employee.id}" method="post">
    <table border="1px">
        <tr>
            <input type="number" name="id" value="${employee.id}" hidden>
            <td>
                <label>Email</label>
                <input type="text" name="email" value="${employee.email}">
            </td>

            <td>
                <label>Name</label>
                <input type="text" name="name" value="${employee.name}">
            </td>

            <td>
                <label>Position</label>
                <select name="position_id">
                    <#if (positionSize > 0)>
                        <#list positionList as rl>
                            <option value="${rl.id}" <#if (employee.position??)><#if (employee.position.id == rl.id)>selected</#if></#if>>${rl.name}</option>
                        </#list>
                    </#if>
                </select>
            </td>

            <td>
                <input type="submit" value="Confirm">
            </td>
        </tr>
    </table>
</form>

</body>
</html>
