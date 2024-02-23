select unidade as "fatec", count(*) as "quantidade"
from tbcurso
group by unidade
having count (*) = 3
order by quantidade desc;
