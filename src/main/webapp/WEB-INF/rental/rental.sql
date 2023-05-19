show tables;

create table rental (
	idx 				int not null auto_increment primary key,
	nickName		varchar(20) not null,
	name				varchar(20) not null,
	bookName		varchar(100) not null,
	author			varchar(20) not null,
	pub					varchar(20) not null,
	renDate			datetime default now()
);

desc rental;
