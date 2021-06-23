/**
 	날짜 : 2021/06/08
	이름 : 김진우
	내용 : 전화번호 중복체크 스크립트
 */
var isHpOk = false;

$(function(){
    		$('input[name=hp]').focusout(function() {
    			
				var hp = $(this).val();
				var param = {'hp':hp};
				
				$.ajax({
					url:'/FarmStory/user/proc/checkHp.jsp',	// 보낼 경로 ?uid=uid
					type:'get',			// 보내는 타입
					data: param,		// 값
					dataType:'json',	// 돌아오는 타입
					success: function(data) {
						if(data.result == 1){
							$('.resultHp').css('color','red').text('이미 사용중인 전화번호 입니다.');
							isHpOk = false;
						}else{
							$('.resultHp').css('color','green').text('사용 가능한 전화번호 입니다.');
							isHpOk = true;
						}
					}
				});
			});
    	});