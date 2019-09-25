$(function () {
	
	var money = null;
	
	// 充值金额选择与支付方式选择
    $(".label-cell label ").on("click", function(){
        $(this).addClass("active").siblings().removeClass("active");
    });

   	
//	//给定的充值金额
	$(".rating label").on("click", function(){
	    var amount = $(".input-amount-qrcode");
	    var closest = amount.closest(".amounts");
	    var val = parseInt($(this).text());
	    
	    closest.find(".custom").next(".form-tips").remove();
	    closest.find(".form-small").removeClass("has-error");
	    $(".label-option span").text(val);
	    $(".points span").text(val/10+" 积分");
	    amount.attr("fee", val);
	    amount.val(val);
	    money = val;

	});


	
	// 记录 - 自定义输入其他金额
	 
	$(".input-amount-qrcode").on("click", function () {
		
		var label = $(this).closest(".label-item").find("label");
    	label.removeClass("active");
    	$(".form-small").addClass("active");
		
    	$(this).on("blur",function(){
    		$(".form-small").removeClass("active");
    	});
    	
	    $(this).on("input",function(){
	    	var val = parseInt($.trim(this.value));
	    	if(isNaN(val)){
		    	val = 0;
		    }
		    $(".label-option span").text(val);
		    $(".points span").text(val/10+" 积分");
		    money = val;
	    	
	    });
        
	});
	
	// 充值渠道
	var pay = null;
    $(".channel-tab label:first").addClass("active");
    var bankList = $(".bank-list");
    bankList.parent().data("channel-id", $(".channel-tab label:last").index() + 1);
    $(".channel-tab label").on("click", function(){
        var index = $(this).index() + 1;
        var channelId = bankList.parent().data("channel-id");
        $(this).addClass("active").siblings().removeClass("active");
        pay = $(this).attr("id");

    });
    
    //支付跳转
    var phone = parseInt($.trim(".input-account".value));
    $(".pay").on("click", function(){
    	
    	
    	
    });
    

    
 
});


