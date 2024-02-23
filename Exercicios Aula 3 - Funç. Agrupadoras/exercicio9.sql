select unidade as "fatec", turno, sum (vaga) "quantidade"
from tbcurso
group by unidade, turno
having unidade like '%São José dos Campos%'
order by unidade, turno asc;
