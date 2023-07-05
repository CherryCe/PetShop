<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Products Start -->
<div class="container-fluid py-5">
	<div class="container">
		<div class="border-start border-5 border-primary ps-5 mb-5">
			<h6 class="text-primary text-uppercase">Products</h6>
			<div class="d-flex align-items-center justify-content-between">
				<h1 class="col-lg-6 display-5 text-uppercase mb-0">Products For
					Your Best Friends</h1>
				<c:if test="${pageIndex != true}">
					<select id="sort"
						class="border border-primary text-primary col-lg-3 p-2 rounded-pill"
						aria-label="Default select example" onChange="sortProduct()">
						<option value>Open this select menu</option>
						<c:forEach items="${categories}" var="item">
							<option value="${item.id}">${item.value}</option>
						</c:forEach>
					</select>
				</c:if>
			</div>
		</div>
		<c:choose>
			<c:when test="${pageIndex == true}">
				<div class="owl-carousel product-carousel">
					<c:forEach items="${products}" var="product">
						<div class="pb-5">
							<div
								class="product-item position-relative bg-light d-flex flex-column text-center">
								<img class="img-fluid mb-4" style="width: 200px; height: 200px"
									src="<c:url value='${product.image}'/>" alt="">
								<h6 class="text-uppercase">${product.title}</h6>
								<h5 class="text-primary mb-0">$${product.price}</h5>
								<div class="btn-action d-flex justify-content-center">
									<a class="btn btn-primary py-2 px-3" href=""><i
										class="bi bi-cart"></i></a> <a class="btn btn-primary py-2 px-3"
										href="<c:url value='/product-detail?action=watch&id=${product.id}'/>"><i
										class="bi bi-eye"></i></a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</c:when>
			<c:otherwise>
				<div class="row">
					<c:forEach items="${products}" var="product">
						<div class="col-md-4 col-lg-3 pb-5 mb-3">
							<div
								class="product-item position-relative bg-light d-flex flex-column text-center">
								<img class="img-fluid mb-4" style="width: 200px; height: 200px"
									src="<c:url value='${product.image}'/>" alt="">
								<h6 class="text-uppercase">${product.title}</h6>
								<h5 class="text-primary mb-0">$${product.price}</h5>
								<div class="btn-action d-flex justify-content-center">
									<a class="btn btn-primary py-2 px-3" href=""><i
										class="bi bi-cart"></i></a> <a class="btn btn-primary py-2 px-3"
										href="<c:url value='/product-detail?action=watch&id=${product.id}'/>"><i
										class="bi bi-eye"></i></a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</c:otherwise>
		</c:choose>
		<c:if test="${pageNumber != false}">		
			<div class="row">
				<div
					class="col-4 d-flex justify-content-between align-items-center mx-auto">
					<c:if test="${currentPage == 1}">
						<a href="javascript:void(0);"
							class="btn btn-primary rounded-pill tm-btn-prev mb-2 disabled"><i
							class="bi bi-chevron-double-left"></i></a>
					</c:if>
					<c:if test="${currentPage > 1}">
						<a href="product?page=${currentPage - 1}"
							class="btn btn-primary rounded-pill tm-btn-prev mb-2"><i
							class="bi bi-chevron-double-left"></i></a>
					</c:if>
					<div class="tm-paging d-flex align-items-center">
						<c:forEach varStatus="i" begin="1" end="${maxPage}">
							<a href="product?page=${i.index}"
								class="tm-paging-link mx-2 ${currentPage == i.index ? 'active' : ''}">${i.index}</a>
						</c:forEach>
					</div>
					<c:if test="${currentPage == maxPage}">
						<a href="javascript:void(0);"
							class="btn btn-primary rounded-pill tm-btn-next disabled"><i
							class="bi bi-chevron-double-right"></i></a>
					</c:if>
					<c:if test="${currentPage < maxPage}">
						<a href="product?page=${currentPage + 1}"
							class="btn btn-primary rounded-pill tm-btn-next"><i
							class="bi bi-chevron-double-right"></i></a>
					</c:if>
				</div>
			</div>
		</c:if>
	</div>
</div>
</div>
<!-- Products End -->