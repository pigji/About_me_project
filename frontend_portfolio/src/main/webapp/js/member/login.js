alert("login")

// 로그인버튼을 눌렀을때
function login(){
	// 1. html 정보 받아오기
	let mid = document.querySelector('#mid').value
	let mpassword = document.querySelector('#mpassword').value
	let loginconfirmbox = document.querySelector('#loginconfirmbox')
	$.ajax({
		url : "/frontend_portfolio/member/login",
		data : { "mid" : mid , "mpassword" : mpassword },
		success : function( re ){
			alert( re )
			if( re === '1' ){
				alert( "로그인을 성공했습니다." )
				location.href='/frontend_portfolio/1.index.jsp';
			}else if( re === '2' ){
				loginconfirmbox.innerHTML = '패스워드가 다릅니다.'
			}else if( re === '3' ){
				loginconfirmbox.innerHTML = '데이터베이스 오류[관리자에게 문의]'
			}else if( re === '0' ){
				loginconfirmbox.innerHTML = '존재하지 않는 아이디입니다.'
			}
		}
	});
	
}