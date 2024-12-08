USE magist;
SELECT COUNT(DISTINCT s.seller_id) AS Sellers,  
CASE 
        WHEN product_category_name IN ('audio' ,  'consoles_games', 'eletronicos','informatica_acessorios', 
'pc_gamer', 'pcs', 'relogios_presentes', 'telefonia') THEN 'Tech sellers' 
        ELSE 'Non Tech sellers'
    END AS Category
FROM sellers s  
LEFT JOIN order_items oi USING (seller_id)
LEFT JOIN products p USING (product_id)
GROUP BY (Category);