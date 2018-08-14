<%--
  Created by IntelliJ IDEA.
  User: Jhon
  Date: 2018/8/10
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix='fmt' %>

<html>

<head>
    <script src="js/jquery/2.0.0/jquery.min.js"></script>
    <link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <link href="css/fore/style.css" rel="stylesheet">
    <title>首页</title>
<body >
<%@include file="../include/fore/foreTop.jsp"%>
<div class="articleArea">
    <div classs="articleDiv">
        <c:forEach items="${articles}" var="article" varStatus="st">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">${article.title}</h3>
                </div>
                <p><a class="btn btn-primary " href="detail?id=${article.id}" role="button">阅读全文</a></p>
            </div>
        </c:forEach>
    </div>
</div>
</body>




