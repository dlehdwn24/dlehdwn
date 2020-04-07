<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
  request.setCharacterEncoding("UTF-8");
%>    


<html>
<head>
<meta charset=UTF-8">
<title>회원 정보 출력창</title>
<script>
	
function alert() {
    return confirm("회원정보를 삭제하시겠습니까?");
}

</script>
</head>
<body>

<table border="1"  align="center"  width="100%">
    <tr align="center"   bgcolor="">
      <td ><b>아이디</b></td>
      <td><b>비밀번호</b></td>
      <td><b>이름</b></td>
      <td><b>이메일</b></td>
      <td><b>전화번호</b></td>
      <td><b>나이</b></td>
      <td><b>성별</b></td>
      <td><b>가입일</b></td>
      <td><b>삭제</b></td>
   </tr>
   
 <c:forEach var="member" items="${membersList}" >     
   <tr align="center">
      <td>${member.id}</td>
      <td>${member.pwd}</td>
      <td>${member.name}</td>
      <td>${member.email}</td>
      <td>${member.tel}</td>
      <td>${member.age}</td>
      <td>${member.gender}</td>
      <td>${member.joinDate}</td>
      <td><a href="${contextPath}/member/removeMember.do?id=${member.id}" onclick="return alert()">삭제하기</a></td>
    </tr>
  </c:forEach>   
</table>
</body>
</html>
