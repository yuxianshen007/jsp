<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
     <%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>测试</title>
</head>
<body> 
>
<sql:setDataSource 
var="SQL" 
driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
url="jdbc:sqlserver://localhost:1433;DatabaseName=lol" 
user="sa" 
password=""/>
<sql:query dataSource="${SQL }"
sql="select * from hero where id=22" var="result">
</sql:query>
<c:forEach var="row" items="${result.rows }">
<hr>第一题<hr>
<table>
<tr><td><center>ID</center></td><td><center>名字</center></td><td><center>描述</center></td><td><center>别称</center></td></tr>
<tr>
<td><c:out value="${row.id }"/></td>
<td><c:out value="${row.name }"/></td>
<td><c:out value="${row.descs }"/></td>
<td><c:out value="${row.nick_name }"/></td>
</tr>
</table>
</c:forEach>

<br>
<hr>第二题<hr>
<table><tr><td>ID</td><td>名字</td><td>描述</td><td>别称</td></tr></table>
<sql:query var="zhong" dataSource="${SQL }" sql="select * from hero where id>=10 and id<=20">
</sql:query>
<c:forEach var="rows" items="${zhong.rows }">
<table>
<tr>
<td><c:out value="${rows.id }"/></td>
<td><c:out value="${rows.name }"/></td>
<td><c:out value="${rows.descs }"/></td>
<td><c:out value="${rows.nick_name }"/></td>
</tr>
</table>
</c:forEach>

<br>
<hr>第三题<hr>
<sql:query dataSource="${SQL}"
sql="select * from hero" var="select">
</sql:query>
<c:forEach items="${select.rows }" var="hero1">
<c:if test="${fn:contains(hero1.name,'艾希')}">
<c:set var="string1" value="${fn:replace(hero1.name,'艾希','盖伦' )}"/>
替换结果：${string1}
</c:if>
</c:forEach>

<br>
<hr>第四题<hr>
   <sql:query dataSource="${SQL }"
sql="select * from hero" var="select01">
</sql:query>
<c:forEach items="${select01.rows }" var="hero2">
<c:if test="${fn:contains(hero2.name,'盖伦')}">
<c:set var="string2" value="${fn:substring( hero2.nick_name,0,4)}"/>
<center>截断结果：${string2}</center>
</c:if>
</c:forEach>

<br>
<hr>第五题<hr>
<sql:query dataSource="${SQL }"
sql="select * from hero where id=9" var="select02">
</sql:query>
<c:forEach items="${select02.rows }" var="hero3">
<c:if test="${fn:contains(hero3.id,9) }">
<c:set var="string3" value="${fn:length(hero3.descs )}"/>
id为9的英雄字符串描述有：${string3}个字节。
</c:if>
</c:forEach>
</body>
</html>