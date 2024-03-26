<!DOCTYPE html>
<html>
<head>
    <title> buysell </title>
</head>
<body>
<h1>Hello VLAD! </h1><hr>
<h4>from all country</h4>
<#list products as product>
<div>
    <p><b>${product.title}</b> ${product.price} | <a href="/product/${product.id}">details.... </a> </p>
    </div>
</#list>
<hr>
<h3>Create a new one</h3>
<form action="/product/create" method="post">
    name of post: <input type="text" name="title"/><br><br>
    description: <input type="text" name="description"/><br><br>
    price: <input type="number" name="price"><br><br>
    city: <input type="text" name="city"/><br><br>

    name: <input type="text" name="author"/><br><br>
     <input type="submit" value="add"/>
    </form>
</body>
</html>