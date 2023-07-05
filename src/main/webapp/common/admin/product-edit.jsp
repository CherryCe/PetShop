<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Product Start -->
<div class="content-wrapper mt-3">
	<!-- Content Header (Page header) -->
	<div class="content-header">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-9">
					<h5 class="m-0">
						Add - Edit Product
						</h3>
				</div>
				<!-- /.col -->
				<div class="col-sm-3">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">Add - Edit Product</li>
					</ol>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</div>
	<!-- /.content-header -->

	<!-- Main content -->
	<section class="was-validated">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="card card-primary">
						<div class="card-body">
							<div class="form-group mb-3">
								<label for="title">Title</label> <input type="text" id="title"
									class="form-control"
									value="${product != null ? product.title : ''}" required>
							</div>
							<div class="row mb-3">
								<div class="col-md-4 form-group">
									<label for="price">Price</label> <input type="number"
										id="price" class="form-control"
										value="${product != null ? product.price : ''}" required>
								</div>
								<div class="col-md-8 form-group">
									<label for="category">Category</label> <select id="categoryId"
										class="form-control bg-white" required>
										<option value="${product != null ? product.category.id : ''}"
											selected>${product != null ? product.category.value : 'Open this select menu'}</option>
										<c:forEach items="${categories}" var="item">
											<option value="${item.id}">${item.value}</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col-9">
										<div class="row">
											<div class="col-12 form-group mb-3">
												<label for="description">Description</label>
												<textarea id="description" class="form-control" rows="4"
													required>${product != null ? product.description : ''}</textarea>
											</div>
											<div class="col-12 form-group">
												<label for="image">Image</label> <input type="file"
													id="image" class="form-control" required> <input
													type="hidden" id="srcImage"
													value="${product != null ? product.image : ''}"> <input
													type="hidden" id="isEdit" value="${isEdit}"
													class="form-control">
											</div>
										</div>
									</div>
									<div class="col-3">
										<label for="inputProjectLeader">Preview</label>
										<div
											style="width: 100%; height: 200px; border: 1px dotted gray">
											<img id="imagePreview"
												src="${product != null ? product.image : ''}" height="100%"
												width="100%" />
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- /.card-body -->
					</div>
					<!-- /.card -->
				</div>
				<div class="d-flex justify-content-center mt-3">
					<button type="button" id="resetBtn"
						class="btn btn-success rounded-pill m-3" onClick="reset()">Reset</button>
					<button type="button" id="submitBtn"
						class="btn btn-primary rounded-pill m-3"
						onClick="submit('${product != null ? product.id : ''}')">Submit</button>
				</div>
			</div>
		</div>
	</section>
	<!-- /.content -->
</div>
<!-- Product End-->