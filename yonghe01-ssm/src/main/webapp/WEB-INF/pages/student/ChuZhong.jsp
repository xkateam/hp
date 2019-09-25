<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="meta description">
<title>Home</title>

<!--=== Favicon ===-->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/resources/course/kemu/img/favicon.ico"
	type="image/x-icon" />

<!-- All Vendor & plugins CSS include -->
<link
	href="${pageContext.request.contextPath }/resources/course/kemu/css/vendor.css"
	rel="stylesheet">
<!-- Main Style CSS -->
<link
	href="${pageContext.request.contextPath }/resources/course/kemu/css/style.css"
	rel="stylesheet">

<!--[if lt IE 9]>
<script src="/oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="/oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<script
	src="${pageContext.request.contextPath }/resources/js/jquery-2.1.1.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/js/request.js"></script>
</head>
<script type="text/javascript">
	//此处是获取当前时间转成数据库中的datatime格式
	
	var account_id = null;
	var username = "${current_user.username}";
	$(function() {

		init();
		$(".get_div_id")
				.on(
						"click",
						function() {
							var current_shop_id = this.parentNode.parentNode.parentNode.parentNode.id;
							alert("课程ID" + current_shop_id);
							$(".to_pay")
									.on(
											"click",
											function() {
												alert("购买")
												$
														.ajax({

															url : '${pageContext.request.contextPath}/course/payPoint',
															type : 'POST',
															cache : false,
															dataType : "json",
															
															async : false,
															data : {
																'course_id' : current_shop_id,
															
																'username' : username
															},

															success : function(data) {
																console.log("message="+data)
																//if(data.message=="购买成功"){
																	// window.location.href("${pageContext.request.contextPath}/student/success")
															//	}
																//else
																	//window.location.href("${pageContext.request.contextPath}/student/fail")
												

															}
														});
											})

						});
		function init() {
			var grade_description = '初中';
			var getCourse_id = null;
			$
					.ajax({
						url : '${pageContext.request.contextPath}/course/findAllCourse',
						cache : false,
						async : false,
						type : 'POST',
						data : {
							'grade_description' : grade_description
						},

						success : function(data) {

							console.log(data);

							var array = data.data.data;

							for (var i = 0; i < array.length; i++) {
								$("#course_id" + (i + 1)).attr("value",
										array[i].course_id);
								$("#course_price" + (i + 1)).attr("value",
										array[i].price);
								$("#course_teacher_name" + (i + 1)).attr(
										"value", array[i].teacher_name);
								$("#course_teacher_phone" + (i + 1)).attr(
										"value", array[i].teacher_phone);
							}

						}

					});
		}
	})
