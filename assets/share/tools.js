$(document).ready(function() {
	$(".buyshare").click(function() {
		var datekey = $(this).attr("datekey");
		$.post("" + sitedomain + "/ajax/", {
			model: 'share',
			act: 'geibuyshareinfo',
			sid: datekey
		}, function(data, status) {
			if (data) {
				BootstrapDialog.show({
					title: '购买分享',
					message: data
				})
			}
		})
	});
});
function sureshareapply(datekey) {
	$.post("" + sitedomain + "/ajax/", {
		model: 'share',
		act: 'applysharepayment',
		sid: datekey
	}, function(data, status) {
		if (data) {
			BootstrapDialog.show({
				title: '购买提醒',
				message: data
			})
		}
	})
}