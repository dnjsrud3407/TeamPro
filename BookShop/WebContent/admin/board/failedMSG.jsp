<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	alert("${sessionScope.ErrorMSG}");
	history.go(-1);
</script>