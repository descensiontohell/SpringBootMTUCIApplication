<h3>Edit user</h3>
<form action="/edit/${user.id}" method="post">
    <table border="1px">
        <tr>
            <input type="number" name="id" value="${user.id}" hidden>
            <td>
                <label>Email</label>
                <input type="text" name="email" value="${user.email}">
            </td>

            <td>
                <label>Role</label>
                <select name="role_id">
                    <#if (roleSize > 0)>
                        <#list roleList as rl>
                            <option value="${rl.id}" <#if (user.role??)><#if (user.role.id == rl.id)>selected</#if></#if>>${rl.name}</option>
                        </#list>
                    </#if>
                </select>
            </td>

            <td>
                <label>Gender</label>
                <input type="checkbox" name="gender" <#if (user.gender == true)>checked</#if>>
            </td>

            <td>
                <input type="submit" value="Confirm">
            </td>
        </tr>
    </table>
</form>
