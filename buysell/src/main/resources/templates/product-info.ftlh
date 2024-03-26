<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1><hr>
<h4>details</h4>
<b>Name </b>${product.title}<br>
<b>desc</b>${product.description}<br>
<b>Price </b>${product.price}<br>
<b>City </b>${product.city}<br>
<b>Author </b>${product.author}<br>
<hr>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="deleting"/>
</form>
</body>
</html>