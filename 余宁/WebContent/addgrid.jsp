<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>第一个女孩的信息</title>
<style type="text/css">
div#madiv{
    margin:0px auto;
    background-color:red;
    width:500px;
    height:500px;
    font-size:20px;
}
</style>
</head>
<body>
<div id="madiv">
<div align="center">
<h1>请填写这个女孩的基本信息</h1>

<form action="addgridcheck.jsp" method="post">
颜值:<input type="text" name="yanzhi"><br>
<br>
体重:<input type="text" name="tizhong"><br>
<br>
身高:<input type="text" name="shengao"><br>
<br>
怒值:<input type="text" name="shengQi"><br>
<br>
爱值:<input type="text" name="ai"><br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="确定">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset" value="清除">
</form>
</div>
</div>
</body>
</html>