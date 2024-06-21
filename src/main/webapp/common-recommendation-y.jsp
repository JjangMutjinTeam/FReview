<%@ page import="com.nuguna.freview.entity.member.Member" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    Member loginUser = (Member) session.getAttribute("Member");
    Integer memberSeq = loginUser.getMemberSeq();
    String gubun = loginUser.getGubun();
    request.setAttribute("gubun", gubun);
    request.setAttribute("memberSeq", memberSeq);
    String requestedMemberGubun = (String) request.getAttribute("requestedMemberGubun");

    if (requestedMemberGubun == null) {
        requestedMemberGubun = "B";
    }
    request.setAttribute("requestedMemberGubun", requestedMemberGubun);
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>추천 페이지</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">

    <style>
      .profile-card img {
        border-radius: 0; /* 이미지를 네모로 만듭니다 */
        width: 100%; /* 이미지를 카드의 전체 너비로 설정합니다 */
        max-width: none; /* 이미지를 카드의 전체 너비로 설정합니다 */
      }

      .profile-card {
        padding: 0; /* 카드 내부의 여백을 없앱니다 */
      }

      .col-xl-2 {
        flex: 0 0 auto;
        width: 20%;
      }
    </style>

    <!-- =======================================================
    * Template Name: NiceAdmin
    * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
    * Updated: Apr 20 2024 with Bootstrap v5.3.3
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->
    <%--    세션의 member 정보를 전부 가져오기 (memberSeq, gubun 외)--%>
    <%--    <div class="header-hr-right">--%>
    <%--        <a href="/brand-page?gubun=${member.gubun}&mid=${member.mid}" style="margin-right: 20px">--%>
    <%--            <%=memberInfo.getNickname()%>--%>
    <%--            <img src="<%=memberInfo.getPhotoUrl()%>" alt=" " style="width: 30px;--%>
    <%--    margin-top: 15px;">--%>
    <%--        </a>--%>
    <%--        <a href="COMM_logout.jsp" style="margin-top: 17px;">로그아웃</a>--%>
    <%--    </div>--%>
</head>

<body>

<header id="header" class="header fixed-top d-flex align-items-center">
    <div class="d-flex align-items-center justify-content-between">
        <a href="/main?seq=<%=memberSeq%>&pagecode=Requester"
           class="logo d-flex align-items-center">
            <img src="assets/img/logo/logo-vertical.png" alt="">
            <span class="d-none d-lg-block">Freeview</span>
        </a>
        <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <nav class="header-nav ms-auto">
        <ul class="d-flex align-items-center">
            <li class="nav-item dropdown pe-3">
                <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#">
                    <img src="assets/img/basic/basic-profile-img.png" alt="Profile"
                         class="rounded-circle">
                    <span id="nickname-holder-head"
                          class="d-none d-md-block"><%=loginUser.getNickname()%></span>
                </a><!-- End Profile Iamge Icon -->
            </li><!-- End Profile Nav -->
        </ul>
    </nav><!-- End Icons Navigation -->
