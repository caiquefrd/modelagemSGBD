select unidade as "fatec", turno, count (curso) "quantidade"
from tbcurso
group by unidade, turno
having count (curso) = 5 
order by unidade, turno asc;
