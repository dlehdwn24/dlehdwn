<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
<title>헤더</title>
<script>
function logout_alert() {
    return confirm("로그아웃을 하시겠습니까?");
}

</script>
</head>
<body>
<table border=0  width="100%">
  <tr>
     <td>
		<a href="${contextPath}/main.do"> <h1>메인</h1>
			<%-- <img src="${contextPath}/resources/image/duke_swing.gif"  /> --%>
		</a>
     </td>
     <td>
      <c:choose>
       <c:when test="${isLogOn == true  && member!= null && member.id=='admin'}">
        <a href="${contextPath}/member/listMembers.do">회원관리</a>
        </c:when>
        <c:otherwise>
        	기본
        	<a href="${contextPath}/member/testForm.do">테스트</a>
        </c:otherwise>
       </c:choose>
       
     </td>
     
     <td>
        
       <c:choose>
          <c:when test="${isLogOn == true  && member!= null && member.id != 'admin'}">
            <h3>환영합니다. ${member.name }님!</h3>
            <a href="${contextPath}/member/logout.do"  onclick="return logout_alert();">로그아웃</a>
            <a href="${contextPath}/member/modMemberForm.do">정보수정</a>
            <a href="${contextPath}/deleteMemberForm.do">회원탈퇴</a>
          </c:when>
          <c:when test="${isLogOn == true  && member!= null && member.id=='admin'}">
            <h3>환영합니다. ${member.name }님!</h3>
            <a href="${contextPath}/member/logout.do">로그아웃</a>
            <a href="${contextPath}/member/listMembers.do">회원관리</a>
          </c:when>
          <c:otherwise>
	        <a href="${contextPath}/member/loginForm.do">로그인</a>
	        <a href="${contextPath}/member/agree.do">회원가입</a>
	      </c:otherwise>
	      
	   </c:choose>     
	
     </td>
  </tr>
</table>


</body>
</html>