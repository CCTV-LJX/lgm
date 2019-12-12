<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<!--导入j	Query类库-->
	<script src="${pageContext.request.contextPath }/js/jquery-3.3.1.js" type="text/javascript" charset="utf-8"></script>

	<script type="text/javascript">
		
		/*页面加载完毕的入口*/
		$(function(){
			
			/*给账号输入框绑定change事件*/
			$('#username').on('change', function(){
				//把输入框内容发送过去
				var username = $(this).val(); //输入框内容
				//发送异步请求
				$('#name-result').load(
					'${pageContext.request.contextPath }/UserServlet?action=usernameExit', 
					{
						'username':username
					}
				);
			});
			
		});
		
	</script>


</head>
<body>

	<h2>用户注册</h2>
	<form action="${pageContext.request.contextPath }/UserServlet?action=registUi"
		method="post">
		
		账号：<input type="text" name="username" id="username">&nbsp;&nbsp;
				<span id="name-result"></span><br><br>
		密码：<input type="password" name="password"> <br><br>
			
		<button type="submit">注册</button>
	</form>



</body>
</html>