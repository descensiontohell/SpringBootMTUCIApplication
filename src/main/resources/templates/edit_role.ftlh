<h3>Edit Role</h3>
<form action="/role/edit/${role.id}" method="post">
    <table border="1px">
        <tr>
            <input type="number" name="id" value="${role.id}" hidden>
            <td>
                <label>Name</label>
                <input type="text" name="name" value="${role.name}">
            </td>

            <td>
                <label>Permission Level</label>
                <input type="text" name="permissionLevel" value="${role.permissionLevel}">
            </td>

            <td>
                <input type="submit" value="Confirm">
            </td>
        </tr>
    </table>
</form>
