<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<%@ include file="/common/user/head.jsp"%>

<body>
	<%@ include file="/common/user/spinner.jsp"%>
	<%@ include file="/common/user/topbar.jsp"%>
	<%@ include file="/common/user/navbar.jsp"%>
	<%@ include file="/common/user/login.jsp"%>
	<%@ include file="/common/user/footer.jsp"%>
	<%@ include file="/common/user/back-to-top.jsp"%>
	<%@ include file="/common/user/javascript-libraries.jsp"%>
	<%@ include file="/common/user/template-javascript.jsp"%>
</body>

<script>
	function login() {
		var formData = {
			'username' : $('#username').val(),
			'password' : $('#password').val()
		};
		$.ajax({
			url : '/PetShop/login',
			type : 'POST',
			data : formData
		}).then(function() {
			window.location.href = "http://localhost:8080/PetShop/index"
		}).fail(function() {
			ToastMaker('Oops!!! Please try again', 3000, {
				styles : {
					fontSize : '18px',
					backgroundColor : 'red'
				},
				classList : [ 'custom-class', 'other-custom-class' ],
				align : 'center',
				valign : 'bottom'
			});
		});
	};
</script>

</html>