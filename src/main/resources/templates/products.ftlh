<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<hr>
<#if user.email??>
    <h3>Name: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Exit"/>
    </form>
    <#if user.isAdmin()>
        <a href="/admin">Admin pannel</a>
    </#if>
<#else>
    <a href="/login">Login</a></h1>
</#if>
<hr>
<h4>From all poland</h4>
<form action="/" method="get">
    Find by name: <input type="text" name="title">
    <input type="submit" value="Find"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} zł. | <a href="/product/${product.id}">details...</a></p>
    </div>
<#else>
    <h3>No Positions</h3>
</#list>
<#if user.email??>
    <hr>
    <h3>Create new</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Name: <input type="text" name="title"/><br><br>
        Description: <input type="text" name="description"/><br><br>
        Price: <input type="number" name="price"/><br><br>
        City: <input type="text" name="city"/><br><br>
        1st photo: <input type="file" name="file1"/><br><br>
        2nd photo: <input type="file" name="file2"/><br><br>
        3rd photo: <input type="file" name="file3"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="ADD"/>
    </form>
</#if>
</body>
</html>