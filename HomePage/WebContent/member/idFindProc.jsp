<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi_member.jsp" %> 
<jsp:useBean id="dao" class="member.MemberDAO"/>
<%
    String mname = request.getParameter("mname");
		String email = request.getParameter("email");
    
		String id = dao.idFind(mname, email);
 %>
<!DOCTYPE html> 
<html> 
<head>
  <title>id 중복확인</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  
  
  </script>
</head>
<body> 
<div class="container">
<br><br>
<div class="well well-lg col-sm-offset-1 col-sm-4">
<br>

<% 
  if(id==""){
  
    out.print("아이디를 찾을 수 없습니다.");
  
  }else{
	    out.print("당신의 아이디는 "+id+" 입니다.");
  }

 %> 
</div> 
  
<div class="col-sm-offset-2 col-sm-10">
 <button type="button" class="btn" onclick="location.href='idFindForm.jsp'">다시시도</button>
 <button type="button" class="btn" onclick="window.close()">닫기</button>
</div>

</div>
</body> 
</html> 