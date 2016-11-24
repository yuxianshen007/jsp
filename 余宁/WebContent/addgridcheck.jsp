<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加女孩信息的数据处理页面</title>
<jsp:useBean id="xs" class="com.sccc.xinxi" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="xs"/>
</head>
<body>
<h1>这个女孩的基本信息</h1>
颜值是:<jsp:getProperty property="yanzhi" name="xs"/>分<br>
体重是:<jsp:getProperty property="tizhong" name="xs"/>kg<br>
身高是:<jsp:getProperty property="shengao" name="xs"/>cm<br>
怒值是:<jsp:getProperty property="shengQi" name="xs"/>分<br>
爱值是:<jsp:getProperty property="ai" name="xs"/>分<br>
<p><a href="status.jsp">开始进行测试>>></a></p>
</body>
</html>