<%@ page import="kr.co.koo.taeyeon.member.model.MemberDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8"); %>

<%-- jsp action태그로 자바빈 객체 초기화 --%>
<jsp:useBean id="members" class="kr.co.koo.taeyeon.member.model.MemberVO"/>
<jsp:setProperty name="members" property="*"/>

<%

	MemberDAO dao = MemberDAO.getInstance();
	boolean flag = dao.insertMember(members);
	
	if(flag) {
%>	
	<<script>
		alert('회원가입을 축하합니다!');
		location.href='/WebProject-1';
	</script>
<% 
	} else {
%>
	<script>
		alert('회원가입 실패');
		location.href='/WebProject-1';
	</script>		
<%	} %>

