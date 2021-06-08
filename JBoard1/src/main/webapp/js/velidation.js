/**
 	날짜 : 2021/06/08
	이름 : 김진우
	내용 : 유효성 검사
 */
$(function() {
			$('#regForm').submit(function() {
				if(!isUidOk){
					alert('아이디가 유효하지 않습니다. 다시 확인하세요.');
					return false;
				}
				if(!isPassOk){
					alert('비밀번호가 유효하지 않습니다. 다시 확인하세요.');
					return false;
				}
				if(!isNameOk){
					alert('이름이 유효하지 않습니다. 다시 확인하세요.');
					return false;
				}
				if(!isNickOk){
					alert('닉네임이 유효하지 않습니다. 다시 확인하세요.');
					return false;
				}
				if(!isEmailOk){
					alert('이메일이 유효하지 않습니다. 다시 확인하세요.');
					return false;
				}
				if(!isHpOk){
					alert('전화번호가 유효하지 않습니다. 다시 확인하세요.');
					return false;
				}
				
				return true;
			});
		});