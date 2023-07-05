<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Widgets Start -->
<div class="container-fluid pt-4 px-4">
	<div class="row g-4">
		<div class="col-sm-12 col-md-6 col-xl-4">
			<div class="h-100 bg-light rounded p-4">
				<div class="d-flex align-items-center justify-content-between mb-2">
					<h6 class="mb-0">Messages</h6>
					<a href="">Show All</a>
				</div>
				<div class="d-flex align-items-center border-bottom py-3">
					<img class="rounded-circle flex-shrink-0"
						src="<c:url value='/templates/admin/img/user.jpg'/>" alt=""
						style="width: 40px; height: 40px;">
					<div class="w-100 ms-3">
						<div class="d-flex w-100 justify-content-between">
							<h6 class="mb-0">Jhon Doe</h6>
							<small>15 minutes ago</small>
						</div>
						<span>Short message goes here...</span>
					</div>
				</div>
				<div class="d-flex align-items-center border-bottom py-3">
					<img class="rounded-circle flex-shrink-0"
						src="<c:url value='/templates/admin/img/user.jpg'/>" alt=""
						style="width: 40px; height: 40px;">
					<div class="w-100 ms-3">
						<div class="d-flex w-100 justify-content-between">
							<h6 class="mb-0">Jhon Doe</h6>
							<small>15 minutes ago</small>
						</div>
						<span>Short message goes here...</span>
					</div>
				</div>
				<div class="d-flex align-items-center border-bottom py-3">
					<img class="rounded-circle flex-shrink-0"
						src="<c:url value='/templates/admin/img/user.jpg'/>" alt=""
						style="width: 40px; height: 40px;">
					<div class="w-100 ms-3">
						<div class="d-flex w-100 justify-content-between">
							<h6 class="mb-0">Jhon Doe</h6>
							<small>15 minutes ago</small>
						</div>
						<span>Short message goes here...</span>
					</div>
				</div>
				<div class="d-flex align-items-center pt-3">
					<img class="rounded-circle flex-shrink-0"
						src="<c:url value='/templates/admin/img/user.jpg'/>" alt=""
						style="width: 40px; height: 40px;">
					<div class="w-100 ms-3">
						<div class="d-flex w-100 justify-content-between">
							<h6 class="mb-0">Jhon Doe</h6>
							<small>15 minutes ago</small>
						</div>
						<span>Short message goes here...</span>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-12 col-md-6 col-xl-4">
			<div class="h-100 bg-light rounded p-4">
				<div class="d-flex align-items-center justify-content-between mb-4">
					<h6 class="mb-0">Calender</h6>
					<a href="">Show All</a>
				</div>
				<div id="calender"></div>
			</div>
		</div>
		<div class="col-sm-12 col-md-6 col-xl-4">
			<div class="h-100 bg-light rounded p-4">
				<div class="d-flex align-items-center justify-content-between mb-4">
					<h6 class="mb-0">To Do List</h6>
					<a href="">Show All</a>
				</div>
				<div class="d-flex mb-2">
					<input class="form-control bg-transparent" type="text"
						placeholder="Enter task">
					<button type="button" class="btn btn-primary ms-2">Add</button>
				</div>
				<div class="d-flex align-items-center border-bottom py-2">
					<input class="form-check-input m-0" type="checkbox">
					<div class="w-100 ms-3">
						<div
							class="d-flex w-100 align-items-center justify-content-between">
							<span>Short task goes here...</span>
							<button class="btn btn-sm">
								<i class="fa fa-times"></i>
							</button>
						</div>
					</div>
				</div>
				<div class="d-flex align-items-center border-bottom py-2">
					<input class="form-check-input m-0" type="checkbox">
					<div class="w-100 ms-3">
						<div
							class="d-flex w-100 align-items-center justify-content-between">
							<span>Short task goes here...</span>
							<button class="btn btn-sm">
								<i class="fa fa-times"></i>
							</button>
						</div>
					</div>
				</div>
				<div class="d-flex align-items-center border-bottom py-2">
					<input class="form-check-input m-0" type="checkbox" checked>
					<div class="w-100 ms-3">
						<div
							class="d-flex w-100 align-items-center justify-content-between">
							<span><del>Short task goes here...</del></span>
							<button class="btn btn-sm text-primary">
								<i class="fa fa-times"></i>
							</button>
						</div>
					</div>
				</div>
				<div class="d-flex align-items-center border-bottom py-2">
					<input class="form-check-input m-0" type="checkbox">
					<div class="w-100 ms-3">
						<div
							class="d-flex w-100 align-items-center justify-content-between">
							<span>Short task goes here...</span>
							<button class="btn btn-sm">
								<i class="fa fa-times"></i>
							</button>
						</div>
					</div>
				</div>
				<div class="d-flex align-items-center pt-2">
					<input class="form-check-input m-0" type="checkbox">
					<div class="w-100 ms-3">
						<div
							class="d-flex w-100 align-items-center justify-content-between">
							<span>Short task goes here...</span>
							<button class="btn btn-sm">
								<i class="fa fa-times"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-12 col-xl-6">
			<div class="bg-light rounded h-100 p-4">
				<h6 class="mb-4">Testimonial</h6>
				<div class="owl-carousel testimonial-carousel">
					<div class="testimonial-item text-center">
						<img class="img-fluid rounded-circle mx-auto mb-4"
							src="<c:url value='/templates/admin/img/testimonial-1.jpg'/>"
							style="width: 100px; height: 100px;">
						<h5 class="mb-1">Client Name</h5>
						<p>Profession</p>
						<p class="mb-0">Dolor et eos labore, stet justo sed est sed.
							Diam sed sed dolor stet amet eirmod eos labore diam</p>
					</div>
					<div class="testimonial-item text-center">
						<img class="img-fluid rounded-circle mx-auto mb-4"
							src="<c:url value='/templates/admin/img/testimonial-2.jpg'/>"
							style="width: 100px; height: 100px;">
						<h5 class="mb-1">Client Name</h5>
						<p>Profession</p>
						<p class="mb-0">Dolor et eos labore, stet justo sed est sed.
							Diam sed sed dolor stet amet eirmod eos labore diam</p>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-12 col-xl-6">
			<div class="bg-light rounded h-100 p-4">
				<iframe class="position-relative rounded w-100 h-100"
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d62285.89091279927!2d107.90790968685084!3d12.656646630808877!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31721bf6ef7077e9%3A0x26ff76fe0a7e871b!2zSMOyYSBYdcOibiwgVHAuIEJ1w7RuIE1hIFRodeG7mXQsIMSQ4bqvayBM4bqvaywgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1681444292166!5m2!1svi!2s"
					frameborder="0" style="border: 0;" allowfullscreen=""
					aria-hidden="false" tabindex="0"></iframe>
			</div>
		</div>
	</div>
</div>
<!-- Widgets End -->