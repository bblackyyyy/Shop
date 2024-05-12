<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<hr>
<h4>admin pannel</h4>
<table border="1">
    <tr>
        <th>Email</th>
        <th>number</th>
        <th>activity</th>
        <th>roles</th>
        <th>ban</th>
        <th>change</th>
        <th>details</th>
    </tr>
    <#list users as user>
        <tr>
            <th>${user.email}</th>
            <th>${user.numberPhone}</th>
            <th><#if user.active>true<#else>false</#if></th>
            <th><#list user.roles as role>${role}</#list></th>
            <th>
                <form action="/admin/user/ban/${user.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Ban">
                </form>
            </th>
            <th><a href="/admin/user/edit/${user.id}">change</a></th>
            <th><a href="/user/${user.id}">details</a></th>
        </tr>
    <#else>
        <h3>no users</h3>
    </#list>
</table>
</body>
</html>