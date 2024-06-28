<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1 class="text-center" style="color: ghostwhite ; background-color: #383838;">BUYSELL</h1>
    <h4 class="text-center">Change ${user.name}</h4>
    <form action="/admin/user/edit" method="post" class="mx-auto" style="width: 300px;">
        <#list roles as role>
        <div class="form-check">
            <input class="form-check-input" type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")} id="${role}">
            <label class="form-check-label" for="${role}">
                ${role}
            </label>
        </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <div class="text-center">
            <button type="submit" class="btn" style="background-color: #383838; color: #F5F5F5;">Save</button>
        </div>
    </form>
</div>
</body>
</html>