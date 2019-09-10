/*******************************************************************************
 * jQuery Ajax封装通用类 (shine)
 ******************************************************************************/

var request = function() {
	var baseUrl = "http://10.0.0.153:8088/xcWork";// 接口访问地址
	var baseImgUrl = "http://10.0.0.153:8088/xcWork/file/upload.do";// 图片上传接口地址
	var baseImg = "http://10.0.0.153:8088/";// 图片访问地址
	var videoConfig= {//视频地址
	    ip: '171.88.165.250',
	    port: '88',
	    userName: 'admin',
	    password: 'Sjcw2018'
	};
	/**
	 * ajax封装 url 发送请求的地址 data 发送到服务器的数据，数组存储，如：{"date": new Date().getTime(),
	 * "state": 1} async 默认值: true。默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。
	 * 注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。 type 请求方式("POST" 或 "GET")， 默认为 "GET"
	 * dataType 预期服务器返回的数据类型，常用的如：xml、html、json、text successfn 成功回调函数 errorfn
	 * 失败回调函数
	 */
	// 格式化参数
	const formatParams = function(data) {
		var arr = [];
		for ( var name in data) {
			arr.push(encodeURIComponent(name) + '='
					+ encodeURIComponent(data[name]));
		}
		return arr.join('&');
	}

	var Post = function(url, data, successfn, errorfn) {
		const obj = formatParams(data);
		$.ajax({
			type : "POST",
			data : data,
			url : baseUrl + url,
			dataType : "json",
			contentType : "application/x-www-form-urlencoded; charset=utf-8",
			success : function(data, textStatus, xhr) {
				successfn(data);
			},
			error : function(e, textStatus, xhr) {
				if (e.status == 401) {
					window.location.href = "/xcWork/loginController.do/loginhtml.do";
				} else {
					errorfn(e);
				}
			}
		});
	}
	var bigDataPost = function(url, data, successfn, errorfn) {
		const obj = formatParams(data);
		$.ajax({
			type : "POST",
			data : data,
			url : baseUrl + url,
			dataType : "json",
			contentType : "application/x-www-form-urlencoded; charset=utf-8",
			success : function(data, textStatus, xhr) {
				successfn(data);
			},
			error : function(e, textStatus, xhr) {
				if (e.status == 401) {
					window.location.href = "/xcWork/loginController.do/bigDataLoginhtml.do";
				} else {
					errorfn(e);
				}
			}
		});
	}
	var wxPost = function(url, data, successfn, errorfn) {
		const obj = formatParams(data);
		$.ajax({
			type : "POST",
			data : data,
			url : baseUrl + url,
			dataType : "json",
			contentType : "application/x-www-form-urlencoded; charset=utf-8",
			success : function(data, textStatus, xhr) {
				successfn(data);
			},
			error : function(e, textStatus, xhr) {
				if (e.status == 401) {
					window.location.href = "/xcWork/loginController.do/wxLoginhtml.do";
				} else {
					errorfn(e);
				}
			}
		});
	}

	return {
		Post : Post,
		bigDataPost : bigDataPost,
		baseImgUrl : baseImgUrl,
		baseImg : baseImg,
		wxPost : wxPost,
		videoConfig :videoConfig
	};
}();
