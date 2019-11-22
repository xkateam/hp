<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!doctype html>
<html lang="zh" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Modernizr is used for flexbox fallback -->
	<script src="${pageContext.request.contextPath }/resources/666666/1/worker1/js/css/modernizr.custom.js"></script>
</head>
<body style="background-color: #2F3035">
	<!-- Compare basket -->
	<div class="compare-basket">
		<button class="action action--button action--compare"><i class="fa fa-check"></i><span class="action__text">详细信息</span></button>
	</div>
	<!-- Main view -->
	<div class="view">
		<!-- Product grid -->
		<section class="grid">
			<!-- Products -->
			<div class="product">
				<div class="product__info">
					<img class="product__image" src="${pageContext.request.contextPath }/resources/666666/1/worker1/images/11.jpg" alt="Product 1" />
                    <h3 class="product__title"><font face="宋体" style="color: white">张三</font></h3>
					<span class="product__price highlight"><font face="宋体" style="color: white">学科：高数</font></span>
					<span class="product__price highlight"><font id="t1" face="宋体" style="color: white">200</font></span>
					<span class="product__price highlight"><font face="宋体" style="color: white">授课时间：14:00-20:00</font></span>
					<span class="product__alcohol extra highlight"><font face="宋体" style="color: white">毕业院校：阿克苏职业技术学院</font></span>
					<span class="product__alcohol extra highlight">1.5H/200¥</span>
					<button class="btn btn-primary btn-lg" onclick="goumai()"><i class="fa fa-shopping-cart"></i><span class="action__text"> Add to cart</span>
					</button>
                    <!-- 模态框（Modal） -->
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                        &times;
                                    </button>
                                    <h4 class="modal-title" id="myModalLabel">
                                        提交订单
                                    </h4>
                                </div>
                                <div class="modal-body">
                                    是否确认购买？
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">取消
                                    </button>
                                    <button type="button" class="btn btn-primary">
                                        确认
                                    </button>
                                </div>
                            </div><!-- /.modal-content -->
                        </div><!-- /.modal -->

					</div>
				</div>
				<label class="action action--compare-add"><input class="check-hidden" type="checkbox" /><i class="fa fa-plus"></i><i class="fa fa-check"></i><span class="action__text action__text--invisible">Add to compare</span></label>
			</div>
			<div class="product">
				<div class="product__info">
					<img class="product__image" src="${pageContext.request.contextPath }/resources/666666/1/worker1/images/22.jpg" alt="Product 2" />
                    <h3 class="product__title"><font face="宋体" style="color: white">李四</font></h3>
                    <span class="product__price highlight"><font face="宋体" style="color: white">学科：英语</font></span>
                    <span class="product__price highlight"><font id="t1" face="宋体" style="color: white">200</font></span>
                    <span class="product__price highlight"><font face="宋体" style="color: white">授课时间：10:00-19:00</font></span>
                    <span class="product__varietal extra highlight"><font face="宋体" style="color: white">毕业院校：天津机电职业技术学院</font></span>
					<span class="product__varietal extra highlight">1.5H/180¥</span>
                    <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal"><i class="fa fa-shopping-cart"></i><span class="action__text"> Add to cart</span>
                    </button>
				</div>
				<label class="action action--compare-add"><input class="check-hidden" type="checkbox" /><i class="fa fa-plus"></i><i class="fa fa-check"></i><span class="action__text action__text--invisible">Add to compare</span></label>
			</div>
			<div class="product">
				<div class="product__info">
					<img class="product__image" src="${pageContext.request.contextPath }/resources/666666/1/worker1/images/33.jpg" alt="Product 3" />
                    <h3 class="product__title"><font face="宋体" style="color: white">王五</font></h3>
                   <span class="product__price highlight"><font face="宋体" style="color: white">学科：高数</font></span>
                   <span class="product__price highlight"><font id="t1" face="宋体" style="color: white">200</font></span>
                    <span class="product__price highlight"><font face="宋体" style="color: white">授课时间：13:00-17:00</font></span>
                    <span class="product__alcohol extra highlight"><font face="宋体" style="color: white">毕业院校：清华大学</font></span>
                    <span class="product__varietal extra highlight">1.5H/200¥</span>
                    <button class="btn btn-primary btn-lg" "><i class="fa fa-shopping-cart"></i><span class="action__text"> Add to cart</span>
                    </button>
				</div>
				<label class="action action--compare-add"><input class="check-hidden" type="checkbox" /><i class="fa fa-plus"></i><i class="fa fa-check"></i><span class="action__text action__text--invisible">Add to compare</span></label>
			</div>
			<div class="product">
				<div class="product__info">
					<img class="product__image" src="${pageContext.request.contextPath }/resources/666666/1/worker1/images/44.jpg" alt="Product 4" />
                    <h3 class="product__title"><font face="宋体" style="color: white">赵六</font></h3>
                    <span class="product__price highlight"><font face="宋体" style="color: white">学科：语文</font></span>
                    <span class="product__price highlight"><font id="t1" face="宋体" style="color: white">200</font></span>
                    <span class="product__price highlight"><font face="宋体" style="color: white">授课时间：9:00—20:00</font></span>
                    <span class="product__alcohol extra highlight"><font face="宋体" style="color: white">毕业院校：云南大学</font></span>
                    <span class="product__alcohol extra highlight">1.5H/200¥</span>
                    <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal"><i class="fa fa-shopping-cart"></i><span class="action__text"> Add to cart</span>
                    </button>
				</div>
				<label class="action action--compare-add"><input class="check-hidden" type="checkbox" /><i class="fa fa-plus"></i><i class="fa fa-check"></i><span class="action__text action__text--invisible">Add to compare</span></label>
			</div>
			<div class="product">
				<div class="product__info">
					<img class="product__image" src="${pageContext.request.contextPath }/resources/666666/1/worker1/images/55.jpg" alt="Product 5" />
                    <h3 class="product__title"><font face="宋体" style="color: white">冯七</font></h3>
                    <span class="product__price highlight"><font face="宋体" style="color: white">学科：生物</font></span>
                    <span class="product__price highlight"><font id="t1" face="宋体" style="color: white">200</font></span>
                    <span class="product__price highlight"><font face="宋体" style="color: white">授课时间：17:00-22:00</font></span>
                    <span class="product__alcohol extra highlight"><font face="宋体" style="color: white">毕业院校：电子科技大学</font></span>
                    <span class="product__alcohol extra highlight">1.5H/200¥</span>
                    <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal"><i class="fa fa-shopping-cart"></i><span class="action__text"> Add to cart</span>
                    </button>
				</div>
				<label class="action action--compare-add"><input class="check-hidden" type="checkbox" /><i class="fa fa-plus"></i><i class="fa fa-check"></i><span class="action__text action__text--invisible">Add to compare</span></label>
			</div>
			<div class="product">
				<div class="product__info">
					<img class="product__image" src="${pageContext.request.contextPath }/resources/666666/1/worker1/images/66.jpg" alt="Product 6" />
                    <h3 class="product__title"><font face="宋体" style="color: white">丁八</font></h3>
                   <span class="product__price highlight"><font face="宋体" style="color: white">学科：化学</font></span>
                   <span class="product__price highlight"><font id="t1" face="宋体" style="color: white">200</font></span>
                   <span class="product__price highlight"><font face="宋体" style="color: white">授课时间：9:00-20:00</font></span>
                    <span class="product__alcohol extra highlight"><font face="宋体" style="color: white">毕业院校：甘肃大学</font></span>
                    <span class="product__alcohol extra highlight">1.5H/200¥</span>
					<<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal"><i class="fa fa-shopping-cart"></i><span class="action__text"> Add to cart</span>
                </button>
				</div>
				<label class="action action--compare-add"><input class="check-hidden" type="checkbox" /><i class="fa fa-plus"></i><i class="fa fa-check"></i><span class="action__text action__text--invisible">Add to compare</span></label>
			</div>
			<div class="product">
				<div class="product__info">
					<img class="product__image" src="${pageContext.request.contextPath }/resources/666666/1/worker1/images/77.jpg" alt="Product 7" />
                    <h3 class="product__title"><font face="宋体" style="color: white">于小三</font></h3>
                   <span class="product__price highlight"><font face="宋体" style="color: white">学科：英语</font></span>
                   <span class="product__price highlight"><font id="t1" face="宋体" style="color: white">200</font></span>
                   <span class="product__price highlight"><font face="宋体" style="color: white">授课时间：17:00-20:00</font></span>
                    <span class="product__alcohol extra highlight"><font face="宋体" style="color: white">毕业院校：南开大学</font></span>
                    <span class="product__alcohol extra highlight">1.5H/200¥</span>
                    <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal"><i class="fa fa-shopping-cart"></i><span class="action__text"> Add to cart</span>
                    </button>
				</div>
				<label class="action action--compare-add"><input class="check-hidden" type="checkbox" /><i class="fa fa-plus"></i><i class="fa fa-check"></i><span class="action__text action__text--invisible">Add to compare</span></label>
			</div>
			<div class="product">
				<div class="product__info">
					<img class="product__image" src="${pageContext.request.contextPath }/resources/666666/1/worker1/images/88.jpg" alt="Product 8" />
                    <h3 class="product__title"><font face="宋体" style="color: white">马小四</font></h3>
                    <span class="product__price highlight"><font face="宋体" style="color: white">学科：物理</font></span>
                    <span class="product__price highlight"><font id="t1" face="宋体" style="color: white">200</font></span>
                    <<span class="product__price highlight"><font face="宋体" style="color: white">授课时间：13:00-19:00</font></span>
                    <span class="product__alcohol extra highlight"><font face="宋体" style="color: white">1毕业院校：河北工业大学</font></span>
                    <span class="product__alcohol extra highlight">1.5H/200¥</span>
                    <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal"><i class="fa fa-shopping-cart"></i><span class="action__text"> Add to cart</span>
                    </button>
				</div>
				<label class="action action--compare-add"><input class="check-hidden" type="checkbox" /><i class="fa fa-plus"></i><i class="fa fa-check"></i><span class="action__text action__text--invisible">Add to compare</span></label>
			</div>
		</section>
	</div><!-- /view -->
	<!-- product compare wrapper -->
	<section class="compare">
		<button class="action action--close"><i class="fa fa-remove"></i><span class="action__text action__text--invisible">Close comparison overlay</span></button>
	</section>
<link href="http://cdn.bootcss.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/666666/1/worker1/css/demo.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/666666/1/worker1/css/component.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/bootstrap-3.3.7-dist/css/bootstrap.min.css">
	<script src="${pageContext.request.contextPath }/resources/js/jquery-2.1.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/666666/1/worker1/js/css/classie.js"></script>
	<script src="${pageContext.request.contextPath }/resources/666666/1/worker1/js/css/main.js"></script>
	<script type="text/javascript">
	function goumai(){
		var username = "${current_user.username}";
	    	console.log(username);
		 var obj = document.getElementById("t1");  
		    jifen=obj.innerHTML;
		    console.log(jifen);
		 
		    $.ajax({
				url:'${pageContext.request.contextPath}/pay/payClass',
				type:'POST',
				data:{
					'username':username,
					'jifen':jifen
					},
				
				success:function(data){
					console.log(data);
					if(data==true){
						alert("购买成功")
					}
					else{
						alert("积分不足请充值");
						window.location.href="${pageContext.request.contextPath }/student/integralPay";
					}
					
					
				}
				
				
			});

	}
	
	</script>
</body>
</html>