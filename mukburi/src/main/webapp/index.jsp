<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%-- <jsp:forward page="bbs/openBoardList.do"/>     --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
</head>
<body>

 <a href="#this" class="btn" id="list">게시판 리스트</a>
 <a href="#this" class="btn" id="join">회원가입 폼</a>
 
 
 
<%@ include file="/WEB-INF/include/include-body.jspf" %>
<script type="text/javascript">
        $(document).ready(function(){
            $("#list").on("click", function(e){ //글쓰기 버튼
                e.preventDefault();
                fn_openBoardList();
            });
             
            $("#join").on("click", function(e){ //제목
                e.preventDefault();
                fn_openJoinForm($(this));
            });
        });
         
         
        function fn_openBoardList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/bbs/openBoardList.do' />");
            comSubmit.submit();
        }
         
        function fn_openJoinForm(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/user/user_Join.do' />");
            comSubmit.submit();
        }
    </script>
</body>
</html>
