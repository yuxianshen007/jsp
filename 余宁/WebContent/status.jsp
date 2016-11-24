<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>突然发生的状况！！！</title>
</head>
<body>
<jsp:useBean id="status" class="com.sccc.ceshi" scope="session"></jsp:useBean>
<form action="showinfo.jsp" method="post">
   <% 
   String test=status.getZhuangTai().get(0);
   ArrayList<String> xuanxiang=status.getTiMu().get(test);
   
   out.println("<h1>"+test+"想好了，再怎么回答！！</h1>");
   
   //显示所有选项
   for(int i=0;i<4;i++){
	   String neirong=xuanxiang.get(i);
	   	String num=String.valueOf(i);
	   	out.println("<p><input type='radio' name='phone' value='+"+num+"'>"+neirong+"</input></p>");
   }
   %>
   <button>提交</button>
</form>
</body>
</html>