</script>
<body>


	<!-- our product area start -->
	<section class="our-product section-space">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title text-center">
						<h2>
							安心教育资源管理系统<br>初中课程
						</h2>

					</div>
				</div>
			</div>
			<div class="row mtn-40">

				<!-- product single item start -->
				<div class="col-lg-3 col-md-4 col-sm-6 " name="first_course" id="1">
					<div class="product-item mt-40">
						<figure class="product-thumb">
							<a href="#"> <img class="pri-img"
								src="${pageContext.request.contextPath }/resources/teacher/czCourseImg/czShuXue.jpg"
								alt="product"> <img class="sec-img"
								src="${pageContext.request.contextPath }/resources/teacher/czCourseImg/shuxuelaoshi.jpg"
								alt="product">
							</a>
							<div class="product-badge">
								<div class="product-label new">
									<span></span>
								</div>
								<div class="product-label discount">
									<span></span>
								</div>
							</div>
							<div class="button-group">
								<a href="#" data-toggle="tooltip" data-placement="left"
									title="Add to wishlist"><i class="lnr lnr-heart"></i></a> <a
									href="#" data-toggle="modal" data-target="#quick_view"
									class="get_div_id"><span data-toggle="tooltip"
									data-placement="left" title="Quick View"><i
										class="lnr lnr-magnifier"></i></span></a>
								</lable>
								<a data-toggle="tooltip" data-placement="left" title="点击进行购买"
									class="to_pay"><i class="lnr lnr-cart"></i></a>
							</div>
						</figure>
						<div class="product-caption">
							<p class="product-name">
								<a href="product-details.html">Flowers bouquet</a>
							</p>

							<div class="price-box">
								<city type="hidden" name="course_name1" value="value"
									id="course_id1"></city>
								<label>课程价格</label><br> <input type="text"
									name="course_price1" id="course_price1"><br> <label>老师姓名</label><br>
								<input type="text" name="course_teacher_name1"
									id="course_teacher_name1"><br> <label>联系电话</label><br>
								<input type="text" name="course_teacher_phone1"
									id="course_teacher_phone1">
							</div>
						</div>
					</div>
				</div>


				<!-- product single item end -->

				<!-- product single item start -->
				<div class="col-lg-3 col-md-4 col-sm-6" id="2">
					<div class="product-item mt-40">
						<figure class="product-thumb">
							<a href="product-details.html"> <img name="course1_img1"
								class="pri-img"
								src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-3.jpg"
								alt="product"> <img name="course1_img2" class="sec-img"
								src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-4.jpg"
								alt="product">
							</a>
							<div class="product-badge">
								<div class="product-label new">
									<span>new</span>
								</div>
							</div>
							<div class="button-group">
								<a href="#" data-toggle="tooltip" data-placement="left"
									title="Add to wishlist"><i class="lnr lnr-heart"></i></a> <a
									href="#" data-toggle="modal" data-target="#quick_view"
									class="get_div_id"><span data-toggle="tooltip"
									data-placement="left" title="Quick View"><i
										class="lnr lnr-magnifier"></i></span></a> <a href="#"
									data-toggle="tooltip" data-placement="left" title="Add to Cart"><i
									class="lnr lnr-cart"></i></a>
							</div>
						</figure>
						<div class="product-caption">
							<p class="product-name" name="course1_view">Jasmine flowers
								white</p>
							<div class="price-box">
								<label>课程价格</label><br> <input type="text"
									name="course_price2" id="course_price2"><br> <label>老师姓名</label><br>
								<input type="text" name="course_teacher_name2"
									id="course_teacher_name2"><br> <label>联系电话</label><br>
								<input type="text" name="course_teacher_phone2"
									id="course_teacher_phone2">
							</div>
						</div>
					</div>
				</div>
				<!-- product single item end -->

				<!-- product single item start -->
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="product-item mt-40">
						<figure class="product-thumb">
							<a href="product-details.html"> <img class="pri-img"
								src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-5.jpg"
								alt="product"> <img class="sec-img"
								src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-6.jpg"
								alt="product">
							</a>
							<div class="product-badge">
								<div class="product-label new">
									<span>new</span>
								</div>
							</div>
							<div class="button-group">
								<a href="#" data-toggle="tooltip" data-placement="left"
									title="Add to wishlist"><i class="lnr lnr-heart"></i></a> <a
									href="#" data-toggle="modal" data-target="#quick_view"><span
									data-toggle="tooltip" data-placement="left" title="Quick View"><i
										class="lnr lnr-magnifier"></i></span></a> <a href="#"
									data-toggle="tooltip" data-placement="left" title="Add to Cart"><i
									class="lnr lnr-cart"></i></a>
							</div>
						</figure>
						<div class="product-caption">
							<p class="product-name">
								<a href="product-details.html">Blossom bouquet flower</a>
							</p>
							<div class="price-box">
								<label>课程价格</label><br> <input type="text"
									name="course_price3" id="course_price3"><br> <label>老师姓名</label><br>
								<input type="text" name="course_teacher_name3"
									id="course_teacher_name3"><br> <label>联系电话</label><br>
								<input type="text" name="course_teacher_phone3"
									id="course_teacher_phone3">
							</div>
						</div>
					</div>
				</div>
				<!-- product single item end -->

				<!-- product single item statrt -->
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="product-item mt-40">
						<figure class="product-thumb">
							<a href="product-details.html"> <img class="pri-img"
								src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-7.jpg"
								alt="product"> <img class="sec-img"
								src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-8.jpg"
								alt="product">
							</a>
							<div class="product-badge">
								<div class="product-label new">
									<span>new</span>
								</div>
								<div class="product-label discount">
									<span>15%</span>
								</div>
							</div>
							<div class="button-group">
								<a href="#" data-toggle="tooltip" data-placement="left"
									title="Add to wishlist"><i class="lnr lnr-heart"></i></a> <a
									href="#" data-toggle="modal" data-target="#quick_view"><span
									data-toggle="tooltip" data-placement="left" title="Quick View"><i
										class="lnr lnr-magnifier"></i></span></a> <a href="#"
									data-toggle="tooltip" data-placement="left" title="Add to Cart"><i
									class="lnr lnr-cart"></i></a>
							</div>
						</figure>
						<div class="product-caption">
							<p class="product-name">
								<a href="product-details.html">Hyacinth white stick</a>
							</p>
							<div class="price-box">
								<label>课程价格</label><br> <input type="text"
									name="course_price4" id="course_price4"><br> <label>老师姓名</label><br>
								<input type="text" name="course_teacher_name4"
									id="course_teacher_name4"><br> <label>联系电话</label><br>
								<input type="text" name="course_teacher_phone4"
									id="course_teacher_phone4">
							</div>
						</div>
					</div>
				</div>
				<!-- product single item end -->

				<!-- product single item start -->
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="product-item mt-40">
						<figure class="product-thumb">
							<a href="product-details.html"> <img class="pri-img"
								src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-9.jpg"
								alt="product"> <img class="sec-img"
								src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-10.jpg"
								alt="product">
							</a>
							<div class="product-badge">
								<div class="product-label new">
									<span>new</span>
								</div>
								<div class="product-label discount">
									<span>30%</span>
								</div>
							</div>
							<div class="button-group">
								<a href="#" data-toggle="tooltip" data-placement="left"
									title="Add to wishlist"><i class="lnr lnr-heart"></i></a> <a
									href="#" data-toggle="modal" data-target="#quick_view"><span
									data-toggle="tooltip" data-placement="left" title="Quick View"><i
										class="lnr lnr-magnifier"></i></span></a> <a href="#"
									data-toggle="tooltip" data-placement="left" title="Add to Cart"><i
									class="lnr lnr-cart"></i></a>
							</div>
						</figure>
						<div class="product-caption">
							<p class="product-name">
								<a href="product-details.html">Orchid flower red stick</a>
							</p>
							<div class="price-box">
								<label>课程价格</label><br> <input type="text"
									name="course_price5" id="course_price5"><br> <label>老师姓名</label><br>
								<input type="text" name="course_teacher_name5"
									id="course_teacher_name5"><br> <label>联系电话</label><br>
								<input type="text" name="course_teacher_phone5"
									id="course_teacher_phone5">
							</div>
						</div>
					</div>
				</div>
				<!-- product single item end -->

				<!-- product single item start -->
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="product-item mt-40">
						<figure class="product-thumb">
							<a href="product-details.html"> <img class="pri-img"
								src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-11.jpg"
								alt="product"> <img class="sec-img"
								src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-12.jpg"
								alt="product">
							</a>
							<div class="product-badge">
								<div class="product-label new">
									<span>new</span>
								</div>
								<div class="product-label discount">
									<span>12%</span>
								</div>
							</div>
							<div class="button-group">
								<a href="#" data-toggle="tooltip" data-placement="left"
									title="Add to wishlist"><i class="lnr lnr-heart"></i></a> <a
									href="#" data-toggle="modal" data-target="#quick_view"><span
									data-toggle="tooltip" data-placement="left" title="Quick View"><i
										class="lnr lnr-magnifier"></i></span></a> <a href="#"
									data-toggle="tooltip" data-placement="left" title="Add to Cart"><i
									class="lnr lnr-cart"></i></a>
							</div>
						</figure>
						<div class="product-caption">
							<p class="product-name">
								<a href="product-details.html">Flowers daisy pink stick</a>
							</p>
							<div class="price-box">
								<label>课程价格</label><br> <input type="text"
									name="course_price6" id="course_price6"><br> <label>老师姓名</label><br>
								<input type="text" name="course_teacher_name6"
									id="course_teacher_name6"><br> <label>联系电话</label><br>
								<input type="text" name="course_teacher_phone6"
									id="course_teacher_phone6">
							</div>
						</div>
					</div>
				</div>
				<!-- product single item end -->

				<!-- product single item start -->
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="product-item mt-40">
						<figure class="product-thumb">
							<a href="product-details.html"> <img class="pri-img"
								src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-2.jpg"
								alt="product"> <img class="sec-img"
								src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-1.jpg"
								alt="product">
							</a>
							<div class="product-badge">
								<div class="product-label new">
									<span>new</span>
								</div>
								<div class="product-label discount">
									<span>10%</span>
								</div>
							</div>
							<div class="button-group">
								<a href="#" data-toggle="tooltip" data-placement="left"
									title="Add to wishlist"><i class="lnr lnr-heart"></i></a> <a
									href="#" data-toggle="modal" data-target="#quick_view"><span
									data-toggle="tooltip" data-placement="left" title="Quick View"><i
										class="lnr lnr-magnifier"></i></span></a> <a href="#"
									data-toggle="tooltip" data-placement="left" title="Add to Cart"><i
									class="lnr lnr-cart"></i></a>
							</div>
						</figure>
						<div class="product-caption">
							<p class="product-name">
								<a href="product-details.html">Rose bouquet white</a>
							</p>
							<div class="price-box">
								<label>课程价格</label><br> <input type="text"
									name="course_price7" id="course_price7"><br> <label>老师姓名</label><br>
								<input type="text" name="course_teacher_name7"
									id="course_teacher_name7"><br> <label>联系电话</label><br>
								<input type="text" name="course_teacher_phone7"
									id="course_teacher_phone7">
							</div>
						</div>
					</div>
				</div>
				<!-- product single item end -->

				<!-- product single item start -->
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="product-item mt-40">
						<figure class="product-thumb">
							<a href="product-details.html"> <img class="pri-img"
								src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-4.jpg"
								alt="product"> <img class="sec-img"
								src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-3.jpg"
								alt="product">
							</a>
							<div class="product-badge">
								<div class="product-label discount">
									<span>10%</span>
								</div>
							</div>
							<div class="button-group">
								<a href="#" data-toggle="tooltip" data-placement="left"
									title="Add to wishlist"><i class="lnr lnr-heart"></i></a> <a
									href="#" data-toggle="modal" data-target="#quick_view"><span
									data-toggle="tooltip" data-placement="left" title="Quick View"><i
										class="lnr lnr-magnifier"></i></span></a> <a href="#"
									data-toggle="tooltip" data-placement="left" title="Add to Cart"><i
									class="lnr lnr-cart"></i></a>
							</div>
						</figure>
						<div class="product-caption">
							<p class="product-name">
								<a href="product-details.html">Bouquet flowers pink</a>
							</p>
							<div class="price-box">
								<label>课程价格</label><br> <input type="text"
									name="course_price8" id="course_price8"><br> <label>老师姓名</label><br>
								<input type="text" name="course_teacher_name8"
									id="course_teacher_name8"><br> <label>联系电话</label><br>
								<input type="text" name="course_teacher_phone8"
									id="course_teacher_phone8">
							</div>
						</div>
					</div>
				</div>
				<!-- product single item end -->

				<div class="col-12">
					<div class="view-more-btn">
						<a class="btn-hero btn-load-more" href="shop.html">view more
							products</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- our product area end -->

	<!-- banner statistics start -->
	<section class="banner-statistics-right">
		<div class="container">
			<div class="row">
				<!-- start banner item start -->
				<div class="col-md-6">
					<div class="banner-item banner-border">
						<figure class="banner-thumb">
							<a href="#"> <img
								src="${pageContext.request.contextPath }/resources/course/kemu/img/banner/banner-1.jpg"
								alt="">
							</a>
							<figcaption class="banner-content banner-content-right">
								<h2 class="text1">for you</h2>
								<h2 class="text2">Tulip Flower</h2>
								<a class="store-link" href="#">shop now</a>
							</figcaption>
						</figure>
					</div>
				</div>
				<!-- start banner item end -->

				<!-- start banner item start -->
				<div class="col-md-6">
					<div class="banner-item banner-border">
						<figure class="banner-thumb">
							<a href="#"> <img
								src="${pageContext.request.contextPath }/resources/course/kemu/img/banner/banner-2.jpg"
								alt="">
							</a>
							<figcaption class="banner-content banner-content-right">
								<h2 class="text1">for you</h2>
								<h2 class="text2">Flower & Box</h2>
								<a class="store-link" href="#">shop now</a>
							</figcaption>
						</figure>
					</div>
				</div>
				<!-- start banner item end -->
			</div>
		</div>
	</section>
	<!-- banner statistics end -->

	<!-- trending product area start -->
	<section class="top-sellers section-space">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title text-center">
						<h2>top seller</h2>
						<p>Accumsan vitae pede lacus ut ullamcorper sollicitudin
							quisque libero</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div
						class="product-carousel--4 slick-row-15 slick-sm-row-10 slick-arrow-style">
						<!-- product single item start -->
						<div class="product-item">
							<figure class="product-thumb">
								<a href="product-details.html"> <img class="pri-img"
									src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-9.jpg"
									alt="product"> <img class="sec-img"
									src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-6.jpg"
									alt="product">
								</a>
								<div class="product-badge">
									<div class="product-label new">
										<span>new</span>
									</div>
								</div>
								<div class="button-group">
									<a href="#" data-toggle="tooltip" data-placement="left"
										title="Add to wishlist"><i class="lnr lnr-heart"></i></a> <a
										href="#" data-toggle="modal" data-target="#quick_view"><span
										data-toggle="tooltip" data-placement="left" title="Quick View"><i
											class="lnr lnr-magnifier"></i></span></a> <a href="#"
										data-toggle="tooltip" data-placement="left"
										title="Add to Cart"><i class="lnr lnr-cart"></i></a>
								</div>
							</figure>
							<div class="product-caption">
								<p class="product-name">
									<a href="product-details.html">Blossom bouquet flower</a>
								</p>
								<div class="price-box">
									<span class="price-regular">$50.00</span> <span
										class="price-old"><del>$80.00</del></span>
								</div>
							</div>
						</div>
						<!-- product single item end -->

						<!-- product single item start -->
						<div class="product-item">
							<figure class="product-thumb">
								<a href="product-details.html"> <img class="pri-img"
									src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-10.jpg"
									alt="product"> <img class="sec-img"
									src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-1.jpg"
									alt="product">
								</a>
								<div class="product-badge">
									<div class="product-label new">
										<span>new</span>
									</div>
									<div class="product-label discount">
										<span>10%</span>
									</div>
								</div>
								<div class="button-group">
									<a href="#" data-toggle="tooltip" data-placement="left"
										title="Add to wishlist"><i class="lnr lnr-heart"></i></a> <a
										href="#" data-toggle="modal" data-target="#quick_view"><span
										data-toggle="tooltip" data-placement="left" title="Quick View"><i
											class="lnr lnr-magnifier"></i></span></a> <a href="#"
										data-toggle="tooltip" data-placement="left"
										title="Add to Cart"><i class="lnr lnr-cart"></i></a>
								</div>
							</figure>
							<div class="product-caption">
								<p class="product-name">
									<a href="product-details.html">Rose bouquet white</a>
								</p>
								<div class="price-box">
									<span class="price-regular">$55.00</span> <span
										class="price-old"><del>$80.00</del></span>
								</div>
							</div>
						</div>
						<!-- product single item end -->

						<!-- product single item start -->
						<div class="product-item">
							<figure class="product-thumb">
								<a href="product-details.html"> <img class="pri-img"
									src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-11.jpg"
									alt="product"> <img class="sec-img"
									src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-8.jpg"
									alt="product">
								</a>
								<div class="product-badge">
									<div class="product-label new">
										<span>new</span>
									</div>
									<div class="product-label discount">
										<span>15%</span>
									</div>
								</div>
								<div class="button-group">
									<a href="#" data-toggle="tooltip" data-placement="left"
										title="Add to wishlist"><i class="lnr lnr-heart"></i></a> <a
										href="#" data-toggle="modal" data-target="#quick_view"><span
										data-toggle="tooltip" data-placement="left" title="Quick View"><i
											class="lnr lnr-magnifier"></i></span></a> <a href="#"
										data-toggle="tooltip" data-placement="left"
										title="Add to Cart"><i class="lnr lnr-cart"></i></a>
								</div>
							</figure>
							<div class="product-caption">
								<p class="product-name">
									<a href="product-details.html">Hyacinth white stick</a>
								</p>
								<div class="price-box">
									<span class="price-regular">$30.00</span> <span
										class="price-old"><del>$55.00</del></span>
								</div>
							</div>
						</div>
						<!-- product single item end -->

						<!-- product single item start -->
						<div class="product-item">
							<figure class="product-thumb">
								<a href="product-details.html"> <img class="pri-img"
									src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-12.jpg"
									alt="product"> <img class="sec-img"
									src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-2.jpg"
									alt="product">
								</a>
								<div class="product-badge">
									<div class="product-label new">
										<span>new</span>
									</div>
									<div class="product-label discount">
										<span>10%</span>
									</div>
								</div>
								<div class="button-group">
									<a data-toggle="tooltip" data-placement="left"
										title="Add to wishlist"><i class="lnr lnr-heart"></i></a> <a
										data-toggle="modal" data-target="#quick_view"><span
										data-toggle="tooltip" data-placement="left" title="点击购买"><i
											class="lnr lnr-magnifier">点击购买</i></span></a> <a href="#"
										data-toggle="tooltip" data-placement="left" title="点击购买"><i
										class="lnr lnr-cart"></i></a>
								</div>
							</figure>
							<div class="product-caption">
								<p class="product-name">
									<a href="product-details.html">Flowers bouquet pink</a>
								</p>
								<div class="price-box">
									<span class="price-regular">$60.00</span> <span
										class="price-old"><del>$70.00</del></span>
								</div>
							</div>
						</div>
						<!-- product single item end -->

						<!-- product single item start -->
						<div class="product-item">
							<figure class="product-thumb">
								<a href="product-details.html"> <img class="pri-img"
									src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-4.jpg"
									alt="product"> <img class="sec-img"
									src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-3.jpg"
									alt="product">
								</a>
								<div class="product-badge">
									<div class="product-label discount">
										<span>10%</span>
									</div>
								</div>
								<div class="button-group">
									<a href="#" data-toggle="tooltip" data-placement="left"
										title="Add to wishlist"><i class="lnr lnr-heart"></i></a> <a
										href="#" data-toggle="modal" data-target="#quick_view"><span
										data-toggle="tooltip" data-placement="left" title="Quick View"><i
											class="lnr lnr-magnifier"></i></span></a> <a href="#"
										data-toggle="tooltip" data-placement="left"
										title="Add to Cart"><i class="lnr lnr-cart"></i></a>
								</div>
							</figure>
							<div class="product-caption">
								<p class="product-name">
									<a href="product-details.html">Bouquet flowers pink</a>
								</p>
								<div class="price-box">
									<span class="price-regular">$60.00</span> <span
										class="price-old"><del>$70.00</del></span>
								</div>
							</div>
						</div>
						<!-- product single item end -->

						<!-- product single item start -->
						<div class="product-item">
							<figure class="product-thumb">
								<a href="product-details.html"> <img class="pri-img"
									src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-9.jpg"
									alt="product"> <img class="sec-img"
									src="${pageContext.request.contextPath }/resources/course/kemu/img/product/product-10.jpg"
									alt="product">
								</a>
								<div class="product-badge">
									<div class="product-label new">
										<span>new</span>
									</div>
									<div class="product-label discount">
										<span>30%</span>
									</div>
								</div>
								<div class="button-group">
									<a href="#" data-toggle="tooltip" data-placement="left"
										title="Add to wishlist"><i class="lnr lnr-heart"></i></a> <a
										href="#" data-toggle="modal" data-target="#quick_view"><span
										data-toggle="tooltip" data-placement="left" title="Quick View"><i
											class="lnr lnr-magnifier"></i></span></a> <a href="#"
										data-toggle="tooltip" data-placement="left"
										title="Add to Cart"><i class="lnr lnr-cart"></i></a>
								</div>
							</figure>
							<div class="product-caption">
								<p class="product-name">
									<a href="product-details.html">Orchid flower red stick</a>
								</p>
								<div class="price-box">
									<span class="price-regular">$80.00</span> <span
										class="price-old"><del>$90.00</del></span>
								</div>
							</div>
						</div>
						<!-- product single item end -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- trending product area end -->

	<!-- Instagram Feed Area Start -->
	<div class="instagram-feed-area">
		<div class="instagram-feed-thumb">
			<div id="instafeed" class="instagram-carousel"
				data-userid="6666969077"
				data-accesstoken="6666969077.1677ed0.d325f406d94c4dfab939137c5c2cc6c2">
			</div>
		</div>
	</div>
	<!-- Instagram Feed Area End -->

	</main>
	<!-- main wrapper end -->

	<!-- Start Footer Area Wrapper -->
	<footer class="footer-wrapper">

		<!-- footer widget area start -->
		<div class="footer-widget-area">
			<div class="container">
				<div class="footer-widget-inner section-space">
					<div class="row mbn-30">
						<!-- footer widget item start -->
						<div class="col-lg-5 col-md-6 col-sm-8">
							<div class="footer-widget-item mb-30">
								<div class="footer-widget-title">
									<h5>My account</h5>
								</div>
								<ul class="footer-widget-body accout-widget">
									<li class="address"><em><i class="lnr lnr-map-marker"></i></em>
										184 Main Rd E, St Albans VIC 3021, Australia</li>
									<li class="email"><em><i class="lnr lnr-envelope"></i>Mail
											us: </em> <a href="mailto:test@yourdomain.com">yourmail@gmail.com</a>
									</li>
									<li class="phone"><em><i
											class="lnr lnr-phone-handset"></i> Phones: </em> <a
										href="tel:(012)800456789-987">(012) 800 456 789-987</a></li>
								</ul>
								<div class="payment-method">
									<img
										src="${pageContext.request.contextPath }/resources/course/kemu/img/payment-pic.png"
										alt="payment method">
								</div>
							</div>
						</div>
						<!-- footer widget item end -->

						<!-- footer widget item start -->
						<div class="col-lg-2 col-md-6 col-sm-4">
							<div class="footer-widget-item mb-30">
								<div class="footer-widget-title">
									<h5>categories</h5>
								</div>
								<ul class="footer-widget-body">
									<li><a href="#">Ecommerce</a></li>
									<li><a href="#">shopify</a></li>
									<li><a href="#">Prestashop</a></li>
									<li><a href="#">Opencart</a></li>
									<li><a href="#">Magento</a></li>
								</ul>
							</div>
						</div>
						<!-- footer widget item end -->

						<!-- footer widget item start -->
						<div class="col-lg-2 col-md-6 col-sm-6">
							<div class="footer-widget-item mb-30">
								<div class="footer-widget-title">
									<h5>information</h5>
								</div>
								<ul class="footer-widget-body">
									<li><a href="#">Home</a></li>
									<li><a href="#">About Us</a></li>
									<li><a href="#">Contact Us</a></li>
									<li><a href="#">Exchanges</a></li>
									<li><a href="#">Shipping</a></li>
								</ul>
							</div>
						</div>
						<!-- footer widget item end -->

						<!-- footer widget item start -->
						<div class="col-lg-2 offset-lg-1 col-md-6 col-sm-6">
							<div class="footer-widget-item mb-30">
								<div class="footer-widget-title">
									<h5>Quick Links</h5>
								</div>
								<ul class="footer-widget-body">
									<li><a href="#">Store Location</a></li>
									<li><a href="#">My Account</a></li>
									<li><a href="#">Orders Tracking</a></li>
									<li><a href="#">Size Guide</a></li>
									<li><a href="#">Contact Us</a></li>
								</ul>
							</div>
						</div>
						<!-- footer widget item end -->
					</div>
				</div>
			</div>
		</div>
		<!-- footer widget area end -->

		<!-- footer bottom area start -->
		<div class="footer-bottom-area">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-md-6 order-2 order-md-1">
						<div class="copyright-text">
							<p>
								Copyright &copy; 2019.Company name All rights reserved.<a
									target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
							</p>
						</div>
					</div>
					<div class="col-md-6 order-1 order-md-2">
						<div class="footer-social-link">
							<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-linkedin"></i></a> <a href="#"><i
								class="fa fa-instagram"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- footer bottom area end -->

	</footer>
	<!-- End Footer Area Wrapper -->

	<!-- Quick view modal start弹出购买的模态框-->
	<div class="modal" id="quick_view">
		<div class="modal-dialog modal-lg modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<!-- product details inner end -->
					<div class="product-details-inner">
						<div class="row">
							<div class="col-lg-5 col-md-5">
								<div class="product-large-slider">
									<div class="pro-large-img">
										<img
											src="${pageContext.request.contextPath }/resources/teacher/czCourseImg/shuxuelaoshi.jpg"
											alt="product-details" />
									</div>

								</div>
								<div class="pro-nav slick-row-10 slick-arrow-style"></div>
							</div>
							<div class="col-lg-7 col-md-7">
								<div class="product-details-des quick-details">
									<h3 class="product-name">Orchid flower white stick</h3>

									<div class="price-box">
										<span class="price-regular">$70.00</span> <span
											class="price-old"><del>$90.00</del></span>
									</div>
									<h5 class="offer-text">
										<strong>Hurry up</strong>! offer ends in:
									</h5>

									<p class="pro-desc">Lorem ipsum dolor sit amet, consetetur
										sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut
										labore et dolore magna aliquyam erat.</p>
									<div class="quantity-cart-box d-flex align-items-center">
										<h5>qty:</h5>
										<div class="quantity">
											<div class="pro-qty">
												<input type="text" value="1">
											</div>
										</div>
										<div class="action_link">
											<a class="to_pay">点击进行购买</a>
										</div>
									</div>
									<div class="useful-links">
										<a href="#" data-toggle="tooltip" title="Compare"><i
											class="lnr lnr-sync"></i>compare</a> <a href="#"
											data-toggle="tooltip" title="Wishlist"><i
											class="lnr lnr-heart"></i>wishlist</a>
									</div>
									<div class="like-icon">
										<a class="facebook" href="#"><i class="fa fa-facebook"></i>like</a>
										<a class="twitter" href="#"><i class="fa fa-twitter"></i>tweet</a>
										<a class="pinterest" href="#"><i class="fa fa-pinterest"></i>save</a>
										<a class="google" href="#"><i class="fa fa-google-plus"></i>share</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- product details inner end -->
				</div>
			</div>
		</div>
	</div>
	<!-- Quick view modal end -->

	<!-- offcanvas search form start -->
	<div class="offcanvas-search-wrapper">
		<div class="offcanvas-search-inner">
			<div class="offcanvas-close">
				<i class="lnr lnr-cross"></i>
			</div>
			<div class="container">
				<div class="offcanvas-search-box">
					<form class="d-flex bdr-bottom w-100">
						<input type="text" placeholder="Search entire storage here...">
						<button class="search-btn">
							<i class="lnr lnr-magnifier"></i>search
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- offcanvas search form end -->

	<!-- offcanvas mini cart start -->
	<div class="offcanvas-minicart-wrapper">
		<div class="minicart-inner">
			<div class="offcanvas-overlay"></div>
			<div class="minicart-inner-content">
				<div class="minicart-close">
					<i class="lnr lnr-cross"></i>
				</div>
				<div class="minicart-content-box">
					<div class="minicart-item-wrapper">
						<ul>
							<li class="minicart-item">
								<div class="minicart-thumb">
									<a href="product-details.html"> <img
										src="${pageContext.request.contextPath }/resources/course/kemu/img/cart/cart-1.jpg"
										alt="product">
									</a>
								</div>
								<div class="minicart-content">
									<h3 class="product-name">
										<a href="product-details.html">Flowers bouquet pink for
											all flower lovers</a>
									</h3>
									<p>
										<span class="cart-quantity">1 <strong>&times;</strong></span>
										<span class="cart-price">$100.00</span>
									</p>
								</div>
								<button class="minicart-remove">
									<i class="lnr lnr-cross"></i>
								</button>
							</li>
							<li class="minicart-item">
								<div class="minicart-thumb">
									<a href="product-details.html"> <img
										src="${pageContext.request.contextPath }/resources/course/kemu/img/cart/cart-2.jpg"
										alt="product">
									</a>
								</div>
								<div class="minicart-content">
									<h3 class="product-name">
										<a href="product-details.html">Jasmine flowers white for
											all flower lovers</a>
									</h3>
									<p>
										<span class="cart-quantity">1 <strong>&times;</strong></span>
										<span class="cart-price">$80.00</span>
									</p>
								</div>
								<button class="minicart-remove">
									<i class="lnr lnr-cross"></i>
								</button>
							</li>
						</ul>
					</div>

					<div class="minicart-pricing-box">
						<ul>
							<li><span>sub-total</span> <span><strong>$300.00</strong></span>
							</li>
							<li><span>Eco Tax (-2.00)</span> <span><strong>$10.00</strong></span>
							</li>
							<li><span>VAT (20%)</span> <span><strong>$60.00</strong></span>
							</li>
							<li class="total"><span>total</span> <span><strong>$370.00</strong></span>
							</li>
						</ul>
					</div>

					<div class="minicart-button">
						<a href="#"><i class="fa fa-shopping-cart"></i> view cart</a> <a
							href="#"><i class="fa fa-share"></i> checkout</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- offcanvas mini cart end -->

	<!-- Scroll to top start -->
	<div class="scroll-top not-visible">
		<i class="fa fa-angle-up"></i>
	</div>
	<!-- Scroll to Top End -->

	<!-- All vendor & plugins & active js include here -->
	<!--All Vendor Js -->
	<script
		src="${pageContext.request.contextPath }/resources/course/kemu/js/vendor.js"></script>
	<!-- Active Js -->
	<script
		src="${pageContext.request.contextPath }/resources/course/kemu/js/active.js"></script>
</body>

</html>
