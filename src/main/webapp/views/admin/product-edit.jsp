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
			<%@ include file="/common/admin/product-edit.jsp"%>
			<%@ include file="/common/admin/footer.jsp"%>
		</div>
		<%@ include file="/common/admin/back-to-top.jsp"%>
	</div>
	<%@ include file="/common/admin/javascript-libraries.jsp"%>
	<%@ include file="/common/admin/template-javascript.jsp"%>
</body>

<script>
	var titleOrigin, priceOrigin, categoryIdOrigin, descriptionOrigin, imageOrigin;
	$(document).ready(function() {
		titleOrigin = $('#title').val();
		priceOrigin = $('#price').val();
		categoryIdOrigin = $('#categoryId').val();
		descriptionOrigin = $('#description').val();
		imageOrigin = $('#image').val();
	});

	function reset() {
		$('#title').val(titleOrigin);
		$('#price').val(priceOrigin);
		$('#categoryId').val(categoryIdOrigin);
		$('#description').val(descriptionOrigin);
		$('#image').val(imageOrigin);
		if (imageOrigin.lenth > 0) {
			$('#imgPreview').attr('scr', imageOrigin);
		}
	};

	function submit(id) {
		var isEdit = $('#isEdit').val();
		if (isEdit == 'true') {
			url = '/PetShop/admin-product?action=edit&id=' + id;
		} else {
			url = '/PetShop/admin-product?action=add';
		}
		var formData = {
			'title' : $('#title').val(),
			'price' : $('#price').val(),
			'categoryId' : $('#categoryId').val(),
			'description' : $('#description').val(),
			'srcImage' : $('#srcImage').val()
		};
		$
				.ajax({
					url : url,
					type : 'POST',
					data : formData
				})
				.then(
						function() {
							window.location.href = "http://localhost:8080/PetShop/admin-product?action=overview"
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

	$('#image').change(function() {
		var inputFile = this.files[0];
		var reader = new FileReader();
		reader.onload = function(e) {
			$('#imagePreview').attr("src", e.target.result);
			$('#srcImage').val(reader.result);
		};
		reader.readAsDataURL(inputFile);
	})
</script>

</html>