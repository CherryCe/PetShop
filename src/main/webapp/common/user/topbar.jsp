<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Topbar Start -->
<div class="container-fluid border-bottom d-none d-lg-block">
	<div class="row">
		<div class="col-lg-8 d-flex">
			<div class="col-lg-4 text-center py-2">
				<div class="d-inline-flex align-items-center">
					<i class="bi bi-geo-alt fs-1 text-primary me-3"></i>
					<div class="text-start">
						<h6 class="text-uppercase mb-1">Our Office</h6>
						<span>Hoa Xuan, BMT</span>
					</div>
				</div>
			</div>
			<div class="col-lg-4 text-center border-start border-end py-2">
				<div class="d-inline-flex align-items-center">
					<i class="bi bi-envelope-open fs-1 text-primary me-3"></i>
					<div class="text-start">
						<h6 class="text-uppercase mb-1">Email Us</h6>
						<span>mrpii.2k3@gmail.com</span>
					</div>
				</div>
			</div>
			<div class="col-lg-4 text-center py-2">
				<div class="d-inline-flex align-items-center">
					<i class="bi bi-phone-vibrate fs-1 text-primary me-3"></i>
					<div class="text-start">
						<h6 class="text-uppercase mb-1">Call Us</h6>
						<span>0966454404</span>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4 navbar justify-content-evenly">
			<input id="search"
				class="border border-primary rounded-pill text-dark border p-1"
				type="text" name="search" placeholder="Search...">
			<button type="button" class="nav-icon d-inline-block bg-white border-0" onClick="searchProduct()">
				<i class="bi bi-search fs-4 text-primary"></i>
			</button>
			<a class="nav-icon position-relative text-decoration-none" href="#">
				<i class="bi bi-cart4 fs-4 text-primary"></i> <span
				class="position-absolute top-0 translate-middle badge rounded-pill bg-light text-dark">99</span>
			</a>
			<div class="nav-item dropdown">
				<a
					class="nav-icon position-relative text-decoration-none dropdown-toggle"
					data-bs-toggle="dropdown" href="#"> <i
					class="bi bi-person-fill fs-4 text-primary"></i>
				</a>
				<div class="dropdown-menu m-0" style="right: 0; left: auto;">
					<c:choose>
						<c:when test="${empty sessionScope.currentUser}">
							<a href="login" class="dropdown-item">Login</a>
							<a href="register" class="dropdown-item">Register</a>
						</c:when>
						<c:otherwise>
							<a href="#" class="dropdown-item"
								style="pointer-events: none; color: var(--primary)">Hi,
								${sessionScope.currentUser.username}</a>
							<c:if test="${sessionScope.currentUser.getIsAdmin() == true}">
								<a href="admin?action=index" class="dropdown-item">Dashmin</a>
							</c:if>
							<a href="change-pass" class="dropdown-item">Change pass</a>
							<a href="logout" class="dropdown-item">Logout</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Topbar End -->