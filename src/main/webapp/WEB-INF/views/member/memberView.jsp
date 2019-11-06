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

	<h3>회원상세정보</h3>
	
	<table class="table table-bordered">
	
		<tr><td>아이디</td> <td>${member.mem_id}</td></tr>
		<tr><td>이름</td> <td>${member.mem_name}</td></tr>
		<tr><td>전화번호</td> <td>${member.mem_phone}</td></tr>
		<tr><td>이메일</td> <td>${member.mem_email}</td></tr>
		<tr><td>가입일자</td> <td>${member.reg_date}</td></tr>
		
		<tr>
			<td>
			<input type="button" class="btn btn-success" value="수정" onclick="location.href='memberEdit?mem_id=${member.mem_id}'"/>
			<input type="button" class="btn btn-success" value="삭제" onclick="location.href='memberDelete?mem_id=${member.mem_id}'"/>
			<input type="button" class="btn btn-success" value="목록" onclick="location.href='memberList'" />
			</td>
		</tr>
	
	</table>

</body>
</html>




