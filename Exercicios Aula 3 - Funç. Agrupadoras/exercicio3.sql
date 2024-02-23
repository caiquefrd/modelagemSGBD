select unidade as "fatec", count(*) as "quantidade"
from tbcurso
group by unidade
order by quantidade desc
limit 1;