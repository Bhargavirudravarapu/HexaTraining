use assignment

-- 1) printing
declare @msg varchar(100)
set @msg = 'Welcome to SQL server'
print @msg

-- 2)

use hexa_frst

select * from empl
declare @empid int
create proc emplproc(@deptid int)
as
begin
select name,sal,gender from empl
where @empid<=empid
order by empid
end

 emplproc 21

 emplproc  24


 /*create proc emplproc(@deptid int, @gender varchar(20))
as
begin
select name,sal,gender from empl
where empid<=@empid
order by empid
end */


drop proc findempbymod

-- 4)
create proc findempbymod(
--@empid int,
@gender varchar(50),
@emplcount int output
)
as 
begin 
select name,gender,sal from empl
--where @empid=empid
where gender = @gender
select @emplcount = @@ROWCOUNT
end

declare @countempl int
--exec findempbymod @empid=21,@emplcount=@countempl output
exec findempbymod @gender='female',@emplcount=@countempl output
select @countempl as 'total employee count'

-- 3)

select * from empl
set nocount on
declare @employeecount int
set @employeecount = (select count(*) from empl)
select @employeecount
print @employeecount

declare @sal int,@name varchar(max),@gen varchar(max)
select @sal = sal,@name = name, @gen = gender from empl
where empid=23

select @sal as sal,@name as name, @gen as gender

select * from empl


-- 5)

declare @num1 int
declare @num2 int
declare @num3 int
--set @num1 = 10
--set @num2 = 20
--set @num3 = 30
declare @res int
set @res = @num1+@num2+@num3
if @num1 is null and @num2 is null and @num3 is null
	print 'default'
	else
	print @res
go

