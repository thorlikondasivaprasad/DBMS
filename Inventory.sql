declare

id inventory.purchese_id%type:=&id;
q inventory.quantity%type;

begin

select quantity into q from inventory where purchese_id=id;

if q>0  then

update inventory set quantity=quantity-1 where purchese_id=id;

insert into purchase_record values (id ,'PURCHASED',sysdate);

else

insert into purchase_record values (id ,'OUT OF STOCK',sysdate);

END IF;

end;

/
