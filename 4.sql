select 
count(product_category_name_english)
from product_category_name_translation
WHERE product_category_name = 'relogios_presentes' OR product_category_name = 'tablets_impressao_imagem' OR product_category_name = 'pc_gamer' OR
product_category_name = 'audio'
OR product_category_name = 'pcs' OR product_category_name = 'informatica_acessorios' OR product_category_name = 'eletronicos' 
OR product_category_name = 'dvds_blu_ray';


select 
distinct(oi.product_id) As tech_products_sold , product_category_name_english
from order_items oi
left join products p 
using (product_id)
left join product_category_name_translation pt 
using(product_category_name)
WHERE product_category_name = 'relogios_presentes' OR product_category_name = 'tablets_impressao_imagem' OR product_category_name = 'pc_gamer' OR
product_category_name = 'audio'
OR product_category_name = 'pcs' OR product_category_name = 'informatica_acessorios' OR product_category_name = 'eletronicos' 
OR product_category_name = 'dvds_blu_ray';



select 
count(distinct(oi.product_id) )As tech_products_sold
from order_items oi
left join products p 
using (product_id)
left join product_category_name_translation pt 
using(product_category_name)
WHERE product_category_name = 'relogios_presentes' OR product_category_name = 'tablets_impressao_imagem' OR product_category_name = 'pc_gamer' OR
product_category_name = 'audio'
OR product_category_name = 'pcs' OR product_category_name = 'informatica_acessorios' OR product_category_name = 'eletronicos' 
OR product_category_name = 'dvds_blu_ray';

select 
count(distinct(oi.product_id) )As products_sold
from order_items oi;

SELECT 
    ROUND(AVG(price), 1)
FROM
    order_items;
    
SELECT 
    COUNT(oi.product_id),
    CASE
        WHEN price > 1000 THEN "expensive"
        WHEN price > 100 THEN "midrange"
        ELSE "Cheap"
    END AS 'price_range'
FROM
    order_items oi
        LEFT JOIN
    products p USING (product_id)
        LEFT JOIN
    product_category_name_translation pt USING (product_category_name)
WHERE
    pt.product_category_name_english = 'relogios_presentes'
        OR product_category_name_english = 'tablets_impressao_imagem'
        OR product_category_name_english = 'pc_gamer'
        OR product_category_name_english = 'audio'
        OR product_category_name_english = 'pcs'
        OR product_category_name_english = 'informatica_acessorios'
        OR product_category_name_english = 'eletronicos'
        OR product_category_name_english = 'dvds_blu_ray'
        OR product_category_name_english = 'pcs'
        OR product_category_name_english = 'informatica_acessorios'
        OR product_category_name_english = 'eletronicos'
        OR product_category_name_english = 'dvds_blu_ray'
        group by price_range
        order by 1 desc;
