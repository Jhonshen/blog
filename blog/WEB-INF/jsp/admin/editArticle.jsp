<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>

<html>

<head>
    <script src="js/jquery/2.0.0/jquery.min.js"></script>
    <link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <link href="css/back/style.css" rel="stylesheet">
    <script src="js/editormd/editormd.js"></script>
    <link href="js/editormd/css/editormd.css" rel="stylesheet">

<title>文章编辑</title>
    <div class="workingArea">
        <form method="post" action="admin_article_edit">
            <input type="text" value="请输入标题" name="title">
            <input type="text" value="请输入分类" name="category">
            <div class="editormd" id="test-editormd">
                <textarea class="editormd-markdown-textarea" name="test-editormd-markdown-doc"></textarea>
                <!-- 第二个隐藏文本域，用来构造生成的HTML代码，方便表单POST提交，这里的name可以任意取，后台接受时以这个name键为准 -->
                <textarea class="editormd-html-textarea" name="context"></textarea>
            </div>
            <script type="text/javascript">
                var testEditor;
                $(function () {
                    testEditor = editormd("test-editormd", {
                        width: "80%",
                        height: 400,
                        syncScrolling: "single",
                        path: "js/editormd/lib/",
                        saveHTMLToTextarea:true,
                        imageUpload: true,
                        imageFormats: ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
                        imageUploadURL: "/img/site"
                        /*
                         上传的后台只需要返回一个 JSON 数据，结构如下：
                         {
                         success : 0 | 1,           // 0 表示上传失败，1 表示上传成功
                         message : "提示的信息，上传成功或上传失败及错误信息等。",
                         url     : "图片地址"        // 上传成功时才返回
                         }
                         */
                    });
                    /*
                     // or
                     testEditor = editormd({
                     id      : "test-editormd",
                     width   : "90%",
                     height  : 640,
                     path    : "../lib/"
                     });
                     */
                });
            </script>
            <div>
                <input type="submit" class="btn btn-primary btn-lg" role="button" value="发表">
            </div>
        </form>
    </div>

    <div >
        <%@include file="../include/admin/adminFooter.jsp"%>
    </div>
