<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%-- <jsp:forward page="bbs/openBoardList.do"/>     --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<title>음식 평가 글쓰기</title>
</head>
<body>
 <form action="#">
제목: <input type="text" id="cook_bbs_title" name="cook_bbs_title">
 <textarea rows="20"cols="20" id="cook_bbs_contents" name="cook_bbs_contents" ></textarea>
<button onclick="contentsWriteSubmit()">글쓰기</button>
</form>

 <script type="text/javascript">

	
                CKEDITOR.replace( 'cook_bbs_contents',{
                	filebrowserUploadUrl: '/cookEvalBBs/contentsUpload.do'

                	
                });
                
         
                function contentsWriteSubmit() {
                var contents = CKEDITOR.instances.cook_bbs_contents.getData();

                
					alert(	contents);
                	
				}

     </script>
</body>
</html>