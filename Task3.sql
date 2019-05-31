select company_name AS Company ,count(products.supplier_id) as number_of_products FROM products
inner join suppliers
on products.supplier_id = suppliers.supplier_id
group by suppliers.company_name
having count(products.supplier_id)=5
order by number_of_products desc , company asc;
