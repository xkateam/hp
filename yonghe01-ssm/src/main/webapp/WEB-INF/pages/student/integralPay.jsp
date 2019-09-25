<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>在线充值 | 充值中心</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/integralPay.css"/>
<script src="${pageContext.request.contextPath }/resources/js/jquery-2.1.1.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/integralPay.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/request.js"></script>

</head> 

<body>
    <div class="wrap">
        <div class="header">
            <div class="sec clearfix">
                <div class="top-logo">
                    
                </div>
                <div class="top-nav">
                    <ul class="clearfix">
                    
                       
                    </ul> 
                     
                </div>
            </div>
        </div>
        <div class="main">
            <div class="sec">
                <div class="m-hd">
                    <h3><span class="h5bp">充值中心</span></h3>
                    <ul class="menu clearfix">
                        
                    </ul>
                </div>                 
                <div class="m-bd">
                    <div class="m-tab">
                        <ul class="pay-tab clearfix">
                            <li data-tab="pay-ebank"><label jslog-trace-id="onlinegiantpay">在线充值<i class="ico-hot"></i></label></li>
                           
                        </ul>
                    </div> <div class="pay-wrap">
                        <!-- 网银充值 start -->
                        <div class="pay-panel pay-ebank">
                         <form method="post" name="pay-ebank" id="pay-ebank" action="/p.php">
	                    <input type="hidden" name="__EVENTTARGET" value="" />
						<input type="hidden" name="__EVENTARGUMENT" value="" />
						<input name="act" type="hidden" id="act" size="25" value="wxpay"> 
						<input name="acctype" type="hidden" id="acctype" size="25" value="jr">    
						<input name="account" type="hidden" id="account" size="25" value=""> 
						<input name="fee" type="hidden" id="fee" size="25" value="">
						<input name="bankid" type="hidden" id="bankid" size="25">   
                            <ul>
                                <li class="clearfix">
                                    <label class="label-title">您充值的账号：</label>
                                    <div class="label-item">
                                        <div class="form-item">
                                            <input autocomplete="off" isok="1"  jslog-trace-id="onlinegiantpayaccount" class="input-account" type="text" id="account_jr" value="" placeholder="请输入手机账号 / 个性账号" />
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <label class="label-title">充值金额：</label>
                                    <div class="label-item amounts" data-amounts="10">
                                        <div class="label-cell rating">
                                            <label fee="10"  jslog-trace-id="onlinegiantpayfee10">10 元</label>
                                            <label fee="100" jslog-trace-id="onlinegiantpayfee100">100 元</label>
                                            <label fee="500" jslog-trace-id="onlinegiantpayfee500">500 元</label>
                                            <label fee="1000" jslog-trace-id="onlinegiantpayfee1000">1000 元</label>
                                        </div> 
                                        <div class="custom clearfix">
                                            <div class="form-item form-small">
                                                <input autocomplete="off" class="input-amount-qrcode" jslog-trace-id="onlinegiantpayinputfee" pattern="\d*" type="text" id="fee_jr" fee="0" placeholder="其他金额" data-min="1" data-max="100000" maxlength="6" />
                                            </div>
                                            <p>元（10元 = <span class="points_base" id="points_base1">1</span> 积分）</p>
                                            <p class="induction" style="display:none"></p>
                                        </div>
                                    </div>
                                </li> 
                                <li class="clearfix">
                                    <label class="label-title">充值积分：</label>
                                    <div class="label-item clearfix points">
                                		<p class="num"><span><i class="points_total" id="points_total1">0</i> 积分</span></p>
                                    </div>
                                </li> 
                                <li class="clearfix">
                                    <label class="label-title">充值渠道：</label>
                                    <div class="label-item">
                                        <div class="label-cell channel-tab clearfix"  id="payid_jr">  
					                      <!-- <label class="ico-alipay"  jslog-trace-id="onlinegiantpayalipay" id="alipay" payid="qfillalipayqrc">支付宝</label>-->
                                            <label class="ico-alipay"  jslog-trace-id="onlinegiantpayalipay" id="alipay" payid="qfillalipay">支付宝</label>

                                           <label class="ico-wepay"   jslog-trace-id="onlinegiantpaywx" id="wechat" payid="qfillfromwxpay">微信支付</label>
                                            <!-- <label class="ico-unionpayqrc" id="unionpayqrc" payid="qfillfromunionpayqrc">云闪付</label>-->
                                            
                                 </li>
                                                                   <li class="clearfix">
                                     <div class="label-option">
                                         <a class="pay" id="btn-ebank" jslog-trace-id="onlinegiantpaysubmit">立即支付（<span>0</span>.00元）</a>
                                     </div>
                                 </li>
                             </ul>
                             

</body>
</html>   
