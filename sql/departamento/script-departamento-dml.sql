use exercicioDepartamento;

insert into departamento (nome)
	values ('Julia'), 
	('Luisa'), 
	('Leonardo'), 
	('Victor'),
	('Loucos');

insert into funcionario 
		(codigoDepartamento, primeiroNome, segundoNome, ultimoNome, dataNascimento, cpf, rg, endereco, cep, cidade, fone, funcao, salario)

	values 
		('1', 'Arthur', 'Lacerda', 'Santos', '2012-03-05', '98745669856', '254987564', 'rua bobo', '17865985', 'Jau', '225658987', 'aprendiz', '2365'),
		('3', 'Pedro', 'Victor', null, '2022-09-13', '98754324632', '359854236', 'rua tonto', '12569985', 'Jau', '998546875', 'faxineiro', '123'),
		('4', 'Marina', 'Stuart', 'Gomes', '2021-03-05', '65236548975', '546987523', 'rua besta', '12654546', 'Uberaba', '221566547', 'nada', '0'),
		('2', 'Popeye', 'Santos', null, '2021-06-05', '69876548975', '326987523', 'rua besa', '12659846', 'Uberaba', '221523647', 'aprendiz', '0');

select codigo, codigoDepartamento, primeiroNome, segundoNome, ultimoNome, dataNascimento, cpf, rg, endereco, cep, cidade, fone, funcao, salario
	from funcionario where month(dataNascimento) = 3;

-- listar nome completo, função e departamento de todos os funcionarios
select f.primeiroNome + ' ' + f.segundoNome + ' ' + isnull(ultimoNome, ''), d.nome, f.funcao
  from funcionario as f
 inner join departamento as d 
    on d.codigo = f.codigoDepartamento;

-- listar nome do departamento de todos os funcionários aprendizes
select d.nome, f.primeiroNome
  from funcionario as f
 inner join departamento as d
    on d.codigo = f.codigo
 where f.funcao = 'aprendiz';

--comando para listar a quantidade de funcionarios da empresa
select count(*) 
from funcionario;

--descreva o comando para listar o nome de todos os funcionários que não tem ultimoNome
select f.primeiroNome + ' ' + f.segundoNome as nome
  from funcionario as f
 where ultimoNome is null;

 --Liste todos os departamentos que nao tem funcionarios
select d.nome 
from departamento as d
left join funcionario as f 
    on d.codigo = f.codigoDepartamento
where f.codigo is null;

--descreva o comando para excluir o departamento 5
delete departamento where codigo = 5;

--altere o salario do funcionario 4 de 0 para 10000
update funcionario set salario = 10000 where codigo = 4;



