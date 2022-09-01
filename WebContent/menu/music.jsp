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

  <!--Google Fonts-->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Material+Icons"
      rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Anek+Telugu&display=swap" rel="stylesheet">
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
	
	<!--VISUAL-->
	<!-- 
  <section class="visual">
    <div class="inner">
      <img src="/WebProject-1/static/images/main.png" class="filter" width="100%" height="1080px">
      <div class="title">
        <img src="/WebProject-1/main.png" alt="">
      </div>
    </div>
  </section> -->
	
	<!-- YOUTUBE -->
	<section class="youtube">
	  <div class="inner">
	    <ul class="musics">
	      <li>
	        <div class="music">
	          <iframe width="650" height="400" src="https://www.youtube.com/embed/AbZH7XWDW_k" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	        </div>
	      </li>
	      <li>
	        <div class="music">
	          <iframe width="560" height="315" src="https://www.youtube.com/embed/ulr0muQKjk0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	          <iframe width="560" height="315" src="https://www.youtube.com/embed/4OrCA1OInoo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	        </div>
	      </li>
	      <li>
	        <div class="music">
	          <iframe width="560" height="315" src="https://www.youtube.com/embed/NHXUM-6a3dU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	          <iframe width="560" height="315" src="https://www.youtube.com/embed/eHir_vB1RUI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	        </div>
	      </li>
	    </ul>
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