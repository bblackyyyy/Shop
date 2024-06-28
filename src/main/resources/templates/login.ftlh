<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1 class="text-center" style="color: ghostwhite ; background-color: #383838;">BUYSELL</h1>
    <h4 class="text-center">Login</h4>
    <form action="/login" method="post" class="mx-auto" style="width: 300px;">
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" class="form-control" id="email" name="username">
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" class="form-control" id="password" name="password">
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"><div class="text-center">
    <button type="submit" class="btn" style="background-color: #383838; color: #F5F5F5;">Log In</button>
</div>


    </form>
    <div class="text-center">
        <a href="/registration" class="btn btn-link">Register</a>
    </div>
</div>
</body>
</html>