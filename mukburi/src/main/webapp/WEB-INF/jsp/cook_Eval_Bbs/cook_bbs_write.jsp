<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<title>���� �� �۾���</title>
</head>
<body>
 <form action="#">
����: <input type="text" id="cook_bbs_title" name="cook_bbs_title">
����: <textarea rows="10" cols="40" id="cook_bbs_contents" name="cook_bbs_contents"></textarea>
</form>

 <script type="text/javascript">

	
                CKEDITOR.replace( 'cook_bbs_contents',{
                	filebrowserUploadUrl: '${pageContext.request.contextPath}/cookEvalBBs/contentsUpload.do'

                	
                });

     </script>
</body>
</html>