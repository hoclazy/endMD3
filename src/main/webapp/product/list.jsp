<%--
  Created by IntelliJ IDEA.
  User: Thinkpad t440s
  Date: 6/1/2022
  Time: 3:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-12">

        </div>
    </div>
</div>
<div class="row">
    <div class="col-9">
        <form action="/products" class="form-inline ">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="findName">
            <button class="btn btn-success" type="submit">search by name</button>
        </form>
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">NAME</th>
                <th scope="col">PRICE</th>
                <th scope="col">QUANTITY</th>
                <th scope="col">SALE</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${pro}" var="pr">
                <tr>
                    <td>${pr.id}</td>
                    <td>${pr.name}</td>
                    <td>${pr.price}</td>
                    <td>${pr.quantity}</td>
                    <td>
                        <c:if test="${pr.price>200}"><button type="button" class="btn btn-danger">Khuyen mai 10%</button></c:if>
                        <c:if test="${pr.price<200}"><button type="button" class="btn btn-danger">Khuyen mai 20%</button></c:if>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<%--<form action="/products" class="form-inline ">--%>
<%--    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="findName">--%>
<%--    <button class="btn btn-success" type="submit">search by name</button>--%>
<%--</form>--%>
<%--<table class="table table-striped">--%>
<%--    <thead>--%>
<%--    <tr>--%>
<%--        <th scope="col">ID</th>--%>
<%--        <th scope="col">NAME</th>--%>
<%--        <th scope="col">PRICE</th>--%>
<%--        <th scope="col">QUANTITY</th>--%>
<%--        <th scope="col">SALE</th>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--            <tbody>--%>
<%--<c:forEach items="${pro}" var="pr">--%>

<%--    <table class="table table-striped">--%>
<%--&lt;%&ndash;        <tbody>&ndash;%&gt;--%>
<%--        <tr>--%>
<%--            <th scope="row"></th>--%>
<%--            <td>${pr.id}</td>--%>
<%--            <td>${pr.name}</td>--%>
<%--            <td>${pr.price}</td>--%>
<%--            <td>${pr.quantity}</td>--%>
<%--            <td>--%>
<%--                <c:if test="${pr.price>200}">Khuyen mai 10%</c:if>--%>
<%--                <c:if test="${pr.price<200}">Khuyen mai 20%</c:if>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--&lt;%&ndash;        </tbody>&ndash;%&gt;--%>
<%--    </table>--%>

<%--&lt;%&ndash;    <h1>${pr.id},${pr.name},${pr.price},${pr.quantity}&ndash;%&gt;--%>
<%--&lt;%&ndash;        <h2>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <c:if test="${pr.price>200}">Khuyen mai 10%</c:if>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <c:if test="${pr.price<200}">Khuyen mai 20%</c:if>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </h2>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </h1>&ndash;%&gt;--%>
<%--</c:forEach>--%>
<%--        </tbody>--%>


</body>
</html>
