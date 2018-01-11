KindEditor.plugin('bockquote', function(K) {
	var self = this, name = 'bockquote';
	self.clickToolbar(name, function() {
		var lang = self.lang(name + '.'),
			html = ['<div style="padding:10px 20px;">',
				'<textarea class="ke-textarea" style="width:408px;height:260px;"></textarea>',
				'</div>'].join(''),
			dialog = self.createDialog({
				name : name,
				width : 450,
				title : self.lang(name),
				body : html,
				yesBtn : {
					name : self.lang('yes'),
					click : function(e) {
						var type = textarea.val();
						html = '<blockquote>' + K.escape(type) + '</blockquote>';
						self.insertHtml(html).hideDialog().focus();
						}
				}
			}),
			textarea = K('textarea', dialog.div);
		textarea[0].focus();
	});
});
