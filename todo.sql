create database todolist;

create table todo (id SERIAL primary key, 
title varchar(255) NOT NULL, 
details text, 
priority int NOT NULL default 1, 
created_at timestamp NOT NULL, 
completed_at timestamp);

INSERT INTO todo (title, details, priority, created_at, completed_at) VALUES ('Wash Car', 'It is very dirty', 5, '2017/05/27 09:00:00', '2017/06/01 18:00:00');
INSERT INTO todo (title, priority, created_at) VALUES ('Clean Kitchen', 3, '2017/05/31 12:00:00');
INSERT INTO todo (title, details, priority, created_at) VALUES ('Laundry', 'Need detergent', 4, '2017/05/29 10:00:00'),
 ('Complete Project', 'Make CSS file', 2, '2017/05/29 10:00:00'),
 ('Get Job', 'Seriously', 1, '2017/05/29 10:00:00');

SELECT from todo where completed_at IS NULL;

SELECT from todo where priority > 1;

UPDATE todos SET completed_at = '2017/06/06 13:00:00' where id = 2;

DELETE from students where completed_at IS NOT NULL;

