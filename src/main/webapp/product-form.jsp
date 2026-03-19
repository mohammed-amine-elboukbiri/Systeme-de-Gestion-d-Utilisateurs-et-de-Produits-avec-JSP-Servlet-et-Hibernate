<%@ include file="header.jsp" %>

<h2 class="mb-4">${product != null ? "Edit Product" : "Add Product"}</h2>

<div class="card p-4">
    <form action="${product != null ? 'update-product' : 'create-product'}" method="post">

        <input type="hidden" name="id" value="${product.id}"/>

        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" class="form-control" value="${product.name}" required>
        </div>

        <div class="form-group">
            <label>Description</label>
            <textarea name="description" class="form-control">${product.description}</textarea>
        </div>

        <div class="form-group">
            <label>Price</label>
            <input type="number" name="price" class="form-control" value="${product.price}" required>
        </div>

        <div class="form-group">
            <label>Stock</label>
            <input type="number" name="stockQuantity" class="form-control" value="${product.stockQuantity}" required>
        </div>

        <button type="submit" class="btn btn-success">Save</button>
    </form>
</div>

<%@ include file="footer.jsp" %>