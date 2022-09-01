<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String user_name = (String)session.getAttribute("user_name");
	String user_id = (String)session.getAttribute("user_id");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Taeyeon</title>
  <link rel="icon" href="/WebProject-1/favicons.png">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
  <link rel="stylesheet" href="/WebProject-1/static/css/main.css">
  <link rel="stylesheet" href="/WebProject-1/static/css/album.css">

  <!--Google Fonts-->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Material+Icons"
      rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Anek+Telugu&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
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
	          <a href="/WebProject-1/menu/profile.jsp">profile</a>
	        </li>
	        <li>
	          <a href="/WebProject-1/menu/discography.jsp">discography</a>
	        </li>
	        <li>
	          <a href="/WebProject-1/menu/music.jsp">music</a>
	        </li>
	        <li> 
	          <a href="/WebProject-1/board/Blist.taeyeon">board</a>
	        </li>
	        <% if(user_id == null) { %>
	        <li>
	          <a href="/WebProject-1/user/signin.jsp">login</a>
	        </li>
	        <% } else { %>
	        <li class="userName">
	        	<%= user_name %>님 <button type="button" onclick="location.href='/WebProject-1/user/logout.jsp'">로그아웃</button>
	        </li>
	        <% } %>
	      </ul>
	    </div>
	  </div> 
	</header>
  
  <!--INVU-->
  <section class="INVU">
    <div class="inner">
      <div class="subBox">
        <h3>ALBUM</h3>
      </div>
      <div class="albumDetail"> 
        <div class="album">
          <div class="left">
            <img src="/WebProject-1/static/images/INVU.png" width="500px" height="500px">
          </div>
          <div class="right">
            <div class="title">
              <div class="title-text">
                <p class="title-name">The 3rd Album 'INVU'</p>
                <p class="title-genre">2022/02/14 | 정규앨범 | POP</p>
              </div>
              <div class="text-box">
                <div class="main-text">
                  ‘믿고 듣는 보컬퀸’ 태연, 정규 3집 ‘INVU’ 2월 14일 발매!<br>
                  태연이 들려주는 다양한 사랑 이야기! 한층 성숙해진 음악 세계 예고!<br><br>
                </div>
                <div class="sub-text">
                  ‘믿고 듣는 보컬퀸’ 태연(에스엠엔터테인먼트 소속)이 2월 14일 정규 3집 ‘INVU’를 발매한다.<br><br>
                  이번 앨범은 동명의 타이틀 곡 ‘INVU’를 비롯해, 인간의 가장 본능적이고 복잡한 감정인 ‘사랑’에 대해 다각적으로 표현한 총 13곡이 수록되어 있어, 한층 성숙해진 태연의 음악 세계를 만나기에 충분하다.
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
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