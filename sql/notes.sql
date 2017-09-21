
-- datetime to date
-- option 1
select cast(created_on as date) from job
select date(created_on) from job

-- date extract. Usage:
extract(Month from '2010-10-20')

-- extracting data by date
select created_on from str_order where extract(Month from created_on)='10';

-- Tiempo laborable en México
date_format(j.created_on, '%H')-5 between 9 and 18

-- extract data from mexico
-- using like pattern matching 
-- MX% match any string after MX 
SELECT 
city 

FROM
job
WHERE
city LIKE 'MX%'

-- Subqueries
-- Sintaxis
-- SELECT col_1, ... 
-- FROM ( SELECT col_s1, ...  
-- 		FROM table ) as query_name
SELECT fecha_visita,
       categoria_presupuesto,
       count(categoria_presupuesto) as eventos_x_categoria_presupuesto
        FROM (  
          select fecha_visita,
            case
                WHEN 0 < Precio_Trabajo_relacionado AND
                    Precio_Trabajo_relacionado <= 1500
                    THEN 'una extrella'
                WHEN 1500 < Precio_Trabajo_relacionado
                    AND Precio_Trabajo_relacionado < 20000
                    THEN 'dos estrellas'
                WHEN 20000 < Precio_Trabajo_relacionado
                    THEN 'tres estrellas'
             else 'no asignado'
            end as categoria_presupuesto
       from [envio_presupuestos_b2c_mx]
              ) as categorias
        group by categorias.fecha_visita, categorias.categoria_presupuesto

-- alias in pericope using views
[view as v]

-- HAVING es análogo a where pero
-- este funciona con group by
select 
 c.fecha_trabajo,
 r.Categoria,
 sum(r.Monto_Pro)
from 
 [calificados_mx as c] 
left join
 [revenues_mx as r] 
on c.job_id = r.job_id
group by r.Categoria, fecha_trabajo
having sum(r.Monto_Pro) > 1000



