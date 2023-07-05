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
	<%@ include file="/common/user/products.jsp"%>
	<%@ include file="/common/user/offer.jsp"%>
	<%@ include file="/common/user/pricing-plan.jsp"%>
	<%@ include file="/common/user/footer.jsp"%>
	<%@ include file="/common/user/back-to-top.jsp"%>
	<%@ include file="/common/user/javascript-libraries.jsp"%>
	<%@ include file="/common/user/template-javascript.jsp"%>
</body>

<script>
	function searchProduct() {
		var search = $('#search').val();
		$
				.ajax({
					url : '/PetShop/product?keyword=' + search
				})
				.then(
						function(data) {
							window.location.href = "http://localhost:8080/PetShop/product?keyword="
									+ search;
						}).fail(function(error) {
					alert("Oops!!! Please try again");
				});
	}

	function sortProduct() {
		var sort = $('#sort').val();
		$
				.ajax({
					url : '/PetShop/product?sort=' + sort
				})
				.then(
						function(data) {
							window.location.href = "http://localhost:8080/PetShop/product?sort="
									+ sort;
						}).fail(function(error) {
					alert("Oops!!! Please try again");
				});
	}
</script>

</html>