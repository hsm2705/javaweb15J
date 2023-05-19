show tables;

create table boardReply (
	idx 			int not null primary key,		/* 댓글 고유번호 */
	boardIdx	int not null,								/* 게시글 고유번호 */
	mid				varchar(20) not null,				/* 아이디 */
	nickName	varchar(20) not null,				/* 닉네임 */
	content		text not null,							/* 댓글 내용 */
	wDate			datetime default now()			/* 댓글 작성시간 */
);

desc boardReply;