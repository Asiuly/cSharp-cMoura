
USE esporte;

--[campeonato]
INSERT INTO [dbo].[campeonato]([nome],[ativo])
     VALUES ('Paulista',0);
INSERT INTO [dbo].[campeonato]([nome],[ativo])
     VALUES ('Libertadores',1);

--[equipe]
INSERT INTO [dbo].[equipe]([nome])
     VALUES ('São Paulo');
INSERT INTO [dbo].[equipe]([nome])
     VALUES ('Corinthians');
INSERT INTO [dbo].[equipe]([nome])
     VALUES ('Santos');
INSERT INTO [dbo].[equipe]([nome])
     VALUES ('Palmeiras');
INSERT INTO [dbo].[equipe]([nome])
     VALUES ('Ferroviária');
INSERT INTO [dbo].[equipe]([nome])
     VALUES ('The Strongest');
INSERT INTO [dbo].[equipe]([nome])
     VALUES ('Emelec');
INSERT INTO [dbo].[equipe]([nome])
     VALUES ('Flamengo');
INSERT INTO [dbo].[equipe]([nome])
     VALUES ('Internacional');
INSERT INTO [dbo].[equipe]([nome])
     VALUES ('Libertad');
INSERT INTO [dbo].[equipe]([nome])
     VALUES ('TESTENULO');

--[partida]

INSERT INTO [dbo].[partida](idcampeonato,idequipecasa,idequipevisitante,golsequipecasa,golsequipevisitante,[data],hora)
     VALUES  (1,1,2,3,2,'2022-03-20','20:00');
INSERT INTO [dbo].[partida](idcampeonato,idequipecasa,idequipevisitante,golsequipecasa,golsequipevisitante,[data],hora)
     VALUES  (1,3,4,2,1,'2022-03-20','20:00');
INSERT INTO [dbo].[partida](idcampeonato,idequipecasa,idequipevisitante,golsequipecasa,golsequipevisitante,[data],hora)
     VALUES  (1,1,3,3,3,'2022-03-24','16:00');
INSERT INTO [dbo].[partida](idcampeonato,idequipecasa,idequipevisitante,golsequipecasa,golsequipevisitante,[data],hora)
     VALUES  (1,4,5,2,3,'2022-03-24','16:00');
INSERT INTO [dbo].[partida](idcampeonato,idequipecasa,idequipevisitante,golsequipecasa,golsequipevisitante,[data],hora)
     VALUES  (1,1,4,1,2,'2022-04-01','20:00');
INSERT INTO [dbo].[partida](idcampeonato,idequipecasa,idequipevisitante,golsequipecasa,golsequipevisitante,[data],hora)
     VALUES  (1,2,3,3,2,'2022-04-01','20:00');
INSERT INTO [dbo].[partida](idcampeonato,idequipecasa,idequipevisitante,golsequipecasa,golsequipevisitante,[data],hora)
     VALUES  (1,1,5,0,5,'2022-04-05','16:00');
INSERT INTO [dbo].[partida](idcampeonato,idequipecasa,idequipevisitante,golsequipecasa,golsequipevisitante,[data],hora)
     VALUES  (1,2,4,1,1,'2022-04-05','10:00');
INSERT INTO [dbo].[partida](idcampeonato,idequipecasa,idequipevisitante,golsequipecasa,golsequipevisitante,[data],hora)
     VALUES  (1,2,5,3,5,'2022-05-12','20:00');
INSERT INTO [dbo].[partida](idcampeonato,idequipecasa,idequipevisitante,golsequipecasa,golsequipevisitante,[data],hora)
     VALUES  (1,3,5,0,4,'2022-05-15','10:00');     
INSERT INTO [dbo].[partida](idcampeonato,idequipecasa,idequipevisitante,golsequipecasa,golsequipevisitante,[data],hora)
     VALUES  (2,5,6,3,4,'2022-04-20','22:00');
INSERT INTO [dbo].[partida](idcampeonato,idequipecasa,idequipevisitante,golsequipecasa,golsequipevisitante,[data],hora)
     VALUES  (2,7,10,0,0,'2022-04-20','22:00');
INSERT INTO [dbo].[partida](idcampeonato,idequipecasa,idequipevisitante,golsequipecasa,golsequipevisitante,[data],hora)
     VALUES  (2,8,9,3,2,'2022-04-20','21:00');
INSERT INTO [dbo].[partida](idcampeonato,idequipecasa,idequipevisitante,golsequipecasa,golsequipevisitante,[data],hora)
     VALUES  (2,5,7,2,1,'2022-04-24','10:00');
