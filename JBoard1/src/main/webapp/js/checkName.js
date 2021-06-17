/**
 	날짜 : 2021/06/08
	이름 : 김진우
	내용 : 이름 형식체크 확인
 */
var regName = /^[ㄱ-힣]{2,10}$/
var isNameOk = false;
    	
    	$(function() {
			$('input[name=name]').focusout(function() {
				var name = $(this).val();
				
				if(regName.test(name)){
					$('.resultName').css('color', 'green').text('사용가능한 이름입니다.');
					isNameOk = true;
				}else{
					$('.resultName').css('color', 'red').text('적합하지 않은 이름입니다.');
					isNameOk = false;
				}
			})
		})