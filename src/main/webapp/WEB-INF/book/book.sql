show tables;

create table book(
	idx				int not null auto_increment,	/* 책 고유번호 */
	bookCode 	int not null,									/* 도서코드 */
	bookName	varchar(100) not null,				/* 도서명 */
	genre			varchar(20) not null,					/* 도서장르 */
	author		varchar(20) not null,					/* 저자 */
	pub				varchar(20) not null,					/* 출판사 */
	pubDate		date not null,								/* 출판일(YYYY-MM-DD) */
	totlaPage	int not null,									/* 페이지 수 */
	bookInfor	varchar(200) not null,				/* 도서 상세정보 */
	stock			int default 1,								/* 도서수량 */
	condi int default 0,								/* 도서상태(0:신규/1:중고) */
	primary key (idx, bookCode)
);

desc book;