INSERT INTO [dbo].[partida](idcampeonato,idequipecasa,idequipevisitante,golsequipecasa,golsequipevisitante,[data],hora)
     VALUES  (2,6,8,1,5,'2022-04-24','11:00');
INSERT INTO [dbo].[partida](idcampeonato,idequipecasa,idequipevisitante,golsequipecasa,golsequipevisitante,[data],hora)
     VALUES  (2,9,10,8,1,'2022-04-24','10:30');
INSERT INTO [dbo].[partida](idcampeonato,idequipecasa,idequipevisitante,golsequipecasa,golsequipevisitante,[data],hora)
     VALUES  (2,5,8,6,0,'2022-05-01','20:00');
INSERT INTO [dbo].[partida](idcampeonato,idequipecasa,idequipevisitante,golsequipecasa,golsequipevisitante,[data],hora)
     VALUES  (2,6,7,2,3,'2022-05-01','20:00');
INSERT INTO [dbo].[partida](idcampeonato,idequipecasa,idequipevisitante,golsequipecasa,golsequipevisitante,[data],hora)
     VALUES  (2,5,9,3,2,'2022-05-05','20:00');
INSERT INTO [dbo].[partida](idcampeonato,idequipecasa,idequipevisitante,golsequipecasa,golsequipevisitante,[data],hora)
     VALUES  (2,6,10,3,1,'2022-05-05','22:00');
INSERT INTO [dbo].[partida](idcampeonato,idequipecasa,idequipevisitante,golsequipecasa,golsequipevisitante,[data],hora)
     VALUES  (2,7,8,4,5,'2022-05-05','10:00');
INSERT INTO [dbo].[partida](idcampeonato,idequipecasa,idequipevisitante,golsequipecasa,golsequipevisitante,[data],hora)
     VALUES  (2,5,10,0,0,'2022-05-11','11:00');
INSERT INTO [dbo].[partida](idcampeonato,idequipecasa,idequipevisitante,golsequipecasa,golsequipevisitante,[data],hora)
     VALUES  (2,6,9,1,3,'2022-05-11','22:00');
INSERT INTO [dbo].[partida](idcampeonato,idequipecasa,idequipevisitante,golsequipecasa,golsequipevisitante,[data],hora)
     VALUES  (2,8,10,7,1,'2022-05-15','10:00');

SELECT *
  FROM dbo.campeonato;

SELECT *
  FROM dbo.[equipe];

SELECT *
  FROM dbo.[partida] where id =25;

------------------------------------
  -- DML FEITO POR MIM --
------------------------------------

-- 05) insira a partida 25
insert into dbo.partida (idCampeonato, idEquipeCasa, idEquipeVisitante, golsEquipeCasa, golsEquipeVisitante, [data], hora )
	 values (2, 7, 9, 4, 1, '2022-05-15', '11:00');

-- 6) Escreva a instrução para alterar o placar da partida 6 para oito gols do time da casa e dois gols do time visitante.

update dbo.partida set golsEquipeCasa = 8, golsEquipeVisitante = 2 where id = 6;


-- 7) Escreva a instrução para excluir os campeonatos inativos.

delete from campeonato where ativo = 0;


-- 8) A instrução da questão 7 causará algum erro? Explique sua reposta.

-- SIM, o campeonato paulista(marcado como 0 em ativo) é uma chave estrangeira na tabela de partidas: c.id = p.idCampeonato
-- e contém jogos registrados com seu id atualmente. Portanto, quando a gente excluir o campeonato paulista, não haverá mais
-- referência para o jogo que o referencia e o banco de dados poderá apresentar erros de integridade referencial ou até mesmo
-- excluir em cascata os jogos associados ao campeonato (por isso é importante deixar desligada essa opção de exclusão em cascata).

--Além disso, se você excluir o campeonato paulista, perderá todas as informações associadas a ele.



-- 9) Sugira uma nova chave primária para a tabela Partida e explique o motivo da sua sugestão. Não precisa aplicá-la 
--   no banco de dados, somente sugerir e explicar.

--                                  RESPOSTA
-- na tabela partida, sugiro a criação de uma chave primária com a combinação de 3 colunas: data, 
-- idEquipeCasa e idEquipeVisitante, pois duas equipes jamais se enfrentarão duas vezes no mesmo dia e essa combinação
-- garantiria que cada partida tivesse uma chave primária única.

-- Não utilizei a coluna campeonato por pensar em possibilidades de repescagem.



-- 10) Escreva a instrução para selecionar todos os dados dos campeonatos ativos.

select id, nome, ativo from campeonato where ativo = 1;


