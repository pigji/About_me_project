alert( "find" )

// 1. 아이디 찾기
function findid(){
	
	// input 호출
	let mname = document.querySelector("#mname").value
	let memail = document.querySelector("#memail").value
	let findidconfirmbox = document.querySelector("#findconfirmbox")
	
	// 서블릿에서 데이터 보내기
	$.ajax({
		url : "/frontend_portfolio/member/findid",
		data : { "mname" : mname, "memail" : memail }, 	// 보낼 데이터 : { "이름1" : 값1, "이름2" : 값 }
		success : function( 받은데이터 ){
			if( 받은데이터 !== 'null'){
				findidconfirmbox.innerHTML = '회원 아이디 : ' + 받은데이터
			}else{
				findidconfirmbox.innerHTML = '동일한 회원정보가 없습니다.'
			}
		}
	});
}

// 2. 비밀번호 찾기
function findpassword(){
	
	// html 호출
	let mid = document.querySelector("#mid").value
	let memail = document.querySelector("#memail").value
	let resultbox = document.querySelector("findpasswordconfirmbox")
	
	//
	$.ajax({
		url : "/frontend_portfolio/member/findpssword",
		data : { "mid" : mid , "memail" : memail },
		success : function( result ){
			alert( result )
			if( result === '' ){}
			else{ resultbox.innerHTML = '임시 비밀번호 : ' + result }
		}
	})
}
