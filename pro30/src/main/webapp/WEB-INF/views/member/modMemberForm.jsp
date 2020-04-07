<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
  request.setCharacterEncoding("UTF-8");
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정창</title>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<style>
   .text_center{
     text-align:center;
   }
</style>

<script>
function modd(a){
	var value;
	alert(id);
	if(a=='pwd'){
		value=modform.pwd.value;
		alert("pwd:"+value);
}else if(a=='gender'){
	var gender=modform.gender;
	for(var i=0; gender.length;i++){
	 	if(gender[i].checked){
			value=gender[i].value;
			break;
		} 
	}
	
}
	
}
function mod(attribute){
	var value;
	alert(id);
		//alert("mod_type:"+mod_type);
		var modform=document.modform;
		if(attribute=='pwd'){
			value=modform.pwd.value;
			alert("pwd:"+value);
		}
	
		/* else if(attribute=='gender'){
			var gender=modform.gender;
			for(var i=0; gender.length;i++){
			 	if(gender[i].checked){
					value=gender[i].value;
					break;
			 	}
			
			}
		
		} */

		console.log(attribute);
$.ajax({
	type : "post",
	async : false, //false인 경우 동기식으로 처리한다.
	url : "${contextPath}/member/modifyMember.do",
	data : {
		attribute:attribute,
		value:value,
	},
	success : function(data, textStatus) {
		if(data.trim()=='mod_success'){
			alert("회원 정보를 수정했습니다.");
		}else if(data.trim()=='failed'){
			alert("다시 시도해 주세요.");	
		}
		
	},
	error : function(data, textStatus) {
		alert("에러가 발생했습니다."+data);
	},
	complete : function(data, textStatus) {
		//alert("작업을완료 했습니다");
		
	}
}); //end ajax
}
</script>

</head>
<body>
	<form name="modform" method="post"   action="${contextPath}/member/modMember.do">
	<h1  class="text_center">회원 정보 수정창</h1>
	<table  align="center" border="1">

		<tr>
	      <td width="200"><p align="right">아이디</td>
	      <td width="400"><input type="text" name="id" value="${member.id}" readonly></td>
	    </tr>
	   <tr>
	      <td width="200"><p align="right">비밀번호</td>
	      <td width="400"><input type="text" name="pwd" value="${member.pwd}"></td>
	      <td><input type="button" value="수정하기" onclick="mod(pwd)"></td>
	    </tr>
	    <tr>
	       <td width="200"><p align="right">이름</td>
	       <td width="400"><p><input type="text" name="name" value="${member.name}"></td>
	    	
	    </tr>
	    <tr>
	       <td width="200"><p align="right">이메일</td>
	       <td width="400"><p><input type="text" name="email" value="${member.email}"></td>
	    </tr>
	    <tr>
	       <td width="200"><p align="right">전화번호</td>
	       <td width="400"><p><input type="text" name="tel" value="${member.tel}"></td>
	    </tr>
	    <tr>
	       <td width="200"><p align="right">나이</td>
	       <td width="400"><p><input type="text" name="age" value="${member.age}"></td>
	    </tr>
	    <tr>
	       <td width="200"><p align="right">성별</td>
	       <td>
	       
	       <c:choose >
					    <c:when test="${member.gender =='man' }">
					      <input type="radio" name="gender" value="man" checked/>남성 
					   <input type="radio" name="gender" value="girl" />여성
					    </c:when>
					    <c:otherwise>
					      <input type="radio" name="gender" value="man"   /> 남성 
					      <input type="radio" name="gender" value="girl" checked />여성
				</c:otherwise>
			</c:choose>
	       
	    	</td>

		</tr>
	       <td width="200"><p>&nbsp;</p></td>
	       <td width="400"><input type="submit" value="수정하기" ><input type="reset" value="다시입력"></td>
	    </tr>
	</table>
	</form>
</body>
</html>