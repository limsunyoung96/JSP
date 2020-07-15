<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단</title>
<style type="text/css">
table {
	min-width: 500px;
}

tr, td {
	border: 1px dotted;
}

h4 {
	text-align: center;
}
</style>
</head>
<body>
	<h3>구구단</h3>

	<%=guguDan()%>

</body>
</html>

<%!public String guguDan() {
		String str = "<table >";
		for (int dan = 2; dan < 10; dan++) {
			if (dan % 3 == 2) {
				str += "<tr>";
			}

			str += "<td><h4>" + dan + "단</h4><ul>";
			for (int i = 1; i <= 9; i++) {
				str += "<li>" + dan + " * " + i + " = " + (dan * i) + "</li>";
			}

			str += "</ul></td>";

			if (dan % 3 == 1) {
				str += "</tr>";
			}
		}
		str += "</table>";

		return str;
	}%>