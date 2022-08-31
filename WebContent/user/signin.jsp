<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Taeyeon</title>
  <link rel="icon" href="/WebProject-1/favicons.png">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
  <link rel="stylesheet" href="/WebProject-1/static/css/main.css">

  <!--Google Fonts-->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Material+Icons"
      rel="stylesheet">
</head>
<body>
  <!-- HEADER -->
  <header>
    <a href="/WebProject-1/index.html">
      <img src="/WebProject-1/static/images/logo.png" alt="Taeyeon" class="logo">
    </a>
    <div class="inner">
      <a href="/">
      </a>
      <div class="main-menu">
        <ul class="menu">
          <li>
            <a href="/WebProject-1">home</a>
          </li>
          <li>
            <a href="">notice</a>
          </li>
          <li>
            <a href="">profile</a>
          </li>
          <li>
            <a href="">discography</a>
          </li>
          <li>
            <a href="">music</a>
          </li>
          <li>
            <a href="">board</a>
          </li>
          <li>
            <a href="/WebProject-1/signin/signin.jsp">login</a>
          </li>
        </ul>
      </div>
    </div>
  </header>

  <!--SIGN IN-->
  <section class="signin">
    <div class="signin_bg"></div>
    <!-- <img src="../images/main.png" alt="" class="signin_bg"> -->
    <h1>로그인</h1>
    <div class="signin__card">
      <form action="/WebProject-1/user/check_login.jsp" name="sign-in" method="post" id="signInForm">
        <input type="text" placeholder="ID" name="userId">
        <input type="password" placeholder="PW" name="userPw"><br />
        <button type="submit" class="login_btn">Login</button>
        <button type="submit" class="signup_btn" name="signup-btn">Signup</button>
      </form>
    </div>
  </section>

  <!--FOOTER-->
  <footer>
    <div class="inner">
      <div class="btn-group">
        <a href="https://www.instagram.com/taeyeon_ss/" class="btn instgram">
          <img src="/WebProject-1/static/images/instagram.png" alt="" width="50px" height="50px">
        </a>
        <a href="https://www.youtube.com/channel/UC5z2fxN6rs69cSyXur6X6Mg" class="btn youtube">
          <img src="/WebProject-1/static/images/youtube.png" alt="" width="50px" height="50px">
        </a>
        <a href="https://www.facebook.com/TAEYEON.smofficial/" class="btn facebook">
          <img src="/WebProject-1/static/images/facebook.png" alt="" width="50px" height="50px">
        </a>
        <a href="https://twitter.com/TAEYEONsmtown" class="btn twitter">
          <img src="/WebProject-1/static/images/twitter.png" alt="" width="50px" height="50px">
        </a>
        <a href="https://open.spotify.com/artist/3qNVuliS40BLgXGxhdBdqu" class="btn spotify">
          <img src="/WebProject-1/static/images/spotify.png" alt="" width="50px" height="50px">
        </a>
      </div>
      <p class="copyright">
        Copyright
        &copy;By SeYunJung
        <span class="this-year"></span>
      </p>
    </div>
  </footer>

  </body>
</html>