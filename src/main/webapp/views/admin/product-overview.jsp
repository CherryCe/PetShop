<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<%@ include file="/common/admin/head.jsp"%>

<body>
	<div class="container-fluid position-relative bg-white d-flex p-0">
		<%@ include file="/common/admin/spinner.jsp"%>
		<%@ include file="/common/admin/sidebar.jsp"%>
		<div class="content">
			<%@ include file="/common/admin/navbar.jsp"%>
			<%@ include file="/common/admin/product-overview.jsp"%>
			<%@ include file="/common/admin/footer.jsp"%>
		</div>
		<%@ include file="/common/admin/back-to-top.jsp"%>
	</div>
	<%@ include file="/common/admin/javascript-libraries.jsp"%>
	<%@ include file="/common/admin/template-javascript.jsp"%>
</body>

<script>
	function deleteProduct(id) {
		$
				.ajax({
					url : '/PetShop/admin-product?action=delete&id=' + id
				})
				.then(
						function(data) {
							window.location.href = "http://localhost:8080/PetShop/admin-product?action=overview";
						}).fail(function(error) {
					alert("Oops!!! Please try again");
				});
	}
</script>

</html>