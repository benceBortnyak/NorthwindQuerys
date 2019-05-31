SELECT * FROM(
	SELECT DISTINCT ON (company_name) company_name AS company, product_name AS product, unit_price AS price FROM suppliers 
	INNER JOIN products ON products.supplier_id = suppliers.supplier_id
	ORDER BY company_name, price DESC ) As foo
ORDER BY price DESC, product, company ;