<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%String path = request.getContextPath();%>
<html>
<head>
<title>WebChat | 上传</title>
<link rel="icon" href="<%=path%>/static/foc/index.ico"
	type="image/x-icon" />
<jsp:include page="include/commonfile.jsp" />
</head>
<body>
	<jsp:include page="include/header.jsp" />
	<div class="am-cf admin-main">
		<jsp:include page="include/sidebar.jsp" />
		<span style="color: red;">${msg}</span>
		<form action="${ctx}/uploadfile/" method="post"
			enctype="multipart/form-data" onsubmit="return check()">
			<input type="file" name="file" id="file" multiple="multiple"><br>
			<input type="submit" value="上传">
		</form>
	</div>

	<jsp:include page="include/footer.jsp" />
	<script>
		function check() {
			var file = document.getElementById("file");
			if (file.value == "") {
				alert("上传的文件为空")
				return false;
			}
			return true;
		}
	</script>
</body>
</html>
