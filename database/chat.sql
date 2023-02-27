drop database if exists phpchat;
create database phpchat;
use phpchat;

create table users (
	id int unsigned auto_increment primary key,
	username varchar(255) not null,
	perms enum('user', 'admin') not null
);

create table messages (
	id int unsigned auto_increment primary key,
	userId int unsigned not null,
	message text not null,
    created_at timestamp default current_timestamp,
	foreign key (userId) references users(id)
);