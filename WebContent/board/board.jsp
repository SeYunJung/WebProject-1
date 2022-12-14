<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
            <a href="/WebProject-1/board/board.jsp">board</a>
          </li>
          <% if(user_id == null) { %>
          <li>
            <a href="/WebProject-1/user/signin.jsp">login</a>
          </li>
          <% } else { %>
          <li class="userName">
          	<%= user_name %>??? <button type="button" onclick="location.href='/WebProject-1/user/logout.jsp'">????????????</button>
          </li>
          <% } %>
        </ul>
      </div>
    </div> 
  </header>
  
  <!-- BOARD -->
  <% if(user_name != null) { %>
  <section class="board">
  	<div class="inner">
  		<h1>
			?????????
  			<a href="/WebProject-1/board/BWriteView.taeyeon" class="write_btn">?????????</a>
  		</h1>
  		<table class="board-list">
  			<tr style="background-color: #ff52a0; margin-top: 0; height: 40px; color: white; border: 0px solid #f78f24; opacity: 0.8">
				<th class="num">#</th>
				<th class="writer">?????????</th>
				<th class="title">??????</th>
				<th class="dates">?????????</th>
				<th class="hits">?????????</th>
			</tr>
			
			<%-- jstl??? ???????????? request????????? users.messageList??? forEach??? ????????????. --%>
			<c:forEach var="user" items="${articles.messageList}">
			<tr style="color: #ff52a0;">
				<td>${user.board_id}</td>
				<td>${user.board_name}</td>
				<td>${user.board_title}</td>
				<td>${user.board_date}</td>
				<td>${user.board_hit}</td>
			</tr>
			</c:forEach>
  		</table>
  		
  		<%-- ????????? ?????? --%>
  		<ul class="page-elements">
  			<c:forEach var="pageNum" begin="1" end="${articles.pageTotalCount}">
  				<li class="page">
  					<a class="page-link" style="margin-top: 0; height: 40px; color: pink; border: 1px solid pink;"
  					href="/WebProject-1/board/board.list?page=${pageNum}">${pageNum}</a>
  				</li>
  			</c:forEach>
  		</ul>
  	</div>
  </section>
  <% } else { %>
  		<script>
  			alert("???????????? ????????????.")
  			location.href="/WebProject-1"
  		</script>
  <% } %>
  
  
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
