<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript"
	src="https://unpkg.com/toastmaker/dist/toastmaker.min.js"></script>
<script type="text/javascript"
	src="<c:url value='https://cdn.ckeditor.com/4.7.0/standard/ckeditor.js'/>"></script>
<script type="text/javascript">
	CKEDITOR.replace('description', {
		filebrowserBrowseUrl : '<s:url value="/forckeditor" />'
	});
</script>
<script src="<c:url value='/templates/admin/lib/chart/chart.min.js'/>"></script>
<script src="<c:url value='/templates/admin/lib/easing/easing.min.js'/>"></script>
<script
	src="<c:url value='/templates/admin/lib/waypoints/waypoints.min.js'/>"></script>
<script
	src="<c:url value='/templates/admin/lib/owlcarousel/owl.carousel.min.js'/>"></script>
<script
	src="<c:url value='/templates/admin/lib/tempusdominus/js/moment.min.js'/>"></script>
<script
	src="<c:url value='/templates/admin/lib/tempusdominus/js/moment-timezone.min.js'/>"></script>
<script
	src="<c:url value='/templates/admin/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js'/>"></script>