<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container-fluid h-custom">
	<div class="row d-flex justify-content-center align-items-center h-100">
		<div class="col-md-9 col-lg-6 col-xl-5">
			<img
				src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
				class="img-fluid" alt="Sample image">
		</div>
		<div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
			<form id="register-form" class="was-validated" action="register" method="POST">
				<div
					class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
					<p class="lead fw-normal mb-0 me-3">Sign in with</p>
					<button type="button" class="btn btn-primary rounded-pill mx-1">
						<i class="bi bi-facebook"></i>
					</button>

					<button type="button" class="btn btn-primary rounded-pill mx-1">
						<i class="bi bi-twitter"></i>
					</button>

					<button type="button" class="btn btn-primary rounded-pill mx-1">
						<i class="bi bi-linkedin"></i>
					</button>
				</div>

				<div class="divider d-flex align-items-center my-4">
					<p class="text-center fw-bold mx-3 mb-0">Or</p>
				</div>

				<!-- UserName input -->
				<div class="form-outline mb-4">
					<input type="text" id="username"
						class="form-control form-control-lg"
						placeholder="Enter a valid username" required />
				</div>

				<!-- Email input -->
				<div class="form-outline mb-4">
					<input type="email" id="email" class="form-control form-control-lg"
						placeholder="Enter a valid email address" required />
				</div>

				<!-- Password input -->
				<div class="form-outline mb-3">
					<input type="password" id="password"
						class="form-control form-control-lg" placeholder="Enter password"
						required />
				</div>

				<div class="text-center text-lg-start mt-4 pt-2">
					<button type="button" class="btn btn-primary btn-lg"
						style="padding-left: 2.5rem; padding-right: 2.5rem;"
						onClick="register()">Register</button>
					<p class="small fw-bold mt-2 pt-1 mb-0">
						Do have an account? <a href="login" class="link-danger">Login</a>
					</p>
				</div>
			</form>
		</div>
	</div>
</div>