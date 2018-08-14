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
    <script src="js/editormd/editormd.js/editormd.min.js"></script>
    <link rel="stylesheet" href="js/editormd/css/editormd.preview.min.css" />
    <link rel="stylesheet" href="js/editormd/css/editormd.css" >
    <script src="js/editormd/lib/marked.min.js"></script>
    <script src="js/editormd/lib/prettify.min.js"></script>
    <script src="js/editormd/lib/raphael.min.js"></script>
    <script src="js/editormd/lib/underscore.min.js"></script>
    <script src="js/editormd/sequence-diagram.min.js"></script>
    <script src="js/editormd/lib/flowchart.min.js"></script>
    <script src="js/editormd/lib/jquery.flowchart.min.js"></script>
    <script src="/lib/marked.min.js"></script>
    <script src="js/editormd/lib/prettify.min.js"></script>
    <title>前台</title>
<body >
<%@include file="../include/fore/foreTop.jsp"%>
<script>
    $('.dropdown-toggle').dropdown();
</script>
<div class="articleArea">
    <div classs="articleDiv">
        <c:forEach items="${articles}" var="article" varStatus="st">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">${article.title}</h3>
                </div>
                <div class="panel-body">
                        ${article.context}
                </div>
            </div>
        </c:forEach>
    </div>
</div>
</body>




