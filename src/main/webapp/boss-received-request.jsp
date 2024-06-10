<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.nuguna.freview.servlet.member.page.RequestServlet" %>
<%@ page import="com.nuguna.freview.servlet.member.page.ReceivedInformServlet" %>
<%@ page import="com.nuguna.freview.servlet.member.page.SendInformServlet" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" type="text/css" href="assets/css/style-h.css"/>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Users / Profile - NiceAdmin Bootstrap Template</title>
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

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Updated: Apr 20 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <!-- add css-->
  <link rel="stylesheet" href="assets/css/style-h.css" />
  <!-- JQuery -->
  <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
</head>

<body>

<!-- ======= Header ======= -->
<header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
        <a href="index.html" class="logo d-flex align-items-center">
            <img src="assets/img/logo.png" alt="">
            <span class="d-none d-lg-block">NiceAdmin</span>
        </a>
        <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <div class="search-bar">
        <form class="search-form d-flex align-items-center" method="POST" action="#">
            <input type="text" name="query" placeholder="Search" title="Enter search keyword">
            <button type="submit" title="Search"><i class="bi bi-search"></i></button>
        </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
        <ul class="d-flex align-items-center">

            <li class="nav-item d-block d-lg-none">
                <a class="nav-link nav-icon search-bar-toggle " href="#">
                    <i class="bi bi-search"></i>
                </a>
            </li><!-- End Search Icon-->

            <li class="nav-item dropdown">

                <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
                    <i class="bi bi-bell"></i>
                    <span class="badge bg-primary badge-number">4</span>
                </a><!-- End Notification Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
                    <li class="dropdown-header">
                        You have 4 new notifications
                        <a href="#"><span
                                class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="notification-item">
                        <i class="bi bi-exclamation-circle text-warning"></i>
                        <div>
                            <h4>Lorem Ipsum</h4>
                            <p>Quae dolorem earum veritatis oditseno</p>
                            <p>30 min. ago</p>
                        </div>
                    </li>

                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="notification-item">
                        <i class="bi bi-x-circle text-danger"></i>
                        <div>
                            <h4>Atque rerum nesciunt</h4>
                            <p>Quae dolorem earum veritatis oditseno</p>
                            <p>1 hr. ago</p>
                        </div>
                    </li>

                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="notification-item">
                        <i class="bi bi-check-circle text-success"></i>
                        <div>
                            <h4>Sit rerum fuga</h4>
                            <p>Quae dolorem earum veritatis oditseno</p>
                            <p>2 hrs. ago</p>
                        </div>
                    </li>

                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="notification-item">
                        <i class="bi bi-info-circle text-primary"></i>
                        <div>
                            <h4>Dicta reprehenderit</h4>
                            <p>Quae dolorem earum veritatis oditseno</p>
                            <p>4 hrs. ago</p>
                        </div>
                    </li>

                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li class="dropdown-footer">
                        <a href="#">Show all notifications</a>
                    </li>

                </ul><!-- End Notification Dropdown Items -->

            </li><!-- End Notification Nav -->

            <li class="nav-item dropdown">

                <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
                    <i class="bi bi-chat-left-text"></i>
                    <span class="badge bg-success badge-number">3</span>
                </a><!-- End Messages Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
                    <li class="dropdown-header">
                        You have 3 new messages
                        <a href="#"><span
                                class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="message-item">
                        <a href="#">
                            <img src="assets/img/messages-1.jpg" alt="" class="rounded-circle">
                            <div>
                                <h4>Maria Hudson</h4>
                                <p>Velit asperiores et ducimus soluta repudiandae labore officia est
                                    ut...</p>
                                <p>4 hrs. ago</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="message-item">
                        <a href="#">
                            <img src="assets/img/messages-2.jpg" alt="" class="rounded-circle">
                            <div>
                                <h4>Anna Nelson</h4>
                                <p>Velit asperiores et ducimus soluta repudiandae labore officia est
                                    ut...</p>
                                <p>6 hrs. ago</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="message-item">
                        <a href="#">
                            <img src="assets/img/messages-3.jpg" alt="" class="rounded-circle">
                            <div>
                                <h4>David Muldon</h4>
                                <p>Velit asperiores et ducimus soluta repudiandae labore officia est
                                    ut...</p>
                                <p>8 hrs. ago</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="dropdown-footer">
                        <a href="#">Show all messages</a>
                    </li>

                </ul><!-- End Messages Dropdown Items -->

            </li><!-- End Messages Nav -->

            <li class="nav-item dropdown pe-3">

                <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#"
                   data-bs-toggle="dropdown">
                    <img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
                    <span class="d-none d-md-block dropdown-toggle ps-2">K. Anderson</span>
                </a><!-- End Profile Iamge Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                    <li class="dropdown-header">
                        <h6>Kevin Anderson</h6>
                        <span>Web Designer</span>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center"
                           href="users-profile.html">
                            <i class="bi bi-person"></i>
                            <span>My Profile</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center"
                           href="users-profile.html">
                            <i class="bi bi-gear"></i>
                            <span>Account Settings</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="pages-faq.html">
                            <i class="bi bi-question-circle"></i>
                            <span>Need Help?</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="#">
                            <i class="bi bi-box-arrow-right"></i>
                            <span>Sign Out</span>
                        </a>
                    </li>

                </ul><!-- End Profile Dropdown Items -->
            </li><!-- End Profile Nav -->

        </ul>
    </nav><!-- End Icons Navigation -->

