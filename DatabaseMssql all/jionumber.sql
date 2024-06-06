Create table jio
(
 ID int primary key identity(1,1),
 NAME nvarchar (500) not null,
 PHONENUMBER bigint not null,
 ADDERS nvarchar (200)not null,
 EMAIL nvarchar (100) not null,

)
select * from jio
drop table  jio
--sp

Create or alter procedure jionumber
as
begin
select * from jio
end 
exec  jionumber

create or alter procedure jionumber (@ID int)
as
begin
select *from jio where ID=@ID
end 
exec  jionumber 1
--sp
create or alter procedure insertjionumber (@NAME nvarchar (500),@PHONENUMBER bigint ,@ADDERS nvarchar(200),@EMAIL nvarchar(100))
as
begin
insert into jio (NAME,PHONENUMBER,ADDERS,EMAIL)values(@NAME,@PHONENUMBER,@ADDERS,@EMAIL)
end 
exec  insertjionumber 'Nithin',6379228321,'palani','palanimnr@gmail.com'
exec  insertjionumber 'cjbihn',6379224861,'pfjbwni','palawfojmnr@gmail.com'


create or alter procedure updatesp(@ID int ,@NAME nvarchar (500),@PHONENUMBER bigint ,@ADDERS nvarchar(200),@EMAIL nvarchar(100))
as
begin
update jio set NAME=@NAME,PHONENUMBER=@PHONENUMBER,ADDERS=@ADDERS,EMAIL=@EMAIL
where ID=@ID
end
exec updatesp 1 ,'Sibi',6573839222,'AKP','AKP@gmail.com'

create or alter procedure Deletesp(@ID int)
as
begin
Delete from jio where ID=@ID
end
exec Deletesp 4
