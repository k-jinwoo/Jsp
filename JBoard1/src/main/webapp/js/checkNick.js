/**
 	날짜 : 2021/06/08
	이름 : 김진우
	내용 : 닉네임 중복체크 스크립트
 */
var regNick = /^[a-z가-힣0-9]{2,10}$/;
var isNickOk = false;

$(function(){
    		$('input[name=nick]').focusout(function() {
    			
				var nick = $(this).val();
				var param = {'nick':nick};
				
				$.ajax({
					url:'/JBoard1/user/proc/checkNick.jsp',	// 보낼 경로 ?uid=uid
					type:'get',			// 보내는 타입
					data: param,		// 값
					dataType:'json',	// 돌아오는 타입
					success: function(data) {
						if(data.result == 1){
							$('.resultNick').css('color','red').text('이미 사용중인 닉네임 입니다.');
							isNickOk = false;
						}else{
							if(regNick.test(nick)){
								$('.resultNick').css('color','green').text('사용 가능한 닉네임 입니다.');
								isNickOk = true;
							}else{
								$('.resultNick').css('color','green').text('닉네임은 영문, 한글, 숫자포함 최소 2 ~ 10자 입니다.');
								isNickOk = false;
							}
							
						}
					}
				});
			});
    	});