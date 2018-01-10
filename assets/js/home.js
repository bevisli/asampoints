
			$(function(){
					$('.aboutmedal img').poshytip({
						className: 'tip-yellow',
						alignTo: 'target',
						alignX: 'center',
						alignY: 'bottom',
						offsetX: 0,
						offsetY: 5,
						content: function(){
							return $('#medal_text_'+ $(this).attr('date-key')).val();
						}
					});
			 });