<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>

<title>Insert title here</title>
</head>
<body>

<h3>회원목록</h3>

<p><input type="button" class="btn btn-primary" value="회원가입" onclick="location.href='memberForm'" /></p>

<table class="table table-striped table-bordered">
	<thead>
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>이메일</th>
			<th>가입일자</th>
		</tr>
	</thead>
	
	<tbody>
		<c:if test="${!empty memberList}">
		
			<c:forEach var="member" items="${memberList}">
			<tr>
				<td>${member.mem_id}</td>				
				<td><a href="memberView?mem_id=${member.mem_id}">${member.mem_name}</a></td>
				<td>${member.mem_phone}</td>
				<td>${member.mem_email}</td>
				<td>${member.reg_date}</td>
			</tr>
			</c:forEach>
		</c:if>
		
		<c:if test="${empty memberList}">
			<tr>
				<td colspan="5">검색된 결과가 없습니다.</td>
			</tr>
		</c:if>
		
	</tbody>

</table>


</body>
</html>