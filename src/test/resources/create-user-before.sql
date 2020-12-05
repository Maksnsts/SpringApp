delete from user_role;
delete from usr;

insert into usr(id, active, password, username) values
(1, true, '$2a$08$rRH68mg976tRZhDle/BFbe1LjCZ2Dfw0gI6zlz2Vx6wiln7rTnIBS', 'admin'),
(2, true, '$2a$08$327AZou2Bm5piX3RuGRJ4usB92hv4fqfbGCd3MAPTZwv.90VGOhp6', 'user1');

insert into user_role(user_id, roles) values
(1, 'USER'), (1, 'ADMIN'),
(2, 'USER');

