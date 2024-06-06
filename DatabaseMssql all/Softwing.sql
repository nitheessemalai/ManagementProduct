create table carmanagesystem
(
 ID int primary key Identity (1,1),
 Productname nvarchar (200) not null,
 Retailprice int  not null,
 Sellingprice int  not null,
 quantity int not null,
)

select *from carmanagesystem
Create or alter procedure Productlist
as
begin
select * from carmanagesystem
end 
exec  Productlist

create or alter procedure detail (@ID int)
as
begin
select *from carmanagesystem where ID=@ID
end 
exec  detail 3

create or alter procedure insertproduct (@Productname nvarchar (200),@Retailprice int ,@sellingprice int,@quantity int)
as
begin
insert into carmanagesystem (Productname,retailprice,sellingprice,quantity )values(@Productname,@Retailprice,@Sellingprice,@quantity )
end 
exec  insertproduct 'TATA',30000,40000,5
exec  insertproduct 'Toyota',40000,50000,5
exec  insertproduct 'BMW',40000,50000,6


create or alter procedure updateproduce (@ID int ,@Productname nvarchar (200),@Retailprice int ,@Sellingprice int,@quantity int)
as
begin 
update  carmanagesystem set  Productname=@Productname,Retailprice=@Retailprice,Sellingprice=@Sellingprice,quantity =@quantity
where ID=@ID
end
exec  updateproduce  3 ,'jiocar',30000,50000,4

create or alter procedure Deletesp(@ID int)
as
begin
Delete from carmanagesystem where ID=@ID
end
exec Deletesp 4
