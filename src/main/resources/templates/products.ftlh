<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL <h1>
        <#if user.email?? >
        <h3>name: <i>${user.name}</i></h3>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="submit" value="Exit"/>
            </form>
            <#else>
        <a href="/login">LogIn</a></h1>
        </#if>
<hr>
form
<h4>From all Poland</h4>
<form action="/" method="get">
    searching: <input type="text" name="title"><br>
    <input type="submit" value="Search"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} zł. | <a href="/product/${product.id}">Details...</a></p>
    </div>
    <#else>
    <h3>No</h3>
</#list>
<#if user.email??>
    <hr>
    <h3>Create</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Name of position: <input type="text" name="title"/><br><br>
    Description: <input type="text" name="description"/><br><br>
    Price: <input type="number" name="price"/><br><br>
    Town: <input type="text" name="city"/><br><br>
    Name: <input type="text" name="author"/><br><br>
    first: <input type="file" name="file1"/><br><br>
    second: <input type="file" name="file2"/><br><br>
    third: <input type="file" name="file3"/><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="add"/>
</form>
</#if>
</body>
</html>