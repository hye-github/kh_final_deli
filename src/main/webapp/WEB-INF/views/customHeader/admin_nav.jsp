<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- font-awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.css" rel="stylesheet">
<!-- bootstrap CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- bootstrap JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>

<link rel="stylesheet" href="/resources/css/customHeader/common.css" type="text/css">

<style>

    #wrap_host{
        height: 100vh;
        z-index: 2;
    }

    #deli_nav {
        z-index: 3;
        background: #888888;
        min-height: 900px;
        min-width: 220px;
        padding-top: 15px;
        padding-left: 50px;
    }

    #deli_nav a {
        color: #FFFFFF;
        text-decoration: none;
    }

    #deli_nav a:link {
        color: #FFFFFF;
    }

    #deli_nav a:hover {
        color: #F8F5F2;
    }

    #deli_nav a:active {
        color: #FFFFFF;
    }

    main {
        min-width: 1000px;
        width: 1000px;
        margin: 0 auto;
    }

</style>

<div id="wrap_host" class="d-flex justify-content-start">
    <nav id="deli_nav" class="d-flex flex-column">
        <a class="a_tag" href="/admin">
            <h2>Deli</h2>
            <h2>ADMIN</h2></a>
        <i class="fa-solid fa-ticket"></i>
        <a href="/admin/coupon/list">쿠폰관리</a>
        <a href="/admin/coupon/add">쿠폰추가</a>
        <i class="fa-regular fa-pen-to-square"></i>
        <a href="/admin/review">리뷰관리</a>
        <i class="fa-solid fa-user"></i>
        <a href="/admin/account/list">일반회원관리</a>
        <a href="/admin/owner/list">사업자회원관리</a>
        <i class="fa-solid fa-building"></i>
        <a href="/admin/store/list/">식당관리</a>
    </nav>