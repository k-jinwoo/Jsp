/**
 	날짜 : 2021/06/08
	이름 : 김진우
	내용 : 이메일 중복체크 스크립트
 */
var isEmailOk = false;

$(function(){
    		$('input[name=email]').focusout(function() {
    			
				var email = $(this).val();
				var param = {'email':email};
				
				$.ajax({
					url:'/JBoard1/user/proc/checkEmail.jsp',	// 보낼 경로 ?uid=uid
					type:'get',			// 보내는 타입
					data: param,		// 값
					dataType:'json',	// 돌아오는 타입
					success: function(data) {
						if(data.result == 1){
							$('.resultEmail').css('color','red').text('이미 사용중인 이메일 입니다.');
							isEmailOk = false;
						}else{
							$('.resultEmail').css('color','green').text('사용 가능한 이메일 입니다.');
							isEmailOk = true;
						}
					}
				});
			});
    	});