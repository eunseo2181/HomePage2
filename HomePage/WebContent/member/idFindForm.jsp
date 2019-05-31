<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi_bbs.jsp" %> 

<!DOCTYPE html> 
<html> 
<head>
  <title>id찾기</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="<%=request.getContextPath() %>js/ajaxsetup.js"></script>
  <script type="text/javascript">
  function idCheck(form){
      if(form.mname.value==""){
        alert("이름을 입력 해주세요");
        document.frm.id.focus();
      }else{
        var url = "idCheck.jsp";
        var param = "mname="+form.mname.value+"&email="+form.email.value;
         $.get(
                    url,
                    param,
                    function(data, textStatus) {
                       $("#idCheck").text(data);
                         
      });
      }
    }
  </script>
	<style type="text/css">
	</style>
</head>
<body> 
<div class="container">
<h1 class="col-sm-offset-2 col-sm-10">id 찾기</h1>
<form class="form-horizontal" 
      action="idCheck.jsp"
      
      method="post" name="frm"
      >

  <div class="form-group">
    <label class="control-label col-sm-2" for="mname">이름</label>
    <div class="col-sm-3">
      <input type="text" name="mname" id="mname" class="form-control" required="required" value="관리자1">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">이메일</label>
    <div class="col-sm-3">
      <input type="email" name="email" id="email" class="form-control" required="required" value="admin@mail.com">
    </div>
  </div>
  
    
   <div class="form-group">
   <div class="col-sm-offset-2 col-sm-5">
    <button type="button" class="btn btn-default" onclick="idCheck(document.frm)" >확인</button>
    <button type="button" class="btn btn-default" onclick="window.close()">취소</button>
   </div>
 </div>
</form>
    <div id="idCheck"></div>
</div>
</body> 
</html> 