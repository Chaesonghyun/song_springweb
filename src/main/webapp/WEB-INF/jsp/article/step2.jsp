<html>
<head>
<base href="${pageContext.request.contextPath }/" />
<title>게시글</title>
</head>
<body>
    <h2>게시글 입력</h2>
    <form action="./app/article/step3" method="post">
        <p>
            제목:<br> <input type=text" name="title" value="${param.title }">
        </p>
        <p>
            내용:<br>
            <textarea name="content" style="width: 100%; height: 200px;" required></textarea>
        </p>

        <button type="submit">게시글 저장</button>
    </form>
</body>
</html>