<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>New MTUCI LMS</title>
    <link rel="stylesheet" type="text/css" href="/style.css"/>
</head>
<body>


<h3>Edit Task</h3>
<form class="form-wrapper" action="/task/edit/${task.id}" method="post">
    <table border="1px">
        <tr>
            <input type="number" name="id" value="${task.id}" hidden>
            <input type="number" name="employee_id" value="${task.employee.id}" hidden>
            <td>
                <label>Employee</label>
                <input type="text" value="${task.employee.email}" disabled>
            </td>

            <td>
                <label>Title</label>
                <input type="text" name="title" value="${task.title}">
            </td>

            <td>
                <label>Description</label>
                <input type="text" name="description" value="${task.description}">
            </td>

            <td>
                <input type="submit" value="Confirm">
            </td>
        </tr>
    </table>
</form>

</body>
</html>
