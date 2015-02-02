<%@ include file="/WEB-INF/jspf/header.jspf"%>

<html>
	<head>
		<title>User List</title>
	</head>
	<body>
		<table>
			<c:forEach items="${userList}" var="user">
				<tr>
					<td>
						${user.id}
					</td>
					<td>
						${user.lastName}, ${user.firstName}
					</td>
					<td>
						<a href="<c:url value="/flow/form?_flowId=form&id=${user.id}"/>">[Edit]</a>
					</td>
				</tr>
			</c:forEach>
		</table>
		
		<a href="<c:url value="/flow/welcome"/>">Back</a>
	</body>
</html>
