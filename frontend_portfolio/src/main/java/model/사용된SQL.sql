-- 개인포트폴리오 쇼핑몰

drop database if exists shop;
create database shop;
use shop;

-- 회원가입
create table member(
	mno			int auto_increment primary key ,		-- 회원번호[pk , autokey ] 
	mid			varchar(50) UNIQUE NOT NULL , 			-- 회원아이디 
    mpassword	varchar(50) NOT NULL , 					-- 회원패스워드 
    mname		varchar(50) NOT NULL , 					-- 회원명
    mphone		varchar(15) NOT NULL , 					-- 회원 전화번호 
    memail		varchar(100) UNIQUE NOT NULL , 			-- 회원 이메일 
    maddress	varchar(100)  NULL	 ,					-- 회원 주소 [ 우편번호,도로명주소,지번주소,상세주소]
    mdate		datetime default now() NOT NULL ,				-- 회원 가입일 
	mpoint		int	default 0 NOT NULL							-- 회원 포인트 
);
select * from member;


DROP TABLE if exists category;
create table category( cno int auto_increment primary key , cname varchar(100)  );

-- 게시판
DROP TABLE if exists board;
CREATE TABLE board(
	bno			int auto_increment,  -- 번호  	
    btitle		varchar(1000) NOT NULL, 		-- 제목 		
    bcontent	longtext NULL,			-- 내용	[ 썸머노트 이용해서 사진/영상 대용량 추가 ]
    bfile		longtext NULL,			-- 첨부파일 [ 게시물 1개당 첨부파일 1개 ]
    bdate 		datetime default now() NOT NULL	,	-- 작성일 : 기본값 현재 DB서버 시스템 날짜 
    bview		int default 0 NOT NULL ,				-- 조회수 : 기본값 0 
    cno			int ,									-- 카테고리번호 FK 
    mno 		int	,									-- 작성자 
	constraint bno_pk primary key (bno)  , 
    constraint bcno_fk foreign key (cno) references category(cno) on update cascade ,
    constraint bmno_fk foreign key (mno) references member(mno) on delete cascade
);
select * from board;

-- 댓글 : 1.게시물번호 2.회원번호 3.내용 4.답글식별필드
drop table if exists reply;
create table reply(
	rno 		int  auto_increment, -- 댓글식별번호 
    rcontent 	varchar(1000) not null , -- 댓글내용
    rdate		datetime  default now(),  -- 댓글작성일
    rindex		int default 0 , -- 댓글 과 대댓글 식별 필드 [ 0:상위댓글 , 숫자:상위댓글번호 ] 
    mno			int not null,-- 작성자 회원번호
    bno			int not null,-- 게시물번호 
    constraint rno_pk primary key(rno) ,
    constraint rmno_fk foreign key (mno) references member(mno) on delete cascade, -- 회원탈퇴시 댓글도 같이 삭제
    constraint rbno_fk foreign key (bno ) references board(bno) on delete cascade -- 게시물삭제시 댓글도 같이 삭제
);
select * from reply;

-- 제품 테이블 --
drop table if exists pcategory;
create table pcategory( /* 제품 카테고리 테이블 */
	pcno  int auto_increment,   				/* 카테고리번호  */
    pcname varchar(100) , 						/* 카테고리이름  */
    constraint pcno_pk primary key( pcno )
);
select * from pcategory;


drop table if exists product;
create table product( /* 제품 테이블 */
	pno int auto_increment ,  /*제품번호*/
    pname varchar(100)  , /*제품명*/
    pcomment varchar(1000) , /* 제품설명 */
    pprice int unsigned ,  /*  +-20억    unsigned ---> 0~40억   : 제품가격 */
    pdiscount float , /* 할인율[소수점] */ 
    pactive tinyint , /* 상태 : 0[준비중] , 1:판매중 , 2:재고없음  뜻함 */
    pimg varchar(1000) , /* 대표 이미지 경로 */ 
    pdate datetime default now() , 	/* 등록날짜 */
    pcno int , /* 제품카테고리의 FK */ 
    constraint pno_pk primary key ( pno ),
    constraint pcno_fk foreign key ( pcno ) references pcategory( pcno ) on delete cascade /* pcategory[pk:pcno]  <-------->  product[fk:pcno] */
);
select * from product;


