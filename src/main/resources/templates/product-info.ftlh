<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1><hr>
<h4>details</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>name: </b>${product.title}<br>
<b>descriprion: </b>${product.description}<br>
<b>Price: </b>${product.price}<br>
<b>Town: </b>${product.city}<br>
<b>Author: </b><a href="/user/${product.user.id}">${product.user.name}</a><br>
<hr>
<form action="/product/delete/${product.id}" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="delete"/>
</form>
</body>
</html>