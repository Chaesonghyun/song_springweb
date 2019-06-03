<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<base href="${pageContext.request.contextPath }/" />
<title>편지 목록</title>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/header.jsp"%>
	<h2>편지 목록</h2>
	<table>
		<thead>
			<tr>
				<td>편지번호</td>
				<td>편지제목</td>
				<td>받은사람</td>
				<td>보낸시간</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="letter" items="${letters}">
				<tr>
					<td><a
						href="./app/letter/read?letterId=${letter.letterId}&mode=SENT"> ${letter.letterId }</a></td>
					<td><a
						href="./app/letter/read?letterId=${letter.letterId}&mode=SENT"> ${letter.title}</a></td>
					<td>${letter.receiverName}</td>
					<td>${letter.cdate }</td>
				
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</head>
</html>