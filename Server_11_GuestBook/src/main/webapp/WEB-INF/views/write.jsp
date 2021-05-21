<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib	uri="http://java.sun.com/jsp/jstl/core" 
		prefix="c" %>
<c:set value="${pageContext.request.contextPath}" 
			var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	form.v1 {
		width: 80%;
		margin:10px auto;
	}
	
	form.v1 fieldset {
		border:1px solid blue;
		border-radius: 10px;
		padding:5px
	}
	
	/* label과 input 공통 속성을 한번에 지정하기 */
	form.v1 label, 
	form.v1 input,
	form.v1 textarea {
		display: inline-block;
		padding:5px;
		margin:5px;
	}
	
	form.v1 label {
		width:150px;
		text-align: right;
	}
	
	form.v1 input, form.v1 textarea {
		width: 300px;
		border: 1px solid green;
		border-radius: 5px;
	}
	
	form.v1 button {
		outline: 0;
		border:0;
		width: 100px;
		color:white;
		padding: 5px;
	}
	
	form.v1  button:nth-child(2) {
		background-color: green;
	}
	
	form.v1  button:nth-child(3) {
		background-color: red;
	}
	form.v1  button:nth-child(4) {
		background-color: blue;
	}


	
	form.v1 button:hover {
		box-shadow: 2px 2px 2px rgba(0,0,0,0.3);
	}

</style>
<script>
// script를 본문 어디에나 두기 위해
// document에 Event 설정
// 화면에 모든 요소가 다 그려지면...
document.AddEventListener("DOMContentLoaded",function(){
	
	document.querySelector("button.btn_save")
	.addEventListener("click",function(ev) {
		
		let dom = document;
		let gb_writer 
		= dom.querySelector("input[name='gb_writer']").value;
		
		let gb_email 
		= dom.querySelector("input[name='gb_email']").value;
		
		let gb_password 
		= dom.querySelector("input[name='gb_password']").value;
		
		let gb_content 
		= dom.querySelector("textarea").value;
		
		alert("저장버튼"
				+ gb_writer + "\n"
				+ gb_email + "\n"
				+ gb_password + "\n"
				+ gb_content + "\n"
		)
	})
	
})

</script>



</head>
<body>
	<%@ include file="/WEB-INF/views/include_nav.jsp" %>
	<form class="v1" method="POST">
		<fieldset>
		<legend>방명록 쓰기</legend>
		<div>
			<label>작성일자</label>
			<input name="gb_date" 
				type="date" value="${GB.gb_date}">
		</div>

		<div>
			<label>작성시각</label>
			<input name="gb_time" 
				type="time" value=${GB.gb_time}>
		</div>
		<div>
			<label>작성자</label>
			<input name="gb_writer"
				type="text"  value="${GB.gb_writer}">
		</div>
		<div>
			<label>작성자 Email</label>
			<input name="gb_email" 
				type="email" value="${GB.gb_email}">
		</div>
		<div>
			<label>비밀번호</label>
			<input name="gb_password" 
					type="password">
		</div>
		<div>
			<label>내용</label>
			<textarea name="gb_content" rows="5">${GB.gb_content}</textarea> 
		</div>
		<div>
			<label></label>
			<button class="btn_save" 
					type="button">저장</button>
			<button type="reset">다시작성</button>
			<button class="btn_home" 
					type="button">처음으로</button>		
		</div>
		</fieldset>
	</form>

</body>
</html>