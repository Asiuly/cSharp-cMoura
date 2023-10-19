use consultorio;

insert into medico (nome, datanascimento, crm)
	values ('Armando', '2023-03-09', '123456/SP');

insert into medico (nome, datanascimento, crm)
	values ('Victor', '2001-10-18', '789461/SP');

insert into medico (nome, datanascimento, crm)
	values ('Julia', '2005-02-11', '145687/SP');

truncate table medico;

update medico set nome = 'Luisa' where codigo = 3;

select codigo, nome, datanascimento, crm from medico;

-- paciente

insert into paciente (codigo, nome, email)
	values (1, 'zeca', 'zequinha@gmail.com'), (2, 'olah', 'olha@gmail.com');