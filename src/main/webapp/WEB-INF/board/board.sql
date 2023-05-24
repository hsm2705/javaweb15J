show tables;

create table board (
	idx				int not null auto_increment primary key,		/* 게시글 고유번호 */
	mid				varchar(20) not null,												/* 아이디 */
	nickName	varchar(20) not null,												/* 닉네임 */
	title			varchar(100) not null,											/* 제목 */
	content		text not null,															/* 내용 */
	readNum		int default 0,															/* 조회수 */
	good			int default 0,															/* 좋아요 개수 */
	openSw		char(2) default 'OK',												/* 게시글 공개여부 */
	wDate			datetime default now()											/* 게시글 작성시간 */
);

desc board;

drop table board;

create table boardReply (
	idx 			int not null primary key,		/* 댓글 고유번호 */
	boardIdx	int not null,								/* 게시글 고유번호 */
	mid				varchar(20) not null,				/* 아이디 */
	nickName	varchar(20) not null,				/* 닉네임 */
	content		text not null,							/* 댓글 내용 */
	wDate			datetime default now()			/* 댓글 작성시간 */
);

desc boardReply;