/* 제품별 사이즈 테이블  : 제품별[pno] 사이즈[psize] 저장 */
drop table if exists productsize;
create table productsize(
	psno	int auto_increment , 
    psize	varchar(100) , 
    pno		int  , 
	constraint psno_pk primary key( psno ) ,
    constraint pno_fk foreign key ( pno ) references product( pno ) on delete cascade
);
select * from productsize;


/* 사이즈별 색상재고 테이블 : 사이즈별[psno] 색상[pcolor] 재고[pstock] 저장 */
drop table if exists productstock;
create table productstock(
	pstno	int auto_increment , 
    pcolor 	varchar(100) , 
    pstock int ,
    psno int , 
    constraint pstno_pk primary key( pstno ) , 
    constraint psno_fk	foreign key( psno ) references productsize( psno ) on delete cascade
);
select * from productstock;


-- 찜하기 db
drop table if exists plike;
create table plike(
	plikeno int auto_increment,
	mno int ,
	pno int,
    constraint plike_pk primary key ( plikeno ) ,
    constraint plike_pno foreign key( pno ) references product( pno )  on delete cascade
)
select * from plike;


-- 장바구니 db
drop table if exists cart;
create table cart(
	cartno int auto_increment 	,	-- 장바구니 번호
    amount int	,					-- 옵션 수량
    pstno int	,					-- 제품재고 정보
    mno	int	,						-- 회원번호
    constraint cart_pk primary key( cartno ) , 
    constraint cart_pstno_fk foreign key ( pstno ) references productstock( pstno ) on delete cascade,
    constraint cart_mno_fk foreign key ( mno ) references member( mno ) on delete cascade
);
select * from cart;


-- 주문 db 
drop table if exists porder;
create table porder( -- order [ x ] 
	ono int auto_increment, -- 주문번호 
    oname varchar(100) ,  -- 받는사람 성명 
    ophone varchar(100) ,-- 받는사람 연락처 
    oddress varchar(100) ,-- 받는사람 주소 
    oquest varchar(100) ,-- 주문 요청사항
    odate datetime default now(),-- 주문 날짜 
	mno int ,-- 회원 번호[ 주문한 사람 ]
    constraint ono_pk primary key (ono) , 
    constraint orderno_mno_fk foreign key (mno) references member(mno) on delete cascade 
);
select * from porder;



-- 주문 상세 
drop table if exists porderdetail;
create table porderdetail(
	odno int auto_increment , -- 주문상세번호 
    odamount int , -- 수량 
    odprice int , -- 결제액
    odactive int default 0 , -- 주문상태 
    pstno int , -- 재고번호
    ono int ,-- 주문번호
    constraint odno_pk primary key (odno) , 
    constraint od_pstno_fk foreign key ( pstno ) references productstock ( pstno ) on delete cascade,
    constraint od_ono_fk foreign key( ono ) references porder( ono ) on delete cascade
);
select * from porderdetail;


------------------------------------------------ 테스트 ---------------------------
-- 1. 재고번호 찾기 [ join ]
select * from productstock;	-- 재고 테이블 검색
select * from productstock where pno = 10; 	-- 재고 pno 없다.[ 오류 ]
select * from productsize where pno = 10;	-- 사이즈 pno 있다.
select * from productsize where pno = 10 and psize = 'XL';
select * from productsize ps , productstock pst where ps.psno = pst.psno; -- 두개 이상 테이블 검색 

select pstno 
from productsize ps , productstock pst 
where ps.psno = pst.psno and pno = 10 and psize = 'XL' and pcolor = '오렌지';
-- -------------------------------------------------------------------------- --
-- 1. 재고번호 찾기  서브쿼리 [ SQL 안에 select ]
select psno from productsize where pno = 10 and psize = 'XL';

