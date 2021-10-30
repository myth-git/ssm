
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增书籍</title>
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <%--出现的问题，我们修改的SQL请求，但是修改失败，初次考虑事务问题，配置完毕之后，依旧失败--%>
        <%--看一下SQL语句，能否执行成功：SQL执行失败，修改未完成--%>
            <input type="hidden" name="bookID" value="${QBooks.bookID}">
        <div class="form-group">
            <label>书籍名称：</label>
            <input type="text" name="bookName" class="form-control" value="${QBooks.bookName}" required>
        </div>

        <div class="form-group">
            <label>书籍数量：</label>
            <input type="text" name="bookCounts" class="form-control" value="${QBooks.bookCounts}" required>
        </div>

        <div class="form-group">
            <label>书籍详情：</label>
            <input type="text" name="detail" class="form-control" value="${QBooks.detail}" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="修改">
        </div>
    </form>
</div>

</body>
</html>

