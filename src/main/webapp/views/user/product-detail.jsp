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
	<div class="container py-5">
		<div class="row g-5">
			<div class="col-lg-8">
				<%@ include file="/common/user/product-detail.jsp"%>
				<%@ include file="/common/user/comment-list.jsp"%>
				<%@ include file="/common/user/comment-form.jsp"%>
			</div>
			<div class="col-lg-4">
				<%@ include file="/common/user/search-form.jsp"%>
				<%@ include file="/common/user/category.jsp"%>
				<%@ include file="/common/user/recent-post.jsp"%>
				<%@ include file="/common/user/image.jsp"%>
				<%@ include file="/common/user/tags.jsp"%>
				<%@ include file="/common/user/plain-text.jsp"%>
			</div>
		</div>
	</div>
	<%@ include file="/common/user/footer.jsp"%>
	<%@ include file="/common/user/back-to-top.jsp"%>
	<%@ include file="/common/user/javascript-libraries.jsp"%>
	<%@ include file="/common/user/template-javascript.jsp"%>
</body>

</html>