REPLACE INTO `role` VALUES (2,'USER');
REPLACE INTO `role` VALUES (1,'ADMIN');

-- insert into user values (1, 1, 'szalupka@wp.pl', 'Chalobka', 'Andrzej', '$2a$10$Y7uXYNorbMsH9UKuJwb8z.3EUFtyXvzyS7.nxiBKWvHWzyl8F22E2'),
--                         (2, 2, 'user@wp.pl', 'Userek', 'Userowski', '$2a$10$Y7uXYNorbMsH9UKuJwb8z.3EUFtyXvzyS7.nxiBKWvHWzyl8F22E2');

insert into specialization values (default, 'Okulista'), (default, 'Laryngolog');
insert into doctor values (default, 'Roman', 'Kowal', 1), (default, 'Anna', 'Nowak', 2);
insert into institution values (default, 'zagrody','5','krakow'), (default, 'wolnego','1','katowice');