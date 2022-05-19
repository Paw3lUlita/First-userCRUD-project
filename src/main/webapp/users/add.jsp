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
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Dodaj użytkownika</h6>
        </div>
        <div class="card-body">

    <!-- Content Row -->
<form action="/user/add" method="post">

    <input type="text" name="userName" placeholder="Nazwa użytkownika"><br>
    <input type="email" name="email" placeholder="Adres email"><br>
    <input type="password" name="password" placeholder="Hasło użytkownika"><br>
    <input clas="btn btn-primary"  type="submit" value="Zapisz">
</form>

        </div>
    </div>
<%@ include file="/footer.jsp" %>

