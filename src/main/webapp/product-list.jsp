<%@ include file="header.jsp" %>

<h2 class="mb-4">Products List</h2>

<a href="<%= request.getContextPath() %>/product-form" class="btn btn-primary mb-3">Add Product</a>

<table class="table table-striped table-bordered">
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Stock</th>
        <th>SKU</th>
        <th>Actions</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach var="product" items="${products}">
        <tr>
            <td><c:out value="${product.id}" /></td>
            <td><c:out value="${product.name}" /></td>
            <td><c:out value="${product.price}" /></td>
            <td><c:out value="${product.stockQuantity}" /></td>
            <td><c:out value="${product.sku}" /></td>
            <td>
                <a href="<%= request.getContextPath() %>/product-form?action=edit&id=${product.id}" class="btn btn-warning btn-sm">Edit</a>
                <a href="<%= request.getContextPath() %>/delete-product?id=${product.id}" class="btn btn-danger btn-sm">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<%@ include file="footer.jsp" %>