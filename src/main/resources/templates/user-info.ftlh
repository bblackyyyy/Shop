<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1><hr>
<h3>Details ${user.name}</h3>
<b>number: </b> ${user.numberPhone}<br>
<b>Email: </b> ${user.email}<br>
<h4>Positions ${user.name}</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} zł. | <a href="/product/${product.id}">Details...</a></p>
    </div>
<#else>
    <h3>No positions</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>