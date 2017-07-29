<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="/js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript">
        var myPage;
        var winflag;
        $(function($) {
            $('#conBtn').bind('click',function(){
                if (!myPage || myPage.closed){
                    //如果窗口不存在，则新打开一个窗口
                    myPage=window.open('<%=request.getContextPath()%>/chatclient.jsp?clientID=wang.qj&toID=litianhao','wang.qj-litianhao-window','height=530,width=420,top=200,left=100','_blank');
                    myPage.blur();
                }else{
                    myPage.focus;
                }
            });
        });
	</script>
</head>
<body>
<form name="form2" action="/get_comm_user" method="post" >
	<input  id="id" type="hidden" name="id" value=${22} /><br>
	<input  id="userName" type="text" name="userName"  value=${"youqu"} ><br>
	<input  id="userPwd" type="password" name="userPwd"  value=${"000000"} ><br>
	<input type="submit" value="修改"><br>
</form>
<button id='conBtn'>联系卖家</button>
</body>
</html>