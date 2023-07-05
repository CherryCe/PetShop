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
	<%@ include file="/common/user/change-pass.jsp"%>
	<%@ include file="/common/user/footer.jsp"%>
	<%@ include file="/common/user/back-to-top.jsp"%>
	<%@ include file="/common/user/javascript-libraries.jsp"%>
	<%@ include file="/common/user/template-javascript.jsp"%>
</body>

<script>
	$('#changeBtn')
			.click(
					function() {
						var currentPass = $('#currentPass').val();
						var newPass = $('#newPass').val();
						var formData = {
							'currentPass' : currentPass,
							'newPass': newPass
						};
						$
								.ajax({
									url : 'change-pass',
									type : 'POST',
									data : formData
								})
								.then(
										function(data) {
											ToastMaker(
													'Password has been changed!!!',
													3000,
													{
														styles : {
															fontSize : '18px',
															backgroundColor : 'red'
														},
														classList : [
																'custom-class',
																'other-custom-class' ],
														align : 'right',
														valign : 'bottom'
													});
										})
								.fail(
										function(error) {
											ToastMaker(
													'Your password is not correct, try again!!!',
													3000,
													{
														styles : {
															fontSize : '18px',
															backgroundColor : 'red'
														},
														classList : [
																'custom-class',
																'other-custom-class' ],
														align : 'right',
														valign : 'bottom'
													});
										})
					});
</script>

</html>