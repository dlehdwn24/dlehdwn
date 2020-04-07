<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<style>


	label{
			position:absolute;
			left:20px;
			bottom:15px;
	}
	
	#submit{
			width:300px;
			height:50px;
	}
	
	body { margin-left: 0px; 
	margin-top: 0px; 
	margin-right: 0px; 
	margin-bottom: 0px;
	}

	#di{
			position:absolute;
			border:2px solid #CCCCCC; 
			width:300px;
			height:50px;
			top:60%; 
			left:45%;
			margin-top:-150px; 
			margin-left:-100px;
			overflow:hidden; 
	}

	#di1{
			position:absolute;
			border:2px solid #CCCCCC; 
			width:300px;
			height:50px;
			top:70%; 
			left:45%;
			margin-top:-150px; 
			margin-left:-100px;
			overflow:hidden; 
	}
	
	#di2{
			position:absolute;
			border:2px solid #CCCCCC; 
			width:300px;
			height:50px;
			top:80%; 
			left:45%;
			margin-top:-150px; 
			margin-left:-100px;
			overflow:hidden; 
	}
	#di3{
			position:absolute;
			border:2px solid #CCCCCC; 
			width:300px;
			height:50px;
			top:90%; 
			left:45%;
			margin-top:-150px; 
			margin-left:-100px;
			overflow:hidden; 
	}

	a.arrow{
 position: relative;
}
a.arrow::after{
 content:"";
 display: block;
 width:10px;
 height:10px;
 border-top:2px solid #333;
 border-right:2px solid #333;
 -webkit-transform: rotate(45deg);
 transform: rotate(45deg);
 position: absolute;
 left:230px;
 top:50%;
 margin-top:-7px;
}


</style>

<script type="text/javascript">
    function check(){
        var chk1=document.signup.ch1.checked;
        var chk2=document.signup.ch2.checked;
        
        if(!chk1){
            alert("약관1에 동의해 주세요");
            return false;
        } 
        else if(!chk2) {
            alert("약관2에 동의해 주세요");
            return false;
        }
        else{
        	location.replace("/member/memberForm.do")
        }
    }
    
    $(document).ready(function() {
        $(".checkall").click( function() {
          $(".ch").prop("checked", this.checked);
        });
      });
    </script>
</head>
<body>

	<form name="signup" action="memberForm.do"  onSubmit="return check()">
	<table border="1" >
	<tr>
	      <td width="200"><p align="right">전체 동의하기</td>
	      <td width="400"><input type="checkbox" name="checkall" class="checkall" value=""></td>
	      <td></td>
	    </tr>
	    <tr>
	       <td width="200"><p align="right">약관동의1</td>
	       <td width="400"><p><input type="checkbox" name="ch1" class="ch" value=""></td>
	       <td><a href="#modal1" class="arrow" rel="modal:open"></a></td>
	    </tr>
	    <tr>
	       <td width="200"><p align="right">약관동의2</td>
	       <td width="400"><p><input type="checkbox" name="ch2" class="ch" value=""></td>
	       <td><a href="#modal2" class="arrow" rel="modal:open"></a></td>
	    </tr>
	<tr >
	<td colspan="3" align="center">
    <input type="submit" value="확인" id=submit >
    </td>
  
    </tr> 
    </table>
</form>

<div id="modal1" class="modal">
  <p>약관 설명</p>
  <a href="#" rel="modal:close">닫기</a>
</div>

<div id="modal2" class="modal">
  <p>약관 설명2</p>
  <a href="#" rel="modal:close">닫기</a>
</div>
</body>
</html>