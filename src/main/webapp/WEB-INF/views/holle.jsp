<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎您</title>
</head>
<body>
<p>欢迎您</p>

										   <table>
										        <thead>
													<tr>
													      <td>姓名</td>
													      <td>性别</td>
													      <td>年龄</td>
													</tr>										
													   <c:forEach items="${infos}" var="infos">
													      <tr>					
													      <td>${infos.uname}</td>
													      <td>${infos.sex}</td>
													      <td>${infos.age}</td>													      
													      <td onclick="up('${infos.infoId}')" id="${infos.infoId}">修改</td>
													      <td onclick="dinfo('${infos.infoId}')" id="${infos.infoId}">删除</td>
													   </tr>
													   </c:forEach>
												</thead>
											</table>
											<form action="post" id="form">
											<input id="uname" name="uname">
											<input id="sex" name="sex">
											<input id="age" name="age">
											<input type="button" value="添加" id="add">
											</form>	
																		
											<form action="post" id="upform">											
											<input id="infoId" name="infoId">
											<input id="age" name="age">
											<input type="button" value="修改" id="upi">
											</form>
</body>
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript">
function dinfo(infoId){
	 location.href="del?infoId="+infoId;
		//重新刷新页面
		window.location.reload();
	}
//修改
function up(infoId){
	 $("#infoId").val(infoId);
	  $("#upi").click(function(){		  
			var dataJson="{";
			var dataArr=[];
			$("#upform").find("input").each(function(index,_this){
				var inputN=$(_this).attr("name");
				if(inputN!="" && inputN!=null){
					dataArr.push(inputN+":'"+$(_this).val()+"'");
					dataJson+=",";
				}
			});
			dataJson="{"+dataArr.join(",")+"}";
			console.log(dataJson);		
			var jsonForms=eval('('+dataJson+')');
			console.log(dataJson);
	    $.post("upinfo",jsonForms,function(data){
				console.log(data);
				var json=$.parseJSON(data);
				alert(json.resMsg);
				//重新刷新页面
				window.location.reload();
			});
	  }); 
	}
	//添加
	  $(function(){
		  $("#add").click(function(){		  
				var dataJson="{";
				var dataArr=[];
				$("#form").find("input").each(function(index,_this){
					var inputN=$(_this).attr("name");
					if(inputN!="" && inputN!=null){
						dataArr.push(inputN+":'"+$(_this).val()+"'");
						dataJson+=",";
					}
				});
				dataJson="{"+dataArr.join(",")+"}";
				console.log(dataJson);		
				var jsonForms=eval('('+dataJson+')');
				console.log(dataJson);
		    $.post("int",jsonForms,function(data){
					console.log(data);
					var json=$.parseJSON(data);
					alert(json.resMsg);
					//重新刷新页面
					window.location.reload();
				});
		  }); 
	  });
</script>
</html>