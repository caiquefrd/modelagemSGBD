select unidade as "fatec", turno, count (curso) "quantidade"
from tbcurso
group by unidade, turno
having unidade like '%São José dos Campos%'
order by unidade, turno asc;
