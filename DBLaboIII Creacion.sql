create database DBlaboIII
go
use DBlaboIII
go
Create Table Empleados (
	ID smallint not null primary key identity (1,1),
	Legajo smallint not null unique,
	Nombre varchar(100) not null,
	Apellido varchar(50) not null,
	DNI varchar(20) not null unique,
	Telefono varchar(20) not null,
	mail varchar(100) not null unique,
)
GO
Create table PerfilEmpleado (
	ID tinyint not null primary key identity(1,1),
	Nombre varchar(50) not null
)
GO
Create table Usuario(
	ID smallint not null primary key,
	LegajoEmpleado smallint foreign key references Empleados(Legajo),
	IDPerfil tinyint foreign key references PerfilEmpleado(ID),
	NombreUsuario varchar(50) not null unique,
	contraseña VARBINARY(8000) not null
 )
 go
 create table Tipo_Platos(
	ID tinyint not null primary key identity(1,1),
	Nombre varchar(50),
 )
 go
 Create table Carta(
	ID smallint not null primary key identity(1,1),
	Nombre varchar(50) not null,
	Precio money not null,
	IDTipo_Platos tinyint foreign key references Tipo_Platos(ID),
	Descripcion varchar(100) null,
	calorias smallint null,
)
go
create table Platos_x_Pedido(
	ID bigint not null primary key identity(1,1),
	NumPedido bigint not null,
	IDCarta smallint foreign key references Carta(ID),
	Cantidad tinyint not null,
	IDEmpleado smallint foreign key references Empleados(ID),
	NumeroMesa smallint not null,
	Fecha date not null,
	hora date not null,
	Estado bit not null, 
)
go
Create table Pedido(
		ID bigint not null primary key identity(1,1),
		NumPedido bigint not null,
		IDCarta smallint foreign key references Carta(ID),
		cantidad tinyint not null,
		precioUnitario money not null,
	)
go
alter table Usuario 
add constraint FK_Empleados foreign key (ID) references Empleados (ID)
go
alter table Carta
add constraint CHK_PrecioPositivo Check (precio>0)
go
alter table Platos_x_Pedido
add constraint CHK_MesaPositivo check (NumeroMesa > 0)
go
alter table Pedido
add constraint CHK_CantPos check (cantidad > 0)
go
alter table Pedido
add constraint CHK_PrecioPos check (PrecioUnitario > 0)
go
alter table PerfilEmpleado
add constraint CHK_NombrePerfil check(Nombre = 'Administrador' or Nombre = 'Mozo' or Nombre = 'Cocina' )
go
alter table perfilEmpleado
drop constraint CHK_NombrePerfil 
go
alter table PerfilEmpleado
add constraint CHK_NombrePerfil check(Nombre = 'Administrador' or Nombre = 'Mozo' or Nombre = 'Cocina' or Nombre = 'Caja' )
go
alter table Platos_x_Pedido
drop column Hora
go
alter table Platos_x_Pedido
add hora time not null
