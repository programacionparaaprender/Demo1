
use SSIS
create table Demo(ID int identity, Categoria varchar(15), Monto float)
go
use SSIS
insert into Demo(Categoria, Monto)
values('BBB', 743.23), ('MMM', 456.23), ('UUU', 644.23), ('III', 743.23), ('QQQ', 743.23)
go
select *from Demo
go
sp_rename DemoDest, Demo
go

use SSIS;
--alter table FIFA add PieEsp varchar(10);
select PiePreferido from FIFA;

go

use SSIS;
select top 10 ID from FIFA where PieEsp is null;

go
use SSIS;
update FIFA 
set PieEsp = case when PiePreferido = 'Left' then 'Izquierdo'
else 'Derecho'
end
where ID = ?
go
use SSIS;
--create table Contadores (Contador int not null, Hora time);
--insert into Contadores(Contador, Hora) values (?, GETDATE())
go