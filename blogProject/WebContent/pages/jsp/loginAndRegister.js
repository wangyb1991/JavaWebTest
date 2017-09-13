$(function(){
//	var object = {
//			url: "/blogProject/pages/jsp/myBlog.jsp",
//			type: "GET",
//			beforeSubmit: function(){
//			},
//			success: function() {
//			},
//			error: function() {
//			},
//			clearForm: true,
//			timeout: 6000
//	}
	$("#loginSubmit").click(function(){
		var email = $("#inputEmail").val();
		var password = $("#inputPassword").val();
		$.ajax({
			url: "/blogProject/loginAndRegister",
			type: "GET",
			data: {"userName":email,"userPW":password},
			dataType: "json",
			success: function(data){
				alert(1);
				if (data.login) {
					$("#loginForm").ajaxSubmit();
				}
				else {
					bootbox.alert({
						buttons: {
							ok: {
								label: '确定',
								className: 'btn-success'
							}
						},
						message: '用户名不存在或密码错误！',
						callback: function() {
						},
						title: "我是标题"
					});
				}
			}
		});
	});
});