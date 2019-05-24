<html>
<head>
<base href="${pageContext.request.contextPath }/" />
<title>게시글</title>
</head>
<body>
		<table>
			<tr><td>번호:</td><td>${article.articleId }</td></tr>
			<tr><td>학번:</td><td>${article.userId }</td></tr>
			<tr><td>제목:</td><td>${article.title }</td></tr>
			<tr><td>이름:</td><td>${article.name }</td></tr>
			<tr><td>내용:</td><td>${article.contentHtml }</td></tr>
			<tr><td>시간:</td><td>${article.udate }</td></tr>
		</table>
	<p>
		<a href="./app/main">[홈으로]</a>
	</p>
	
</body>
</html>