<%@ include file="header.jsp" %>

<h2 class="mb-4">${user != null ? "Edit User" : "Add User"}</h2>

<div class="card p-4">
    <form action="${user != null ? 'update-user' : 'create-user'}" method="post">

        <input type="hidden" name="id" value="${user.id}"/>

        <div class="form-group">
            <label>First Name</label>
            <input type="text" name="firstName" class="form-control" value="${user.firstName}" required>
        </div>

        <div class="form-group">
            <label>Last Name</label>
            <input type="text" name="lastName" class="form-control" value="${user.lastName}" required>
        </div>

        <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" class="form-control" value="${user.email}" required>
        </div>

        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" class="form-control">
        </div>

        <button type="submit" class="btn btn-success">Save</button>
    </form>
</div>

<%@ include file="footer.jsp" %>