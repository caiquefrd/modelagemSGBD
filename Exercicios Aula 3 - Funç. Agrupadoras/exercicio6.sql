select unidade as "fatec", turno, count (curso) "quantidade"
from tbcurso
group by unidade, turno
order by unidade, turno asc;
