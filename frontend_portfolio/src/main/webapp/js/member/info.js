alert( "info" )

getmember()

// 회원정보 호출
function getmember(){
	$.ajax({
		url : "/frontend_portfolio/member/info",
		success : function( result ){
			
			// 문자열 --> json타입 형변환
			let member = JSON.parse( result )
			document.querySelector("#mno").innerHTML = member.mno
			document.querySelector("#mid").innerHTML = member.mid
			document.querySelector("#mdate").innerHTML = member.mdate
			document.querySelector("#mpoint").innerHTML = member.mpoint
			
			document.querySelector("#mname").innerHTML = member.mname
			document.querySelector("#mphone").innerHTML = member.mphone
			document.querySelector("#memail").innerHTML = member.memail
			
			document.querySelector("#sample4_postcode").value = member.maddress.split(",")[0]
			document.querySelector("#sample4_roadAddress").value = member.maddress.split(",")[1]
			document.querySelector("#sample4_jibunAddress").value = member.maddress.split(",")[2]
			document.querySelector("#sample4_detailAddress").value = member.maddress.split(",")[3]
		}
	});
}

// 모든 회원정보 호출
function getmemberlist(){
	$.ajax({
		url : "/frontend_portfolio/member/infolist",
		success : function( result ){
			let memberlist = JSON.parse( result )
			
			// 1. tag 가져오기
			let table =  document.querySelector("#memeberlisttable")
			// 2. table 에 넣을 제목 셋팅 
			let tag = 
				'<tr>'+
					'<th> 번호 </th>	<th> 아이디 </th><th> 이름 </th>'+
					'<th> 연락처 </th><th> 이메일 </th><th> 주소 </th>'+
					'<th> 날짜 </th>	<th> 포인트 </th>'+
				'</tr>';
			//3. tag 값 넣기 
			for( let i = 0 ; i < memberlist.length ; i++ ){
				// 4. 해당 인덱스의 객체호출 
				let m = memberlist[i]
				// 5.해당 객체의 정보를  tag변수 누적 더하기 [ html 출력 ]  
				tag +=  
					'<tr>'+
						'<td> '+m.mno+' </td> 		<td> '+m.mid+' </td>'+
						'<td> '+m.mname+' </td> 	<td> '+m.mphone+' </td>'+
						'<td> '+m.memail+' </td>	<td> '+m.maddress+' </td>'+
						'<td> '+m.mdate+' </td> 	<td> '+m.mpoint+' </td>'+
					'</tr>';
			}
			// 6. html 문자열을 table 에 넣어주기 
			table.innerHTML = tag
		}
	})
}


// 회원탈퇴
function viewdelete(){
	
	// 1. tag 가져오기
	let deltebox = document.querySelector("#deltebox")
	// 2. tag에 넣을 html
	let tag = 
			'<span> ! 정말 탈퇴 하시겠습니까? </span>' + 
			'<input type="password" id="mpassword" >' + 
			'<button onclick="mdelete()">확인</button>';
	// 3. tag 에 html 넣기 
	deletebox.innerHTML = tag
}

function mdelete(){
	// tag에 입력한 비밀번호 불러오기
	let mpassword = document.querySelector("#mpassword").value
	// 회원탈퇴 처리
	$.ajax({
		url : "/frontend_portfolio/member/delete",
		data : { "mpassword" : mpassword },
		succeses : function( result ){
			if( result === 'true' ){
				alert('회원계정을 탈퇴합니다.')
				location.href="/frontend_portfolio/member/logout.jsp"
			}else{ alert('동일하지 않는 비밀번호 입니다.')}
		}
	})
}

// 현재 페이지의 모든 버튼 호출
let buttons = document.querySelectorAll('button')

function updateaction(){
	let mname = document.querySelector('#mname')
	if( buttons[1].innerHTML === '확인' ){
		$.ajax({
			url : "",
			data : { "mname" : mname.value },
			success : function( re ){
				alert( re )
				if( re === 'true' ){
					alert("수정 성공!!")
				}else{ alert("수정 실패..")}
			}
		})
		buttons[1].innerHTML = '수정'
		mname.readOnly = true;	// 수정모드 설정
		location.reload();		// 현제 페이지 새로고침
	}else{
		alert('수정 후 확인버튼 클릭시 수정이 완료됩니다.')
		mname.readOnly = false;	// 수정모드 제거
		buttons[1].innerHTML = '확인'
	}
}


















