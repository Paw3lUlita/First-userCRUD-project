<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: pawel
  Date: 29.04.2022
  Time: 17:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
        <a href="/user/add" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i>Dodaj użytkownika</a>
    </div>

    <!-- Content Row -->
    <div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Lista użytkowników</h6>
    </div>
    <div>
<table class="table">
    <tr><th>Id</th> <th>Nazwa użytkownika</th>     <th>email</th> <th>akcja</th></tr>
   <c:forEach var="user" items="${users}">
       <tr><th>${user.id}</th>     <th>${user.userName}</th>     <th>${user.email}</th>    <th><a href="/user/delete?id=${user.id}">Usuń</a> <a href="/user/edit?id=${user.id}">Edit</a> <a href="/user/show?id=${user.id}">Pokaż</a></th></tr>
   </c:forEach>

</table>
    </div>

        </div>
</div>







<%@ include file="/footer.jsp" %>



