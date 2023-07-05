<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Table Start -->
<div class="container-fluid pt-4 px-4 h-100">
	<div class="row g-4">
		<div class="col-12">
			<div class="bg-light rounded h-100 p-4">
				<h6 class="mb-4">List Product</h6>
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Title</th>
								<th scope="col">Price</th>
								<th scope="col">Category</th>
								<th scope="col">Description</th>
								<th scope="col">Image</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${products}" var="item">
								<tr>
									<td>${item.title}</td>
									<td>$${item.price}</td>
									<td>${item.category.value}</td>
									<td>${item.description }</td>
									<td><img src="${item.image}" width="150px" height="150px" /></td>
									<td><a
										href="<c:url value='/admin-product?action=edit&id=${item.id}'/>"
										type="button" id="editBtn"
										class="btn btn-warning rounded-pill m-1"><i
											class="fas fa-edit"></i></a> <span class="dropend">
											<button type="button" id="deleteBtn"
												class="btn btn-danger dropdown-toggle rounded-pill m-1"
												data-bs-toggle="dropdown">
												<i class="fas fa-trash"></i>
											</button>
											<div
												class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0 text-end">
												<span class="btn btn-success m-1"
													onClick="deleteProduct('${item.id}')"><i
													class="fas fa-check-circle"></i></span> <span
													class="btn btn-primary m-1"><i
													class="fas fa-times-circle"></i></span>
											</div>
									</span></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Table End -->