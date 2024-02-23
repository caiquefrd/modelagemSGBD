--exercicio1--
select tbcurso.nome from tbcurso, tbunidade, tbcurso_por_unidade
where
tbcurso.id = tbcurso_por_unidade.idcurso and
tbunidade.id = tbcurso_por_unidade.idunidade and
tbunidade.municipio = 'Jacareí'
order by tbcurso.nome asc;

--exerciico 2-- 
select tbcurso.nome, tbturno.nome
from tbcurso, tbunidade, tbcurso_por_unidade, tbturno
where
tbcurso.id = tbcurso_por_unidade.idcurso and
tbunidade.id = tbcurso_por_unidade.idunidade and
tbturno.id = tbcurso_por_unidade.idturno and
tbunidade.municipio = 'Jacareí'
order by tbcurso.nome asc;

--exercicio3--
select distinct tbunidade.unidade as "Unidade"
from tbcurso, tbunidade, tbcurso_por_unidade
where
tbcurso.id = tbcurso_por_unidade.idcurso and
tbunidade.id = tbcurso_por_unidade.idunidade and
tbcurso.nome = 'Gestão Financeira'
order by tbunidade.unidade asc;

--exercicio4--
select distinct tbturno.nome as "Turno"
from tbcurso, tbcurso_por_unidade, tbturno
where
tbcurso.id = tbcurso_por_unidade.idcurso and
tbturno.id = tbcurso_por_unidade.idturno and
tbcurso.nome = 'Gestão Financeira'
order by tbturno.nome asc;

--exercicio5
select tbturno.nome as "Turno", count (tbcurso.nome) as "Quantidade"
from tbcurso, tbcurso_por_unidade, tbturno
where
tbcurso.id = tbcurso_por_unidade.idcurso and
tbturno.id = tbcurso_por_unidade.idturno
group by "Turno"
order by tbturno.nome asc;

--exercicio6
select tbturno.nome as "Turno", sum (tbcurso_por_unidade.vaga) as "Vagas"
from tbcurso_por_unidade, tbturno
where
tbturno.id = tbcurso_por_unidade.idturno
group by "Turno"
order by "Turno" asc;

--exercicio7
select tbunidade.unidade as "Unidade", tbturno.nome as "Turno"
from tbcurso_por_unidade, tbturno, tbunidade
where
tbturno.id = tbcurso_por_unidade.idturno and
tbunidade.id = tbcurso_por_unidade.idunidade
group by "Unidade", "Turno"
order by "Unidade" asc;

--exercicio8
select tbunidade.unidade as "Unidade", tbturno.nome as "Turno",
count (tbcurso.nome) as "Curso"
from tbcurso_por_unidade, tbturno, tbunidade, tbcurso
where
tbturno.id = tbcurso_por_unidade.idturno and
tbcurso.id = tbcurso_por_unidade.idcurso and
tbunidade.id = tbcurso_por_unidade.idunidade
group by "Unidade", "Turno"
order by "Unidade" asc;

--exercicio9
select tbunidade.unidade as "Unidade", tbturno.nome as "Turno",
count (tbcurso.nome) as "Curso"
from tbcurso_por_unidade, tbturno, tbunidade, tbcurso
where
tbturno.id = tbcurso_por_unidade.idturno and
tbcurso.id = tbcurso_por_unidade.idcurso and
tbunidade.id = tbcurso_por_unidade.idunidade
group by "Unidade", "Turno"
having count (tbcurso.nome) = 5
order by "Unidade" asc;

--exercicio10

select tbunidade.unidade as "Unidade", tbturno.nome as "Turno",
count (tbcurso.nome) as "Curso"
from tbcurso_por_unidade, tbturno, tbunidade, tbcurso
where
tbturno.id = tbcurso_por_unidade.idturno and
tbcurso.id = tbcurso_por_unidade.idcurso and
tbunidade.id = tbcurso_por_unidade.idunidade and
tbturno.nome = 'matutino'
group by "Unidade", "Turno"
having count (tbcurso.nome) = 5
order by "Unidade" asc;




