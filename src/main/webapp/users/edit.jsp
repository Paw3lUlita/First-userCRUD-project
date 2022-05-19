<%--
  Created by IntelliJ IDEA.
  User: pawel
  Date: 29.04.2022
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
        <a href="/user/list" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i>Lista Użytkowników</a>
    </div>

    <!-- Content Row -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Edytuj Użytkownika</h6>
        </div>
<div class="card-body">
<form action="/user/edit" method="post">
    <input type="hidden" name="id" value="${user.id}" ><br>
    Nazwa:<br>
    <input type="text" name="userName" value="${user.userName}"><br>
    E-mail:<br>
    <input type="email" name="email" value="${user.email}"><br>
    Hasło:<br>
    <input type="password" name="password" placeholder="Hasło Użytkownika"><br>
  <br>
    <input class="btn btn-primary" type="submit" value="Edytuj">

</form>
</div>
    </div>
        <%@ include file="/footer.jsp" %>
