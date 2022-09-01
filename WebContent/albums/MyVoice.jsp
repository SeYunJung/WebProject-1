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
  
  <!--My Voice-->
  <section class="MyVoice">
    <div class="inner">
      <div class="subBox">
        <h3>ALBUM</h3>
      </div>
      <div class="albumDetail">
        <div class="album">
          <div class="left">
            <img src="/WebProject-1/static/images/My Voice.png" width="500px" height="500px">
          </div>
          <div class="right">
            <div class="title">
              <div class="title-text">
                <p class="title-name">The 1st Album 'My Voice'</p>
                <p class="title-genre">2017/02/28 | 정규앨범 | 발라드</p>
              </div>
              <div class="text-box">
                <div class="main-text">
                  드디어 ‘음원 퀸’ 태연이 온다!<br>
                  첫 정규 앨범 ‘My Voice’ 2월 28일 발매!<br>
                  폭넓은 음악적 스펙트럼 확인할 수 있는 총 13트랙 수록!<br>
                  <!-- <p>드디어 ‘음원 퀸’ 태연이 온다!</p><br> 
                  <p>첫 정규 앨범 ‘My Voice’ 2월 28일 발매!</p><br>
                  <p>폭넓은 음악적 스펙트럼 확인할 수 있는 총 13트랙 수록!</p> -->
                </div>
                <div class="sub-text">
                  음원 퀸 태연이 드디어 첫 정규 앨범을 발표한다.<br><br>
                  태연의 첫 정규 앨범 ‘My Voice’는 2월 28일 발매되며, 이번 앨범은 태연의 뛰어난 보컬 실력을 바탕으로 탄생한
                  타이틀 곡 ‘Fine’을 비롯해 음반에만 특별 수록되는 보너스 트랙 ‘기억을 걷는 시간’까지, 팝 발라드, 팝 R&B, PB R&B 등
                  새롭고 다채로운 장르의 총 13트랙으로 구성되었으며, 특별히 두 가지 버전으로 발매되는 만큼, 글로벌 음악 팬들의 뜨거운 관심이 예상된다.
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