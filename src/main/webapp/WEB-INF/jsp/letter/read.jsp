<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>

<html>
<head>
<base href="${pageContext.request.contextPath }/" />

<title>편지 조회</title>
<script type="text/javascript">
	function confirmDelete() {
		if (confirm("삭제하시겠습니까?"))
			return true;
		else
			return false;
	}
</script>
</head>
<body>
<a href="./app/main">[홈으로]</a>
<a href="./app/letter/delete?letterId=${letter.letterId }"
onclick="return confirmDelete();">[편지 삭제]</a>

	<table>
        <tr>
            <td>작성일자: ${letter.cdate}</td>
        </tr>
        <tr><td>보낸사람:${letter.senderId}</td></tr>
        <tr><td>받은사람:${letter.receiverName}</td></tr>
        <tr>
            <td>편지제목:${letter.title}</td>
        </tr>
        <tr>
            <td> 편지 내용: </td></tr>
            <tr>
            <td><p>${letter.content }</p></td>
        </tr>
	</table>
</body>
</html>