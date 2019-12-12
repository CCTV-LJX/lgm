<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<style type="text/css">
		
		*{
			margin: 0;
			padding: 0;
		}
		
		#main{
			width: 1000px;
			margin: 30px auto;
		}
		
		#main #nav{
			width: 100%;
			height: 40px;
			border:1px solid orange;
		}
		
		#main .products{
			width: 100%;
			height: 840px;
			border:1px solid black;
		}
		
	</style>
	
	<!--导入jQuery-->
	<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js" type="text/javascript" charset="utf-8"></script>
	
	<script type="text/javascript">
		
		//页面加载完毕入口
		$(function(){
			
			//发生ajax请求，请求商品分类的数据
			$.post(
				'${pageContext.request.contextPath}/CategoryServlet?action=queryAll',  //请求url地址
				{
					'category':'book',
					'data':'aa'
				}, //发送的数据，必须是js对象，也就是json格式的数据
				function(categories){ //后台回调数据，形参data接收数据
					//循环读取数据，展示
					//index，数据下标，从0开始
					//category，每条数据
					$(categories).each(function(index, category){						
						//动态创建控件
						var $aEle = $('<a href="#">' + category.name + '</a>');
						//插入父标签中
						$('#nav').append($aEle);
					});
				},
				'json'//数据格式
			);
		});
		
		
	</script>


</head>
<body>

	<h2>主画面</h2>
	
	<div id="main">
		
		<div id="nav">
			
		</div>
		
		<div class="products">
			
		</div>
		
	</div>

</body>
</html>