</header><!-- End Header -->

<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

        <li class="nav-item">
            <a class="nav-link collapsed" href="index.jsp">
                <i class="bi bi-grid"></i>
                <span>나의 브랜딩</span>
            </a>
        </li><!-- End Dashboard Nav -->

        <li class="nav-item">
            <a class="nav-link "
               href="${pageContext.request.contextPath}/boss-received-request.jsp">
                <i class="bi bi-bell"></i>
                <span>알림</span>
            </a>
        </li>
        <!-- End Profile Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed"
               href="${pageContext.request.contextPath}/boss-my-request.jsp">
                <i class="bi bi-card-checklist"></i>
                <span>요청</span>
            </a>
        </li>
        <!-- End Profile Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="#">
          <i class="bi bi-person"></i>
          <span>개인정보수정</span>
        </a>
      </li><!-- End Register Page Nav -->

    </ul>

</aside><!-- End Sidebar-->

<main id="main" class="main">

    <section class="section profile">
      <div class="row">
        <div class="col-xl-12">
          <div class="card">
            <div class="card-body pt-3">
              <!-- Bordered Tabs -->
              <ul class="nav nav-tabs nav-tabs-bordered">
                <li class="nav-item">
                  <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#receivedBtn">받은 알림</button>
                </li>
                <li class="nav-item">
                  <button class="nav-link" data-bs-toggle="tab" data-bs-target="#requestBtn" id="SendInform">보낸 알림</button>
                </li>
              </ul>
              <div class="tab-content pt-1">
                <div class="tab-pane show fade active profile-edit pt-6" id="receivedBtn">
                  <!-- received -->
                  <form >
                    <!-- 나를 찜 & 좋아요 -->
                    <div  id="bossReceivedZzim">

                    </div>
                  </form>
                </div>
              </div>
              <div class="tab-content pt-2">
                <div class="tab-pane fade active pt-6" id="requestBtn" >
                  <!-- Settings Form -->
                  <form>
                    <!-- 내가 찜 &  -->
                    <div id="bossSendInform">

                    </div>
                    <%--                    <div class="card" id="bossRequestList">--%>
                    <%--                      <div class="card-body" >--%>
                    <%--                        <h5 class="card-title">To.OOO </h5>--%>
                    <%--                        <p> ____ 님을 찜 하였습니다.</p>--%>
                    <%--                      </div>--%>
                    <%--                    </div>--%>

                            </div>
                        </div>
                        <!-- End Bordered Tabs -->
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

  <script>
  $(function(){

    $.ajax({ // receivedBtn
      method: "GET",
      url: "<%=request.getContextPath()%>/api/boss/my-notification/received-inform",
      dataType: "json",
      error: function (data) { console.log("여기 에러다 : ", data); },
      success: function (data) {
        // console.log("데이터 수신 완료:", data);
        // 받은 데이터를 처리 == zzimInfos 배열의 각 요소에서 필요한 데이터 추출
        var zzimInfosReceived = data.zzimInfos;
        var bossReceivedDdabong = data.ddabongInfos;
        var htmlStr = "<div>"
        $.map(zzimInfosReceived, function (val, idx) {
          // console.log(idx);
          htmlStr += "<div class='card'>";
          htmlStr += "<div class='card-body'>"
          htmlStr += "<h5 class='card-title'><br> From. " + val["nickname"] + "</h5>";
          htmlStr += "<p><a href='<%=request.getContextPath()%>/brand-page?member_seq=" + val["seq"]
                  + "'>" + val["nickname"] + "</a>님이 나를 찜하였습니다.</p>";
          htmlStr += "</div>";
          htmlStr += "</div>";
        });
        $.map(bossReceivedDdabong, function (val, idx) {
          htmlStr += "<div class='card'>";
          htmlStr += "<div class='card-body'>";
          htmlStr += "<h5 class='card-title'>From. " + val["nickname"] + "</h5>";
          htmlStr += "<p>"+ val["nickname"] +"님이 내 글 <a href='<%=request.getContextPath()%>/mojipboard/detail?post_seq=" + val["postSeq"]
                  + "'>";
          htmlStr += val["title"] +"</a> 을 좋아요♥했습니다.</p>";
          htmlStr += "</div>";
          htmlStr += "</div>";
        });
        htmlStr += "</div>";
        $("#bossReceivedZzim").html(htmlStr);
      }
    });


    $("#SendInform").click(function() { // bossReceivedDdabong
      $.ajax({
        method: "GET",
        url: "<%=request.getContextPath()%>/api/boss/my-notification/send-inform",
        dataType: "json",
        error: function (data) { console.log("여기 에러다 : ", data); },
        success: function (data) {
          // console.log("얘는 sendServlet:", data.zzimInfos);
          // console.log("데이터 ddabong : ", data.ddabongInfos);
          // 받은 데이터를 처리 ==  ?? 배열의 각 요소에서 필요한 데이터 추출
          // 받은 데이터를 처리
          // zzimInfos 배열의 각 요소에서 필요한 데이터 추출
          var bossSendZzim = data.zzimInfos;
          var bossSendDdabong = data.ddabongInfos;
          var htmlStr = "<div>"
          // 수정할 부분
          $.map(bossSendZzim, function (val, idx) {
             htmlStr += "<div class='card'>";
             htmlStr += "<div class='card-body'>";
             htmlStr += "<h5 class='card-title'>TO. " + val["nickname"] + "</h5>";
             htmlStr += "<p><a href='<%=request.getContextPath()%>/brand-page?member_seq=" + val["seq"]
                     + "'>" + val["nickname"] + "</a>님을 찜하였습니다.</p>";
             htmlStr += "</div>";
             htmlStr += "</div>";
           });
           $.map(bossSendDdabong, function (val, idx) {
             //console.log(postSeq);
                htmlStr += "<div class='card'>";
                htmlStr += "<div class='card-body'>";
                htmlStr += "<h5 class='card-title'>TO. " + val["nickname"] + "</h5>";
                htmlStr += "<p>"+ val["nickname"] ;
                htmlStr += " 님의 글 <a href='<%=request.getContextPath()%>/mojipboard/detail?post_seq=" + val["postSeq"] + "'>";
                htmlStr += val["title"] +"</a>을 좋아요♥ 했습니다.</p>";
                htmlStr += "</div>";
                htmlStr += "</div>";
              });
             htmlStr += "</div>";
             $("#bossSendInform").html(htmlStr);
             //console.log(bossSendDdabong);
        }
      });
    });

  });

</script>

</body>

</html>