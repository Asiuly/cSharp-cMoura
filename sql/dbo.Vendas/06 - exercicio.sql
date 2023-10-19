use comercio;

----------------------------------------------------------------
------------------- EXERCICIOS DE SQL SERVER -------------------
---------------------------------------------------------------- 

-- SELECIONE TODOS OS DADOS DOS PRODUTOS QUE COMECEM COM AS INICIAIS 'Mo'.
select Id, Descricao, QtdeEstoqueAtual, QtdeEstoqueMinimo, VrUnitario
  from produto
 where Descricao like 'Mo%';

-- SELECIONE O NOME DOS CLIENTES CUJO NOME COMECE COM A LETRA 'G'.
select nome
  from cliente 
 where nome like 'G%';

-- ACRESCENTE 50 UNIDADES AO ESTOQUE MINIMO DE TODOS OS PRODUTOS.
update produto set QtdeEstoqueMinimo += 50;
select * from Produto;

-- SELECIONE TODOS OS DADOS DOS CLIENTES DO SEXO FEMININO.
select Id, Nome, Sexo, DtNascimento, Email
  from cliente
 where sexo = 'f';

-- SELECIONE TODOS OS DADOS DOS PRODUTOS QUE ESTEJAM COM O ESTOQUE ATUAL ABAIXO DO ESTOQUE MINIMO.
select Id, Descricao, QtdeEstoqueAtual, QtdeEstoqueMinimo, VrUnitario
  from produto
 where QtdeEstoqueAtual < QtdeEstoqueMinimo;
 
-- SELECIONE O NOME (descricao) DOS PRODUTOS QUE POSSUEM VRUNITARIO ACIMA DE R$ 10.00 EM ORDEM CRESCENTE DE QTDEESTOQUEATUAL.
select Descricao--, VrUnitario, QtdeEstoqueAtual
  from produto
 where VrUnitario > 10
 order by QtdeEstoqueAtual;

-- SELECIONE TODOS OS DADOS DOS CLIENTES QUE NASCERAM NO MES DE JULHO.
select Id, Nome, Sexo, DtNascimento, Email
  from cliente
 where month(DtNascimento) = 7;

SELECT Id, Nome, Sexo, DtNascimento, Email
  FROM Cliente
 Where DATEPART(month, DtNascimento) = 7;

-- ACRESCENTE 10% AO VRUNITARIO DE TODOS OS PRODUTOS.
select vrunitario, vrunitario * 1.10
  from produto;

update produto set VrUnitario *= 1.1;

-- SELECIONE O VALOR TOTAL DE PRODUTOS EM ESTOQUE
-- IMP.: VALOR TOTAL EM ESTOQUE = SOMA (QTDEESTOQUEATUAL * VRUNITARIO)
-- PARA CALCULAR A SOMA UTILIZE A FUNÇÃO SUM.
select sum(VrUnitario * QtdeEstoqueAtual) as vrtotalestoque
  from produto

-- SELECIONE TODOS OS DADOS DOS CLIENTES QUE NASCERAM NOS MESES 08,09 E 10.
select Id, Nome, Sexo, DtNascimento, Email
  from cliente
 where month(DtNascimento) = 8
   or month(DtNascimento) = 9
   or month(DtNascimento) = 10;

select Id, Nome, Sexo, DtNascimento, Email
  from cliente
 where month(DtNascimento) >= 8
   and month(DtNascimento) <= 10;

select Id, Nome, Sexo, DtNascimento, Email
  from cliente
 where month(DtNascimento) between 8 and 10;

select Id, Nome, Sexo, DtNascimento, Email
  from cliente
 where month(DtNascimento) > 7
   and month(DtNascimento) < 11;

-- SELECIONE O VALOR MÉDIO DOS PRODUTOS EM ESTOQUE
-- IMP.: VALOR MÉDIO DOS PRODUTOS EM ESTOQUE = MÉDIA (QTDEESTOQUEATUAL * VRUNITARIO)
-- PARA CALCULAR A MÉDIA UTILIZE A FUNÇÃO AVG. (????)
select avg(VrUnitario * QtdeEstoqueAtual) as vrmedioestoque
  from produto

-- SELECIONE O ID E NOME DOS CLIENTES CUJO NOME TERMINE COM A LETRA 'A' E NASCERAM NO ANO DE 1979.
select Id, Nome
  from cliente
 where year(DtNascimento) = 1979
   and nome like '%a';

-- SELECIONAR TODOS OS DADOS DAS VENDAS (INCLUSIVE SEUS PRODUTOS) REALIZADAS (finalizadas) PARA O CLIENTE 'Aroldo Rodrigues'.
	 select v.Id, v.IdCliente, v.IdStatus, v.Dt,
			vp.Id, vp.IdVenda, vp.IdProduto, vp.Qtde, vp.Vr
	   from Venda as v 
 inner join VendaProduto as vp on v.id = vp.IdVenda
 inner join Cliente as c on c.id = v.IdCliente
	  where c.Nome = 'Aroldo Rodrigues'
		and v.IdStatus = 2;