-- 11) Escreva a instrução para selecionar todos os dados das equipes que tenham a letra 'P' no nome.

select id, nome
  from dbo.equipe as e
 where e.nome like '%P%'


-- 12) Escreva a instrução para selecionar os nomes das equipes que possuem Id entre 3 e 6.

select nome
  from dbo.equipe as e
 where e.id > 3 and e.id < 6; 


-- 13) Escreva a instrução para selecionar as datas e horas das partidas e os nomes das equipes que jogaram em casa
--     no mês de abril de 2022.

  	select p.[data], p.hora, ec.nome as EquipeDaCasa, ev.nome as EquipeVisitante
      from partida as p
inner join equipe as ec 
		on p.idEquipeCasa = ec.id

inner join equipe as ev 
		on p.idEquipeVisitante = ev.id
     where month([data]) = 4
	   and year([data]) = 2022;



-- 14) Escreva a instrução para selecionar os nomes das equipes visitantes que jogaram em 15/05/2022.

	select ev.nome 
	  from equipe as ev
inner join partida as p 
		on p.idEquipeVisitante = ev.id
     where [data] = '2022-05-15';


-- 15) Escreva a instrução para selecionar as datas das partidas, os números de gols feitos em casa e os nomes das
--     equipes que jogaram em casa e marcaram mais de três gols na data de 24/04/2022.

	select p.[data], p.golsEquipeCasa, ec.nome
	  from partida as p
inner join equipe as ec
		on p.idEquipeCasa = ec.id
	 where golsEquipeCasa > 3
	   and [data] = '2022-04-24';



-- 16) Escreva a instrução para selecionar os nomes das equipes que perderam partidas em casa. Devemos utilizar o
--     “Distinct” neste comando? Por quê?

select distinct ec.nome
		   from equipe as ec
     inner join partida as p
	         on ec.id = p.idEquipeCasa
		  where golsEquipeCasa < golsEquipeVisitante; 

-- ALTERNATIVA COM SUBSELECTT (29% DE CUSTO DE CONSULTA VS 71% DE CUSTO DE CONSULTA DO DISTINCT)

	select ec.nome 
	  from equipe as ec 
	 where ec.id in (
					select p.idEquipeCasa 
			 		  from partida as p 
					 where p.golsEquipeCasa < p.golsEquipeVisitante
					);


-- 17) Escreva a instrução para selecionar os nomes das equipes que ganharam partidas fora de casa com placar acima
--     de dois gols.

select distinct ev.nome
		   from equipe as ev
	 inner join partida as p
		     on ev.id = p.idEquipeVisitante
		  where golsEquipeVisitante > 2;

-- ALTERNATIVA COM SUBSELECTT (29% DE CUSTO DE CONSULTA VS 71% DE CUSTO DE CONSULTA DO DISTINCT)

	select ev.nome 
	  from equipe as ev
	 where ev.id in (
					select p.idEquipeVisitante 
			 		  from partida as p 
					 where p.golsEquipeVisitante > 2
					);

-- 18) Escreva a instrução para contar o número de jogos realizados pela “Ferroviária” como visitante.

select count(*) as numeroJogosFerroviariaVisitante
		   from partida as p
	 inner join equipe as ev
			 on p.idEquipeVisitante = ev.id
	      where ev.nome = 'Ferroviária';

select count(*) as numeroJogosFerroviariaVisitante
		   from partida as p
		  where idEquipeVisitante = 5;


-- 19) Escreva a instrução para selecionar o nome das equipes que não jogaram partidas de futebol.

	select e.nome
	  from equipe as e
 left join partida as p 
	    on e.id = p.idEquipeCasa or e.id = p.idEquipeVisitante
	 where p.id is null;



-- 20)	Qual a importância de visualizar o plano de execução das instruções?

--É super importante verificar o plano de execução ainda mais quando existem duas alternativas 
--de solução para uma mesma instrução, assim podemos verificar qual pesa menos na hora de realizar a ação, 
--como nas questões onde comparamos o distinct com o subselect.



--COMENTÁRIOS SOBRE A AVALIAÇÃO
-- QUESTÃO 13: Encontrei dificuldade para pensar em como colocar apenas um id reservado na equipe para duas chaves estrangeiras da tabela 
-- partida, mas depois consegui entender a lógica de separar através das siglas, o que mostrou a importância da utilização das mesmas,
-- também depois de entender isso as outras questões que envolviam isso foram tranquilas

-- QUESTÃO 19: novamente, sobre ter apenas uma pk para duas fk com as equipes, não sabia da utilização do 'OR' dentro do 'ON' do inner join, 
-- mas após uma rápida pesquisa entendi sua função