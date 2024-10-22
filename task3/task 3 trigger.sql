create or replace function upd_products()
returns trigger as $$
begin 
insert into upd_prod (productid,productname,old_category,new_category)
values (old.productid,old.productname,old.category,new.category);
return new;
end
$$ language plpgsql;

create trigger upd_category
after update on product
for each row
execute function upd_products()

update product  set category = 'Furniture' where productid = 1