<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%
	String path = request.getContextPath();
%>
<html>
<head>
<title>WebChat | 下载</title>
<link rel="icon" href="<%=path%>/static/foc/index.ico"
	type="image/x-icon" />
<jsp:include page="include/commonfile.jsp" />
<style type="text/css">
table.gridtable {
    font-family: verdana,arial,sans-serif;
    font-size:11px;
    color:#333333;
    border-width: 1px;
    border-color: #666666;
    border-collapse: collapse;
}
table.gridtable th {
    border-width: 1px;
    padding: 8px;
    border-style: solid;
    border-color: #666666;
    background-color: #dedede;
}
table.gridtable td {
    border-width: 1px;
    padding: 8px;
    border-style: solid;
    border-color: #666666;
    background-color: #ffffff;
}
</style>
</head>
<body>
	<jsp:include page="include/header.jsp" />
	<div class="am-cf admin-main">
		<jsp:include page="include/sidebar.jsp" />

		<!-- <div id="main" style="width: 500px; margin: 0 auto;"></div>-->

		<div>
			<table class="gridtable" style="width: 500px; margin: 0 auto;">
				<thead>
					<tr>
						<th>文件名</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody id="sqlTables">
				</tbody>
			</table>
		</div>
	</div>

	<jsp:include page="include/footer.jsp" />
	<script>
		$(function() {
			var targer = $("#main")
			$.ajax({
				url : "filelist",
				dataType : "json",
				success : function(data) {
					for ( var i in data) {
						/*var a1 = $("<text></text>").text(data[i]);
						targer.append(a1);
						var a = $("<a></a><br>").text("下载");
						a.attr("href", "${ctx}/downfile?filename="
								+ encodeURIComponent(data[i]));
						targer.append(a);*/
						$("#sqlTables").append("<tr><td>"+data[i]+"</td><td>"
								+"<a href ='${ctx}/downfile?filename=" + encodeURIComponent(data[i])+"'>下载</a></td><tr>");
						/*var a = $("<a></a>").text("下载");
						a.attr("href", "${ctx}/downfile?filename="
								+ encodeURIComponent(data[i]));
						$("#sqlTables").append(a);
						$("#sqlTables").append("</td><tr>");*/
					}
				}
			})
		})
	</script>
</body>
</html>
