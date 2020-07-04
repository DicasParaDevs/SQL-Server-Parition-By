begin tran

create table Estudantes(
	nome varchar(100),
	sexo varchar(100),
	idade int
)

insert into Estudantes values ('Alan', 'masculino', 20), ('Karynne', 'feminino', 18),
	('Amanda', 'feminino', 24), ('João', 'masculino', 20), ('Yuri', 'masculino', 20),
	('Sérgio', 'masculino', 28)

select * from Estudantes

select
	nome,
	sexo,
	avg(idade) over (partition by sexo) as 'Média de idade'
from Estudantes


rollback tran
