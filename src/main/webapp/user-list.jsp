<%@ include file="header.jsp" %>

<h2 class="mb-4">Users List</h2>

<a href="<%= request.getContextPath() %>/user-form" class="btn btn-primary mb-3">Add User</a>

<table class="table table-striped table-bordered">
    <thead>
    <tr>
        <th>ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Created At</th>
        <th>Actions</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach var="user" items="${users}">
        <tr>
            <td><c:out value="${user.id}" /></td>
            <td><c:out value="${user.firstName}" /></td>
            <td><c:out value="${user.lastName}" /></td>
            <td><c:out value="${user.email}" /></td>
            <td><c:out value="${user.createdAt}" /></td>
            <td>
                <a href="<%= request.getContextPath() %>/user-form?action=edit&id=${user.id}" class="btn btn-warning btn-sm">Edit</a>
                <a href="<%= request.getContextPath() %>/delete-user?id=${user.id}" class="btn btn-danger btn-sm">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<%@ include file="footer.jsp" %>