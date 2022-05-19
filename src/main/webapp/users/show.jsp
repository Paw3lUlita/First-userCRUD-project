<%--
  Created by IntelliJ IDEA.
  User: pawel
  Date: 12.05.2022
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
        <a href="/user/list" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i>Lista Użytkowników</a>
    </div>

    <!-- Content Row -->
    <div class="card shadow">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Szczegóły użytkownika</h6>
    </div>
    <div>
        <table class="table">

            <tr><th>Id</th>             <th>${user.id}</th>                   </tr>
            <tr><th>Nazwa</th>          <th>${user.userName}</th>             </tr>
            <tr><th>email</th>          <th>${user.email}</th>               </tr>

        </table>
    </div>
    </div>

</div>







<%@ include file="/footer.jsp" %>

