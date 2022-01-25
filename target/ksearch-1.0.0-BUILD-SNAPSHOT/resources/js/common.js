;(function($){
var SEARCH = {
    importPlugins: function() {

        // jQuery UI datepicker
		if ($.fn.datepicker) {
	    	$('.datepicker').datepicker({
				buttonText: '날짜 선택',
				changeMonth: true,
				changeYear: true,
				monthNamesShort: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
				dayNamesMin:["일", "월", "화", "수", "목", "금", "토"]
			});
		}
    },
    contentsTab: function() {
		$(document).on('click', '.tab-ui ul li a', function(e){
			var tabchk = $(this).attr('href');
			$(".tab-ui ul li a").removeClass("on");
			$(".tabcont").removeClass("active");
			$(this).addClass("on");
			$(tabchk).addClass("active");
			return false;
		});
    },
    preview: function() {
		$(document).on('click', '.search_result_list .btn_preview', function(e){
			$(this).addClass("active");
			var divEl = $(this);
			var divX = divEl.offset().left;
			var divY = divEl.offset().top + 32;
			$(".previewpop").show();
			$(".previewpop").css("left",divX+"px");
			$(".previewpop").css("top",divY+"px");
			$(".back").show();
			return false;
		});
		$(document).on('click', '.previewpop .popclose', function(e){
			$(".search_result_list .btn_preview").removeClass("active");
			$(".previewpop").hide();
			$(".back").hide();
			return false;
		});
    },
    contentsFunc: function() {
    	// 레이어_오픈
		function layerOpen() {
			var lay_dp = $('.search_detail').css('display');
			if (lay_dp == 'none')
			{
				$('.search_detail').css('display', 'none');
				$("#header .laytit a").addClass('on');
				$('.search_detail').css('display', 'block');
			}else{
				$("#header .laytit a").removeClass('on');
				$('.search_detail').css('display', 'none');
			}
		}
		$(document).on('click', '#header .laytit', function(e){
				e.stopImmediatePropagation();
				layerOpen(this);
				return false;
		});
		$(document).on('click', '.search_detail ul li a', function(e){
				$(".search_detail ul li .sub").hide();
				$(this).parent().parent().find(".sub").show();
				return false;
		});
		// 레이어_닫기
		$(document).on({
			click : function(event) {
				if( $('.search_detail:visible').length > 0 ) {
					if( !$(event.target).is('.search_detail, .search_detail *') ) {
						$('.search_detail').hide().parent().removeClass('on');
						$("#header .laytit a").removeClass('on');
					}
				}
			}
		});

		// select design
		$('.selectStyle select').change(function () {
			var changeTxt = $(this).find('option:selected').text();
			console.log(changeTxt);
			$(this).parent().find('.txt').text(changeTxt);
		});

		// attach file
		var uploadFile = $('.find_file .attach_file');
		uploadFile.on('change', function(){
			if(window.FileReader){
				var filename = $(this)[0].files[0].name;
			} else {
				var filename = $(this).val().split('/').pop().split('\\').pop();
			}
			$(this).siblings('.filename').find('input').val(filename);
		});
    }
};

$(function() {
    SEARCH.importPlugins();
    SEARCH.contentsFunc();
	SEARCH.contentsTab();
	SEARCH.preview();
});

})(jQuery);