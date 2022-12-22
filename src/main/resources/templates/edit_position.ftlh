<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>New MTUCI LMS</title>
    <link rel="stylesheet" type="text/css" href="/style.css"/>
</head>
<body>


<h3>Edit Position</h3>
<form class="form-wrapper" action="/position/edit/${position.id}" method="post">
    <table border="1px">
        <tr>
            <input type="number" name="id" value="${position.id}" hidden>
            <td>
                <label>Name</label>
                <input type="text" name="name" value="${position.name}">
            </td>

            <td>
                <label>Salary</label>
                <input type="number" lang="en_EN" name="salary" value="${govno}">
            </td>

            <td>
                <input type="submit" value="Confirm">
            </td>
        </tr>
    </table>
</form>

</body>
</html>
