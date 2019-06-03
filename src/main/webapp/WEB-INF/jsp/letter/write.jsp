<html>
<head>
<base href="${pageContext.request.contextPath }/" />
<title>글 쓰기</title>
</head>
<body>
<%@include file ="/WEB-INF/jsp/header.jsp" %>
	<form action="./app/letter/add" method="post">
	 <p>받는사람 :
     <input name="receiverName" value="${param.receiverName}" type="text" readonly="readonly"/></p>
	 <p>받는사람 :
     <input name="receiverId" value="${param.receiverId}" type="text" readonly="readonly"/></p>
       
		
		<p>
			제목 : <br> <input type="text" name="title" value="${param.title }">
		</p>
		<p>
			내용 : <br> <textarea name="content" value="${param.content }" ></textarea>
		</p>
		<button type="submit">작성 완료</button>
		</form>
</body>
</html>