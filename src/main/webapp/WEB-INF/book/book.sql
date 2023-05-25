show tables;

create table book(
	idx				int not null auto_increment,	/* 책 고유번호 */
	bookCode 	int not null,									/* 도서코드 */
	bookName	varchar(100) not null,				/* 도서명 */
	genre			varchar(20) not null,					/* 도서장르 */
	author		varchar(20) not null,					/* 저자 */
	bookInfor	varchar(200) not null,				/* 도서 상세정보 */
	pub				varchar(20) not null,					/* 출판사 */
	pubDate		date not null,								/* 출판일(YYYY-MM-DD) */
	primary key (idx, bookCode)
);

desc book;

drop table book;