select pstno
from productstock pst , 
(select psno from productsize where pno = 10 and psize = 'XL') sub 
where pst.psno = sub.psno and pcolor = '오렌지';

-- ------------------------------------------------------------------------- --
insert into cart( amount , pstno , mno )
values ( 
	1 ,
    (select pstno
	from productstock pst , 
		(select psno from productsize where pno = 10 and psize = 'XL') sub 
	where pst.psno = sub.psno and pcolor = '오렌지') ,
    3
);

-- ------------------------------------------------------------------------- --
-- 로그인 된 회원의 장바구니 정보 모두 호출 [ mno -> 카트번호 , 재고번호 , 제품명, 제품사진 , 가격 , 할인율 , 선택한옵션색상/사이즈/수량 ]
-- 예시 3번회원

select * from cart where mno = 3; -- 회원 장바구니
select * from cart c , productstock pst where c.pstno = pst.pstno; -- 카트 + 재고

select * from cart c , productstock pst , productsize ps 
where c.pstno = pst.pstno and pst.psno = ps.psno; 		-- 카트 + 재고 + 사이즈 

select * from cart c , productstock pst , productsize ps , product p
where c.pstno = pst.pstno and pst.psno = ps.psno and ps.pno = p.pno;	-- 카트 + 재고 + 사이즈 + 제품 
--      	fk = pk		and       fk   =  pk    and  fk = pk

select 
	c.cartno 장바구니번호 ,  c.pstno 재고번호 , 
    p.pname  제품명 , p.pimg 제품사진 , 
    p.pprice  가격 ,   p.pdiscount 할인율 ,
	pst.pcolor 색상 , ps.psize 사이즈 ,
    c.amount 구매예정수량
from 
	cart c , 
    productstock pst , 
    productsize ps , 
    product p
where c.pstno = pst.pstno 
	and pst.psno = ps.psno 
    and ps.pno = p.pno;
    
-- JOIN [ 관계[pf-fk]있을경우에 2개 이상 테이블의 동일한 데이터  ]
	-- 1. 테이블명 inner JOIN 테이블명 on pk필드 = fk필드 
select 
	c.cartno 장바구니번호 ,  c.pstno 재고번호 , 
    p.pname  제품명 , p.pimg 제품사진 , 
    p.pprice  가격 ,   p.pdiscount 할인율 ,
	pst.pcolor 색상 , ps.psize 사이즈 ,
    c.amount 구매예정수량
from 
	cart c inner join
    productstock pst inner join
    productsize ps inner join
    product p
on  c.pstno = pst.pstno 
	and pst.psno = ps.psno  
    and ps.pno = p.pno;

    -- 2. 테이블명 natural join 테이블명 [ 암묵적으로 pk와fk를 조건으로 사용 ]
select 
	c.cartno 장바구니번호 ,  c.pstno 재고번호 , 
    p.pname  제품명 , p.pimg 제품사진 , 
    p.pprice  가격 ,   p.pdiscount 할인율 ,
	pst.pcolor 색상 , ps.psize 사이즈 ,
    c.amount 구매예정수량
from 
	cart c natural join
    productstock pst natural join
    productsize ps natural join
    product p;
    
-- 
select 
	c.cartno ,  c.pstno , 
    p.pname , p.pimg  , 
    p.pprice   ,   p.pdiscount  ,
	pst.pcolor  , ps.psize  ,
    c.amount 
from 
	cart c natural join
    productstock pst natural join
    productsize ps natural join
    product p
where
	c.mno = 3;



