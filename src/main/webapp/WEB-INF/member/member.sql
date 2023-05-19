show tables;

create table member (
	idx			int not null auto_increment,	/* 회원 고유번호 */
	mid 		varchar(20) not null,					/* 회원 아이디(중복 x) */
	pwd			varchar(20) not null,					/* 회원 비밀번호(SHA256 암호화처리) */
	name		varchar(10) not null,					/* 회원 성명 */
	nickName varchar(20) not null,				/* 회원 별명(중복 x/수정 o) */
	tel 	  varchar(15),									/* 전화번호(xxx-xxxx-xxxx) */
	email		varchar(50) not null,					/* 이메일(아이디/비밀번호 분실 시 사용)-형식체크 필수 */
	address varchar(100),									/* 주소(다음 우편번호 api 활용) */
	gender	varchar(4) default '남자',			/* 회원 성별 */
	birthday datetime default now(),			/* 회원 생일 */
	primary key (idx, mid)								/* 주키 : idx(고유번호), mid(회원고유아이디) */
);

desc member;

select * from member;