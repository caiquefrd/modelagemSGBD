select turno, sum (vaga) "quantidade"
from tbcurso
group by turno
order by turno asc;
