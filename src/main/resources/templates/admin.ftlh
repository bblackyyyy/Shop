<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1 class="text-center" style="color: ghostwhite ; background-color: #383838;">BUYSELL</h1>
    <h4 class="text-center">Admin Panel</h4>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Email</th>
                <th>Number</th>
                <th>Activity</th>
                <th>Roles</th>
                <th>Ban</th>
                <th>Change</th>
                <th>Details</th>
            </tr>
        </thead>
        <tbody>
            <#list users as user>
                <tr>
                    <td>${user.email}</td>
                    <td>${user.numberPhone}</td>
                    <td><#if user.active>true<#else>false</#if></td>
                    <td><#list user.roles as role>${role}</#list></td>
                    <td>
                        <form action="/admin/user/ban/${user.id}" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}">
                            <button type="submit" class="btn btn-danger">Ban</button>
                        </form>
                    </td>
                    <td><a href="/admin/user/edit/${user.id}" class="btn btn-primary">Change</a></td>
                    <td><a href="/user/${user.id}" class="btn btn-info">Details</a></td>
                </tr>
            <#else>
                <tr>
                    <td colspan="7" class="text-center">No users</td>
                </tr>
            </#list>
        </tbody>
    </table>
</div>
</body>
</html>