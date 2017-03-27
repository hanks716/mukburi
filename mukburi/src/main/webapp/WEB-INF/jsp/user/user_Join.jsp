<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
</head>
<body>
    <form id="frm">
        <table class="board_view">
            <colgroup>
                <col width="15%">
                <col width="*"/>
            </colgroup>
            <caption>회원가입</caption>
            <tbody>
                <tr>
                    <th scope="row">아이디</th>
                    <td><input type="text" id="user_id" name="user_id" class="wdp_90"></input></td>
                </tr>
                <tr>
                    <th scope="row">닉네임</th>
                    <td><input type="text" id="user_nickname" name="user_nickname" class="wdp_90"></input></td>
                </tr>
                <tr>
                    <th scope="row">이름</th>
                    <td><input type="text" id="user_name" name="user_name" class="wdp_90"></input></td>
                </tr>
                <tr>
                    <th scope="row">비밀번호</th>
                    <td><input type="text" id="user_pwd" name="user_pwd" class="wdp_90"></input></td>
                </tr>
                <tr>
                    <th scope="row">연락처</th>
                    <td><input type="text" id="user_hp" name="user_hp" class="wdp_90"></input></td>
                </tr>
                
            </tbody>
        </table>
         
        <a href="#" class="btn" id="write" >작성하기</a>
        <a href="#this" class="btn" id="list" >목록으로</a>
    </form>
    <%@ include file="/WEB-INF/include/include-body.jspf" %>
    <script type="text/javascript">
    	$(document).ready(function(){
        $("#write").on("click", function(e){ //글쓰기 버튼
            e.preventDefault(); 
            fn_userJOIN();
        });
    	});
        
        function fn_userJOIN(){
            var comSubmit = new ComSubmit("frm");
            comSubmit.setUrl("<c:url value='/user/userJoin.do' />");
            comSubmit.submit();
        } 
    </script>
</body>

</html>