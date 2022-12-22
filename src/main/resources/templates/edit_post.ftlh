<h3>Edit Post</h3>
<form action="/post/edit/${post.id}" method="post">
    <table border="1px">
        <tr>
            <input type="number" name="id" value="${post.id}" hidden>
            <input type="number" name="user_id" value="${post.user.id}" hidden>
            <td>
                <label>User</label>
                <input type="text" value="${post.user.email}" disabled>
            </td>

            <td>
                <label>Title</label>
                <input type="text" name="title" value="${post.title}">
            </td>

            <td>
                <label>Description</label>
                <input type="text" name="description" value="${post.description}">
            </td>

            <td>
                <input type="submit" value="Confirm">
            </td>
        </tr>
    </table>
</form>