select * from VendaStatus;
select * from cliente where nome = 'Aroldo Rodrigues';
select * from venda where IdCliente = 5;
select * from VendaProduto where IdVenda in (6,10)

-- SELECIONE O MENOR VRUNITARIO DO CADASTRO DE PRODUTO.
-- IMP.: UTILIZE A FUNÇÃO MIN.
select min(vrunitario) as menor
  from produto

-- SELECIONE O NOME DOS PRODUTOS QUE TERMINEM COM A LETRA 'a'.
select descricao
  from produto
 where descricao like '%a';

-- SELECIONAR TODOS OS DADOS DAS VENDAS (SOMENTE VENDAS - NÃO INCLUIR OS PRODUTOS) QUE ESTEJAM COM O STATUS ABERTO E FORAM 
-- REALIZADAS NO ANO DE 2022.
-- IMP.: ALÉM DO ID DO CLIENTE E DO ID DO STATUS DA VENDA, TANTO O NOME QUANTO A DESCRIÇÃO DOS MESMOS DEVEM SER 
--       EXIBIDOS NO SELECT. TOME CUIDADO PARA VENDAS QUE NÃO TENHAM CLIENTE.
select V.ID, v.IdCliente, V.IdStatus, V.Dt, 
       vs.Descricao, c.Nome
  from cliente as c  
 right join venda as v on c.id = v.IdCliente
 inner join vendastatus as vs on vs.Id = v.IdStatus
 where v.IdStatus = 1
   and year(v.Dt) = 2022;

-- SELECIONE O NOME DOS CLIENTES QUE COMPRARAM O PRODUTO APONTADOR.
--não sei o id do produto.
select c.Nome 
  from Venda as v
 inner join VendaProduto as vp on v.id = vp.IdVenda
 inner join Produto as p on p.Id = vp.IdProduto
 inner join Cliente c on c.Id = v.IdCliente 
 where p.Descricao = 'Apontador'
   and v.IdStatus = 2;

--sei o id do produto.
select c.Nome 
  from Venda as v
 inner join VendaProduto as vp on v.id = vp.IdVenda
 inner join Cliente c on c.Id = v.IdCliente 
 where vp.IdProduto = 8
   and v.IdStatus = 2;

--gabriel giovani
select c.Nome
  from Venda as v
 inner join Cliente c on c.Id = v.IdCliente
	where v.Id in (select vp.IdVenda
					from VendaProduto AS vp
					where vp.IdProduto = 8) and v.IdStatus = 2;

select * from Produto where Descricao = 'Apontador';
select * from VendaProduto where IdProduto = 8;
select * from venda where Id in (3,7,8,11) and IdStatus = 2;
select * from cliente where id = 2;


-- SELECIONAR O ID, DT DAS VENDAS DOS CLIENTES DO SEXO MASCULINO QUE FORAM REALIZADAS NO ANO DE 2023 
-- ORDENADAS POR DATA DE VENDA (CRESCENTE).
select v.Id, v.Dt--, v.IdStatus
  from Venda as v
 inner join Cliente c on c.Id = v.IdCliente 
 where c.Sexo = 'm'
   and year(v.Dt) = 2023
 order by v.Dt;

select v.id, v.dt
  from venda as v
 inner join cliente c on c.Id = v.IdCliente
 where c.Sexo = 'm' 
   and v.Dt between '2023-01-01' and '2023-12-31'
 order by v.Dt

-- SELECIONE O NOME DOS CLIENTES QUE NÃO COMPRARAM O PRODUTO MOUSE.

select c1.nome
  from cliente c1
 where not exists (
		select c.Nome 
		  from Venda as v
		 inner join VendaProduto as vp on v.id = vp.IdVenda
		 inner join Produto as p on p.Id = vp.IdProduto
		 inner join Cliente c on c.Id = v.IdCliente 
		 where p.Descricao = 'Mouse'
		   and v.IdStatus = 2
		   and v.IdCliente = c1.Id)

select c1.nome
  from cliente c1
 where c1.id not in (
		select c.id 
		  from Venda as v
		 inner join VendaProduto as vp on v.id = vp.IdVenda
		 inner join Produto as p on p.Id = vp.IdProduto
		 inner join Cliente c on c.Id = v.IdCliente
		 where p.Descricao = 'Mouse'
		   and v.IdStatus = 2)

-- SELECIONAR O ID, DT DAS VENDAS DOS CLIENTES DE SEXO FEMININO ORDENADAS POR DATA DE VENDA (DECRESCENTE).
select v.Id, v.Dt--, c.Nome
  from Venda as v
 inner join Cliente c on c.Id = v.IdCliente 
 where c.Sexo = 'f'
 order by v.Dt desc;

