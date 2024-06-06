create table Inventorymanagesystem
(
 ID int primary key Identity (1,1),
 Productname nvarchar (200) not null,
 Retailprice int  not null,
 Sellingprice int  not null,

)
drop table Inventorymanagesystem
select *from Inventorymanagesystem
Delete from Inventorymanagesystem
where ID='4'
Create or alter procedure Productlist
as
begin
select * from Inventorymanagesystem
end 
exec  Productlist

create or alter procedure detail (@ID int)
as
begin
select *from Inventorymanagesystem where ID=@ID
end 
exec  detail 3

create or alter procedure insertproduct (@Productname nvarchar (200),@Retailprice int ,@sellingprice int)
as
begin
insert into Inventorymanagesystem (Productname,retailprice,sellingprice)values(@Productname,@Retailprice,@Sellingprice)
end 
exec  insertproduct 'Dell',30000,40000
exec  insertproduct 'hp',40000,50000
exec  insertproduct 'hp',40000,50000

create or alter procedure updateproduce (@ID int ,@Productname nvarchar (200),@Retailprice int ,@Sellingprice int)
as
begin 
update  Inventorymanagesystem set  Productname=@Productname,Retailprice=@Retailprice,Sellingprice=@Sellingprice
where ID=@ID
end
exec  updateproduce  3 ,'jio',30000,50000

create or alter procedure Deletesp(@ID int)
as
begin
Delete from Inventorymanagesystem where ID=@ID
end
exec Deletesp 2
--table 2
create table purchasedetails
(
  ID int primary key identity(1,1),
  vendorname nvarchar (200)  not null,
  productname nvarchar (200)  not null,
  quantity int not null,
 
)
drop table purchasedetails
select *from purchasedetails

Create or alter procedure purchaselist
as
begin
select * from purchasedetails
end 
exec purchaselist

create or alter procedure details (@ID int)
as
begin
select *from purchasedetails where ID=@ID
end 
exec  details 1

create or alter procedure insertpurchasedetails (@vendorname nvarchar (200), @productname nvarchar (200),@quantity int)
as
begin
insert into purchasedetails (vendorname,productname ,quantity )values(@vendorname,@productname,@quantity)
end 
exec  insertpurchasedetails  'GoodGD ','Dell',100
exec  insertpurchasedetails 'AGB','hp',100

create or alter procedure updatepurchasedetails (@ID int ,@vendorname nvarchar (200), @productname nvarchar (200),@quantity int)
as
begin
update purchasedetails set vendorname=@vendorname,productname=@productname,quantity=@quantity
where ID=@ID
end
exec  updatepurchasedetails  3,'TATA',jio,100

create or alter procedure Deletepurchasedetails(@ID int)
as
begin
Delete from purchasedetails where ID=@ID
end
exec Deletepurchasedetails 2