select * from reply;
select r.rcontent , r.rdate , m.mid from reply r , member m where r.mno = m.mno and r.bno = 33;
-- 댓글만 출력 
select * from reply where rindex = 0;
-- 1번 댓글의 답글만 출력 
select * from reply where rindex = 1;
-- 해당 게시물의 댓글만 출력 			[ 33번 게시물의 댓글만 출력 ]
select r.rcontent , r.rdate , m.mid , r.rno
from reply r , member m 
where r.mno = m.mno and r.bno = 33 and r.rindex = 0 
order by r.rdate desc;
-- 해당 게시물의 1번 댓글의 답글만 출력 	[ 33번 게시물의 1번 댓글의 답글 출력  ]
select r.rcontent , r.rdate , m.mid from reply r , member m where r.mno = m.mno and r.bno = 33 and r.rindex = 1;


----------


-- 1. 한개 테이블 검색 
select * from board;
-- 2. 두개 테이블 검색  [ 1번테이블 레코드수 x 2번테이블 레코드수 ]
select * from member , board;
-- 3. 조건 [ pk-fk 일치 한 경우만 표시 ]
select * from member , board where member.mno = board.mno;
-- 4. 표시할 필드 선택 
select b.bno , b.btitle , b.bcontent , b.bfile , b.bdate , b.bview , b.cno , b.mno , m.mid
from member m , board b where m.mno = b.mno;
-- 5. 모든 글출력 
select b.* , m.mid from member m , board b where m.mno = b.mno;
-- 5. 개별 글출력 
select b.* , m.mid from member m , board b where m.mno = b.mno and bno = 1; -- 게시물번호 



-- 페이징처리 테스트 문법
-- 1. 모든 게시물 수 [ count(*) : 레코드수 = 게시물수 ] 
select count(*) from board;
-- 2. 검색 결과에서 limit 이용한 개수 제한 [ limit 시작점 , 개수 ] 
select * from board limit 0 , 3;
-- 3. 정렬 [ 작성일 기준으로 정렬 desc:내림차순 / asc : 오름차순   ( 날짜 최신일수록 크다. ) ]
select * from board order by bdate desc;
-- 
select * from board order by bdate desc limit 0 , 3 ; -- 최신글 3개 	[ 1페이지 ] 
select * from board order by bdate desc limit 3 , 3 ; -- 최신글 3개 	[ 2페이지 ] 
select * from board order by bdate desc limit 6 , 3 ; -- 최신글 3개 	[ 3페이지 ] 
select * from board order by bdate desc limit 9 , 3 ; -- 최신글 3개 	[ 4페이지 ] 
-- 앞전 코드 + 정렬 
select b.* , m.mid from member m , board b where m.mno = b.mno order by b.bdate desc;
-- 앞전 코드 + 정렬 + 출력제한
select b.* , m.mid from member m , board b where m.mno = b.mno order by b.bdate desc limit 0 , 3 ;

-- 검색[ 조건 추가 ]	like연산자  			필드 = 데이터  (같다)  		필드 like 데이터  ( 포함된 )
select count(*) from board b;-- 전체 게시물 수 
select count(*) from board b where b.btitle = 'qqqqq'; -- 제목 검색
select count(*) from board b where b.btitle like '%q%'; -- 제목 포함된 검색
-- 전체 게시물 수 
select count(*) from board b;
select count(*) from member m , board b where m.mno = b.mno;
-- 검색 된 게시물수 
select count(*) from member m , board b where m.mno = b.mno and "+key+" like '%"+keyword+"%';
-- 전체 게시물 
select b.* , m.mid from member m , board b where m.mno = b.mno order by b.bdate desc limit 0 , 3 ;
-- 검색된 게시물 
select b.* , m.mid 
from member m , board b 
where m.mno = b.mno and "+key+" like '%"+keyword+"%'
order by b.bdate desc 
limit 0 , 3 ;
/*
	like
			% : 모든 글자 대응 
			필드명 like %김	: 김으로 끝나는 문자 
			필드명 like 김% 	: 김으로 시작하는 문자
			필드명 like %김% 	: 김이 포함된 문자 
            
            _ : _ 개수만큼 글자 대응
            필드명 like _김	: 김으로 끝나는 두글자 
            필드명 like 김__	: 김으로 시작하는 세글자 
            필드명 like _김_	: 두번째 글자가 '김'인 세글자 
*/