-- EXIBIR O RELATÓRIO DE VENDAS FINALIZADAS COM OS SEGUINTES CAMPOS:
---- ID VENDA, DESCRICAO DO STATUS DA VENDA, IDCLIENTE E NOME DO CLIENTE
---- IMP.: OS DADOS DO CLIENTE DA VENDA SÓ DEVEM SER EXIBIDOS SE A VENDA POSSUIR CLIENTES
---------- ASSIM, SE A VENDA NÃO POSSUIR CLIENTE, ELA DEVE SER EXIBIDA NO RELATÓRIO COM OS CAMPOS DE CLIENTE COM VALOR NULO.
select v.Id, vs.Descricao, c.Id, c.Nome
  from Venda as v
 inner join VendaStatus as vs on vs.Id = v.IdStatus
 --inner join VendaProduto as vp on v.id = vp.IdVenda
 --inner join Produto as p on p.Id = vp.IdProduto
  left join Cliente c on c.Id = v.IdCliente
 where v.IdStatus = 2;
 --order by c.nome;

-- EXIBIR O NUMERO DE VENDAS QUE ESTÃO FINALIZADAS.
-- IMP.: PROCURAR PELA FUNÇÃO COUNT.
select count(v.id) as 'qtdevendasfinalizadas'
  from venda v
 where v.IdStatus = 2

-- EXIBIR O NUMERO DE VENDAS QUE ESTÃO FINALIZADAS E EM ABERTO.
-- IMP.: PROCURAR PELA FUNÇÃO COUNT E GROUP BY.
select vs.descricao , count(v.id) as 'qtdevendas'
  from venda v
 inner join vendastatus vs on vs.id = v.idstatus
 group by vs.descricao

-- SELECIONE O ID, DESCRICAO E VRUNITARIO DOS PRODUTOS QUE FORAM VENDIDOS PARA CLIENTES DO SEXO MASCULINO NO ANO DE 2013,
-- CONSIDERANDO SOMENTE VENDAS FINALIZADAS.
select p.Id, p.Descricao, vp.Vr--, c.Nome
  from Venda as v
 inner join VendaProduto as vp on v.id = vp.IdVenda
 inner join Produto as p on p.Id = vp.IdProduto
 inner join Cliente c on c.Id = v.IdCliente
 where v.IdStatus = 2
   and c.Sexo = 'm'
   and v.Dt between '2023-01-01' and '2023-12-31'

-- SELECIONE O ID, DESCRICAO DOS PRODUTOS QUE NAO FORAM INCLUÍDOS EM VENDA ALGUMA.
select p.id, p.descricao
  from produto p 
  left join vendaproduto vp on p.id = vp.idproduto
 where vp.id is null
 
-- SELECIONE O NOME DOS CLIENTES QUE NÃO COMPRARAM.
--select nome
--  from cliente
-- where id in (
		--clientes que não estão na tabela venda.
		--select c.id
		--  from cliente c
		--  left join venda v on c.id = v.idcliente
		-- where v.id is null
		-- union all
		 --clientes que não possuem vendas finalizadas (CLIENTES QUE NÃO COMPRARAM)
		 select nome
		   from cliente 
		  where id not in (select distinct v.idcliente
							 from venda v
							where v.IdStatus = 2
							  and v.IdCliente is not null)--)

select c.nome
 from cliente as c
where not exists (select distinct v.idcliente
					from venda v
				where v.IdStatus = 2
					and v.IdCliente is not null
					and v.IdCliente = c.id)

-- SELECIONE O ID DA VENDA, DESCRICAO, VR UNITARIO, QTDE DO PRODUTO E CALCULE PARA CADA PRODUTO O VALOR TOTAL
-- CONSIDERANDO SOMENTE AS VENDAS FINALIZADAS PARA CLIENTES DO SEXO FEMININO.
select v.Id, p.Descricao, vp.Vr, vp.Qtde, vp.Vr * vp.Qtde as Total --, c.Nome
  from Venda as v
 inner join VendaProduto as vp on v.id = vp.IdVenda
 inner join Produto as p on p.Id = vp.IdProduto
 inner join Cliente c on c.Id = v.IdCliente
 where v.IdStatus = 2
   and c.Sexo = 'f'

-- SELECIONE O ID, DESCRICAO E VR de venda DOS PRODUTOS E O ID DA VENDA DOS PRODUTOS QUE FORAM VENDIDOS 
-- ENTRE OS MESES 10 E 11 DE 2022, CONSIDERANDO SOMENTE VENDAS FINALIZADAS
select v.Id, p.Id, p.Descricao, vp.Vr --, v.dt
  from Venda as v
 inner join VendaProduto as vp on v.id = vp.IdVenda
 inner join Produto as p on p.Id = vp.IdProduto
 inner join Cliente c on c.Id = v.IdCliente
 where v.IdStatus = 2
   and v.Dt between '2022-10-01' and '2022-11-30'

-- ALTERE A DATA DA(S) VENDA(S) DO CLIENTE 'Aroldo Rodrigues' PARA 01/01/2020.
update venda set Dt = '2020-01-01' where id in (
select v.Id
  from Venda as v
 inner join VendaProduto as vp on v.id = vp.IdVenda
 inner join Cliente c on c.id = v.IdCliente
 where c.Nome = 'Aroldo Rodrigues');


--instruções de apoio
sp_help cliente
sp_help produto
sp_help venda
sp_help vendaproduto