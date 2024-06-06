select * from student
go
create procedure studentsInsert
(@Name nvarchar(MAX),@DOB datetime2(7),@Age int,@Gender nvarchar(MAX),@Mobile bigint,@Email nvarchar(MAX),@Subject nvarchar(MAX))
as 
begin
insert into student values (@Name,@DOB,@Age,@Gender,@Mobile,@Email,@Subject)
end
exec studentsInsert 'Nithees','03/19/2003',21,'M',6379338211,'nitheesnithin19@gmail.com','Computer'
--update
go
create procedure updatestudents
( @StudentID int ,@Name nvarchar(MAX),@DOB datetime2(7),@Age int,@Gender nvarchar(MAX),@Mobile bigint,@Email nvarchar(MAX),@Subject nvarchar(MAX))
as 
begin
update student set Name=@Name,DOB=@DOB, Age=@Age,Gender=@Gender,@Mobile=@Mobile,Email=@Email,Subject=@Subject where StudentID=@StudentID
end
exec updatestudents  27 ,'Nithees','03/19/2003',21,'M',6379338211,'nitheesnithin@gmail.com','Computer'


--Delete
go
Create procedure Deletesp(@StudentID int)
as
begin
Delete from  student where StudentID=@StudentID
end
exec Deletesp 3
select IDENT_CURRENT('student') as 'lastInsertedid'