</header><!-- End Header -->
<main id="main" class="main">

    <div class="pagetitle">
        <h1>추천페이지</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/recommendation">Home</a></li>
                <li class="breadcrumb-item">Users</li>
                <li class="breadcrumb-item active">Profile</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section profile">
        <div class="row">
            <!-- Tabs navigation -->
            <c:choose>
                <c:when test="${requestedMemberGubun == 'B'}">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-bs-toggle="tab" href="#boss"
                               role="tab" aria-controls="boss" aria-selected="true">사장님</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" href="#customer"
                               role="tab" aria-controls="customer" aria-selected="false">체험단</a>
                        </li>
                    </ul>
                </c:when>
                <c:when test="${requestedMemberGubun == 'C'}">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link " data-bs-toggle="tab" href="#boss"
                               role="tab" aria-controls="boss" aria-selected="true">사장님</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" data-bs-toggle="tab" href="#customer"
                               role="tab" aria-controls="customer" aria-selected="false">체험단</a>
                        </li>
                    </ul>
                </c:when>
            </c:choose>

            <div class="tab-content">
                <!-- Boss Tab -->
                <div class="tab-pane fade show <c:if test="${requestedMemberGubun == 'B'}">active</c:if>" id="boss" role="tabpanel"
                     aria-labelledby="boss-tab">

                    <form action="/recommendation-filter" method="GET">
                        <input type="hidden" id="memberGubunBoss" name="memberGubun" value='B'>
                        <div>
                            <h3>음식 유형</h3>
                            <label><input type="checkbox" name="foodType" value="한식"> 한식</label>
                            <label><input type="checkbox" name="foodType" value="양식"> 양식</label>
                            <label><input type="checkbox" name="foodType" value="중식"> 중식</label>
                            <label><input type="checkbox" name="foodType" value="일식"> 일식</label>
                            <label><input type="checkbox" name="foodType" value="빵&베이커리"> 빵&베이커리</label>
                            <label><input type="checkbox" name="foodType" value="기타"> 기타</label>
                        </div>
                        <div>
                            <h3>태그</h3>
                            <label><input type="checkbox" name="tag" value="단체석"> 단체석</label>
                            <label><input type="checkbox" name="tag" value="뷰 맛집"> 뷰 맛집</label>
                            <label><input type="checkbox" name="tag" value="오션뷰"> 오션뷰</label>
                            <label><input type="checkbox" name="tag" value="반려동물 환영"> 반려동물 환영</label>
                        </div>
                        <div>
                            <button type="submit">필터링</button>
                        </div>
                    </form>

                    <div class="row">
                        <c:forEach var="boss" items="${bossInfoList}">
                            <div class="col-xl-2">
                                <div class="card">
                                    <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">
                                        <a href="/MemberBrandingServlet?gubun=B&id=${boss.id}">
                                            <a href="/MemberBrandingServlet?gubun=B&id=${boss.id}">
                                                <img src="${boss.profilePhotoUrl}" alt="Profile"
                                                     class="profile-img">
                                            </a>
                                            <h2>
                                                <a href="/MemberBrandingServlet?gubun=B&id=${boss.id}">${boss.nickname}</a>
                                            </h2>
                                            <h3>${boss.foodTypes}</h3>
                                            <h3>${boss.tags}</h3>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <!-- Customer Tab -->
                <div class="tab-pane fade show <c:if test="${requestedMemberGubun == 'C'}">active</c:if>" id="customer" role="tabpanel"
                     aria-labelledby="customer-tab">
                    <form action="/recommendation-filter" method="GET">
                        <input type="hidden" id="memberGubunCustomer" name="memberGubun" value='C'>

                        <div>
                            <h3>음식 유형</h3>
                            <label><input type="checkbox" name="foodType" value="한식"> 한식</label>
                            <label><input type="checkbox" name="foodType" value="양식"> 양식</label>
                            <label><input type="checkbox" name="foodType" value="중식"> 중식</label>
                            <label><input type="checkbox" name="foodType" value="일식"> 일식</label>
                            <label><input type="checkbox" name="foodType" value="빵&베이커리"> 빵&베이커리</label>
                            <label><input type="checkbox" name="foodType" value="기타"> 기타</label>
                        </div>
                        <div>
                            <h3>태그</h3>
                            <label><input type="checkbox" name="tag" value="초식"> 초식</label>
                            <label><input type="checkbox" name="tag" value="육식"> 육식</label>
                            <label><input type="checkbox" name="tag" value="빵빵이"> 빵빵이</label>
                        </div>
                        <div>
                            <button type="submit">검색</button>
                        </div>
                    </form>

                    <div class="row">
                        <c:forEach var="customer" items="${customerInfoList}">
                            <div class="col-xl-2">
                                <div class="card">
                                    <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">
                                        <a href="/MemberBrandingServlet?gubun=C&id=${customer.id}"${customer.id}">
                                        <img src="${customer.profilePhotoUrl}" alt="Profile"
                                             class="profile-img">
                                        </a>
                                        <h2>
                                            <a href="/MemberBrandingServlet?gubunC&id=${customer.id}">${customer.nickname}</a>
                                        </h2>
                                        <h3>${customer.foodTypes}</h3>
                                        <h3>${customer.tags}</h3>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </section>

</main><!-- End #main -->

<!-- ======= Footer ======= -->
<footer id="footer" class="footer">
    <div class="copyright">
        &copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
</footer><!-- End Footer -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/chart.js/chart.umd.js"></script>
<script src="assets/vendor/echarts/echarts.min.js"></script>
<script src="assets/vendor/quill/quill.js"></script>
<script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
<script src="assets/vendor/tinymce/tinymce.min.js"></script>
<script src="assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="assets/js/main.js"></script>

</body>

</html>