<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>

<script type="text/javascript">

function fn_save(){
	
	if(!validate()){
		return;
	}
	var frm = document.memberForm;
		
	frm.submit();
}

function validate(){
	var frm = document.memberForm;
	
	if(frm.mem_id.value == ""){
		alert("아이디는 필수입력입니다.");
		return false;
	}
	
	if(frm.mem_name.value == ""){
		alert("이름은 필수입력입니다.");
		return false;
	}
	
	if(frm.mem_pwd.value == ""){
		alert("비밀번호는 필수입력입니다.");
		return false;
	} else {
		if(frm.mem_pwd.value != frm.mem_pwd_confirm.value){
			alert("비밀번호가 일치하지 않습니다.");
			return false;
		}
	}
	
	if(frm.mem_phone.value == ""){
		alert("전화번호는 필수입력입니다.");
		return false;
	}
	
	if(frm.mem_email.value == ""){
		alert("이메일은 필수입력입니다.");
		return false;
	}
	
	return true;	
}


</script>

<title>Insert title here</title>
</head>
<body>

<h3>회원가입</h3>

<form id="memberForm" name="memberForm" 
	action="memberInsert" method="post">
	
	<table class="table table-bordered">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="mem_id" value="" />
			5~20자의 영문 소문자, 숫자와 특수기호만 사용 가능합니다.
			</td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="mem_name" value="" />
			실명을 입력하세요.
			</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="mem_pwd" value="" />
			5~20자의 영문 소문자, 숫자와 특수기호만 사용 가능합니다.
			</td>
		</tr>
		<tr>
			<td>비밀번호확인</td>
			<td><input type="password" name="mem_pwd_confirm" value="" />
			5~20자의 영문 소문자, 숫자와 특수기호만 사용 가능합니다.
			</td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" name="mem_phone" value="" />
			-(하이픈) 없이 입력하세요.
			</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="text" name="mem_email" value="" />
			5~100자의 영문 소문자, 숫자와 특수기호만 사용 가능합니다.
			</td>
		</tr>
		
		<tr>
			<td colspan="20">
				<input type="button" class="btn btn-success" value="목록" onclick="location.href='memberList'" />
				<input type="button" class="btn btn-success"  value="가입" onclick="fn_save()" />
				<input type="reset" class="btn btn-success"  value="취소" />
			</td>
		</tr>
	
	</table>
</form>


</body>
</html>