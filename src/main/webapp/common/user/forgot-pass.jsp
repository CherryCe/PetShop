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
			<form>
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

				<!-- Email input -->
				<div class="form-outline mb-4">
					<input type="email" id="email"
						class="form-control form-control-lg"
						placeholder="Enter a valid email address" />
				</div>

				<div class="text-center text-lg-start mt-4 pt-2">
					<button type="button" id="sendBtn"
						class="btn btn-primary btn-lg w-100"
						style="padding-left: 2.5rem; padding-right: 2.5rem;">Continue</button>
				</div>
			</form>
		</div>
	</div>
</div>