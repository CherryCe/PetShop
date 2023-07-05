<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Sidebar Start -->
<div class="sidebar pe-4 pb-3">
	<nav class="navbar bg-light navbar-light">
		<a href="index" class="navbar-brand mx-4 mb-3">
			<h3 class="text-primary">
				<i class="fa fa-hashtag me-2"></i>DASHMIN
			</h3>
		</a>
		<div class="d-flex align-items-center ms-4 mb-4">
			<div class="position-relative">
				<img class="rounded-circle"
					src="<c:url value='/templates/admin/img/user.jpg'/>" alt=""
					style="width: 40px; height: 40px;">
				<div
					class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
			</div>
			<div class="ms-3">
				<h6 class="mb-0">CherryCe</h6>
				<span>Admin</span>
			</div>
		</div>
		<div class="navbar-nav w-100">
			<a href="admin?action=index" class="nav-item nav-link active"><i
				class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
			<div class="nav-item dropdown">
				<a href="#" class="nav-link dropdown-toggle"
					data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Elements</a>
				<div class="dropdown-menu bg-transparent border-0">
					<a href="admin?action=button" class="dropdown-item">Buttons</a> <a
						href="admin?action=typography" class="dropdown-item">Typography</a>
					<a href="admin?action=element" class="dropdown-item">Other
						Elements</a>
				</div>
			</div>
			<a href="admin?action=widget" class="nav-item nav-link"><i
				class="fa fa-th me-2"></i>Widgets</a> <a href="admin?action=form"
				class="nav-item nav-link"><i class="fa fa-keyboard me-2"></i>Forms</a>
			<div class="nav-item dropdown">
				<a href="#" class="nav-link dropdown-toggle"
					data-bs-toggle="dropdown"><i class="fa fa-solid fa-tags"></i>Products</a>
				<div class="dropdown-menu bg-transparent border-0">
					<a href="admin-product?action=overview" class="dropdown-item">Overview</a>
					<a href="admin-product?action=add" class="dropdown-item">New /
						Edit</a>
				</div>
			</div>
			<a href="admin?action=table" class="nav-item nav-link"><i
				class="fa fa-table me-2"></i>Tables</a> <a href="admin?action=chart"
				class="nav-item nav-link"><i class="fa fa-chart-bar me-2"></i>Charts</a>
			<div class="nav-item dropdown">
				<a href="#" class="nav-link dropdown-toggle"
					data-bs-toggle="dropdown"><i class="far fa-file-alt me-2"></i>Pages</a>
				<div class="dropdown-menu bg-transparent border-0">
					<a href="admin?action=signin" class="dropdown-item">Sign In</a> <a
						href="admin?action=signup" class="dropdown-item">Sign Up</a> <a
						href="admin?action=404" class="dropdown-item">404 Error</a> <a
						href="admin?action=blank" class="dropdown-item">Blank Page</a>
				</div>
			</div>
		</div>
	</nav>
</div>
<!-- Sidebar End -->