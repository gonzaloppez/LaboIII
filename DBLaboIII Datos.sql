use DBlaboIII
Go
--Ingreso empleados-- select * from empleados
insert into Empleados (Legajo, Nombre, Apellido, DNI, Telefono, mail) values (1000, 'Gonzalo', 'Lopez', '36887980', '1134500808','gonza@gmail')
insert into Empleados (Legajo, Nombre, Apellido, DNI, Telefono, mail) values (1001, 'Agustin', 'Chaparro', '33225466', '1134997808','Agustin@gmail')
insert into Empleados (Legajo, Nombre, Apellido, DNI, Telefono, mail) values (1002, 'Alejandro', 'Bedgud', '90556989', '1135400408','ale.b@gmail')
insert into Empleados (Legajo, Nombre, Apellido, DNI, Telefono, mail) values (1003, 'Daniela', 'Perez', '115356589', '1132621000','DaniPerez@gmail')
insert into Empleados (Legajo, Nombre, Apellido, DNI, Telefono, mail) values (1004, 'Mariano', 'Soriano', '25689898', '1108002333','Soriano_Marian@gmail')
insert into Empleados (Legajo, Nombre, Apellido, DNI, Telefono, mail) values (1005, 'Roberto', 'Lambert', '357896213', '1123330000','LabertRomer@gmail')
insert into Empleados (Legajo, Nombre, Apellido, DNI, Telefono, mail) values (1006, 'Juliano', 'Romano', '21021011', '1136548989','RomeroJulian@gmail')
insert into Empleados (Legajo, Nombre, Apellido, DNI, Telefono, mail) values (1007, 'Florencia', 'Cabrera', '268712369', '1110112598','CabreFlor@gmail')
insert into Empleados (Legajo, Nombre, Apellido, DNI, Telefono, mail) values (1008, 'Daiana', 'Cabrera', '359898756', '45685988','Cabrera.d@gmail')
insert into Empleados (Legajo, Nombre, Apellido, DNI, Telefono, mail) values (1009, 'Melina', 'Doyenart', '32662599', '47094132','MDoyen@gmail')
Go
--Ingreso Perfil empleado select * from Perfilempleado--
insert into PerfilEmpleado(Nombre) values ('Administrador')
insert into PerfilEmpleado(Nombre) values ('Cocina')
insert into PerfilEmpleado(Nombre) values ('Mozo')
insert into PerfilEmpleado(Nombre) values ('Caja')
go
--Ingreso Usuarios-- select * from usuario
Insert Into Usuario (ID, LegajoEmpleado, IDPerfil,NombreUsuario,contraseņa) values (1,1000,1,'gonzalopez',ENCRYPTBYPASSPHRASE('pass','Gonza'))
Insert Into Usuario (ID, LegajoEmpleado, IDPerfil,NombreUsuario,contraseņa) values (2,1001,1,'agusChaparro',ENCRYPTBYPASSPHRASE('pass','Agus'))
Insert Into Usuario (ID, LegajoEmpleado, IDPerfil,NombreUsuario,contraseņa) values (3,1002,2,'abegud',ENCRYPTBYPASSPHRASE('pass','Abegud2020'))
Insert Into Usuario (ID, LegajoEmpleado, IDPerfil,NombreUsuario,contraseņa) values (4,1003,3,'dperez',ENCRYPTBYPASSPHRASE('pass','DperezPiola'))
Insert Into Usuario (ID, LegajoEmpleado, IDPerfil,NombreUsuario,contraseņa) values (5,1004,4,'msoriano',ENCRYPTBYPASSPHRASE('pass','Msoriano_atlanta'))
Insert Into Usuario (ID, LegajoEmpleado, IDPerfil,NombreUsuario,contraseņa) values (6,1005,3,'rlambert',ENCRYPTBYPASSPHRASE('pass','Vikingo290'))
Insert Into Usuario (ID, LegajoEmpleado, IDPerfil,NombreUsuario,contraseņa) values (7,1006,2,'jromano',ENCRYPTBYPASSPHRASE('pass','jRoMaN10_boca'))
Insert Into Usuario (ID, LegajoEmpleado, IDPerfil,NombreUsuario,contraseņa) values (8,1007,2,'fcabrera',ENCRYPTBYPASSPHRASE('pass','LaFlor_20'))
Insert Into Usuario (ID, LegajoEmpleado, IDPerfil,NombreUsuario,contraseņa) values (9,1008,4,'dcabrera',ENCRYPTBYPASSPHRASE('pass','DaiaNa1999'))
Insert Into Usuario (ID, LegajoEmpleado, IDPerfil,NombreUsuario,contraseņa) values (10,1009,3,'mdoyenart',ENCRYPTBYPASSPHRASE('pass','doyenMel1929'))
go
--IngresoTipo_Platos select * from Tipo_Platos
Insert into Tipo_Platos (Nombre) Values ('Entrada')
Insert into Tipo_Platos (Nombre) Values ('Plato Principal')
Insert into Tipo_Platos (Nombre) Values ('Guarnicion')
Insert into Tipo_Platos (Nombre) Values ('Postre')
Insert into Tipo_Platos (Nombre) Values ('Bebida')
go
--Ingreso Carta-- select * from carta select * from pedido
Insert into Carta (Nombre,Precio,IDTipo_Platos,Descripcion) values ('Picada para 2',560,1,'Queso Fontina, Salame picado fino, Aceitunas, Jamon cocido y Jamon Crudo')
Insert into Carta (Nombre,Precio,IDTipo_Platos,calorias) values ('Chicken Fingers',260,1,300)
Insert into Carta (Nombre,Precio,IDTipo_Platos,Descripcion,calorias) values ('Rabas',620,1,'Rabas de pescado rebozadas',120)
Insert into Carta (Nombre,Precio,IDTipo_Platos,Descripcion) values ('Papas Bravas',320,1,'Papas al roquefort con salsa especial')
Insert into Carta (Nombre,Precio,IDTipo_Platos,Descripcion,calorias) values ('Milanesa',390,2,'Carne de Ternera',180)
Insert into Carta (Nombre,Precio,IDTipo_Platos,Descripcion) values ('Milanesa a la napolitana',420,2,'Milanesa con queso y salsa roja')
Insert into Carta (Nombre,Precio,IDTipo_Platos,Descripcion,calorias) values ('Suprema a la suiza',330,2,'Suprema con salsa blanca',250)
Insert into Carta (Nombre,Precio,IDTipo_Platos,Descripcion) values ('Vacio de novillo',560,2,'Vacio a la parrilla')
Insert into Carta (Nombre,Precio,IDTipo_Platos,Descripcion,calorias) values ('Asado',500,2,'Tira de asado a la parrilla',180)
Insert into Carta (Nombre,Precio,IDTipo_Platos) values ('Mollejas',490,2)
Insert into Carta (Nombre,Precio,IDTipo_Platos,Descripcion,calorias) values ('Flan',120,4,'Con crema o dulce de leche',270)
Insert into Carta (Nombre,Precio,IDTipo_Platos,Descripcion,calorias) values ('Queso y Dulce',90,4,'Queso fresco y dulce de batata o membrillo',250)
Insert into Carta (Nombre,Precio,IDTipo_Platos,Descripcion) values ('Panqueque',70,4,'Con dulce de leche')
Insert into Carta (Nombre,Precio,IDTipo_Platos,Descripcion) values ('Frutillas',180,4,'Con crema')
Insert into Carta (Nombre,Precio,IDTipo_Platos,Descripcion,calorias) values ('Peras',60,4,'Peras al vino',100)
Insert into Carta (Nombre,Precio,IDTipo_Platos,Descripcion) values ('Coca Cola',100,5,'500CC')
Insert into Carta (Nombre,Precio,IDTipo_Platos,Descripcion) values ('Sprite CERO',95,5,'500CC')
Insert into Carta (Nombre,Precio,IDTipo_Platos,Descripcion,calorias) values ('Fanta',98,5,'500CC',60)
Insert into Carta (Nombre,Precio,IDTipo_Platos,Descripcion,calorias) values ('Cerveza',220,5,'500CC',110)
Insert into Carta (Nombre,Precio,IDTipo_Platos,calorias) values ('Pure de papas',180,3,120)
Insert into Carta (Nombre,Precio,IDTipo_Platos) values ('Papas fritas',220,3)
Insert into Carta (Nombre,Precio,IDTipo_Platos,calorias) values ('Pure de batata',150,3,120)
Insert into Carta (Nombre,Precio,IDTipo_Platos) values ('Arroz',90,3)
Insert into Carta (Nombre,Precio,IDTipo_Platos) values ('Batata frita',150,3)
go
--Ingreso Pedido-- select * from platos_x_pedido
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (1,1,1,4,1,'01/01/2020','21:30',1)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (1,6,1,4,1,'01/01/2020','21:30',1)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (1,8,1,4,1,'01/01/2020','21:30',1)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (1,11,1,4,1,'01/01/2020','21:30',1)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (1,18,1,4,1,'01/01/2020','21:30',1)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (1,17,1,4,1,'01/01/2020','21:30',1)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (2,5,1,6,10,'01/01/2020','22:30',1)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (2,6,1,6,10,'01/01/2020','22:30',1)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (2,16,1,6,10,'01/01/2020','22:30',1)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (3,10,1,6,8,'01/01/2020','22:00',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (3,9,1,6,8,'01/01/2020','22:00',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (3,8,1,6,8,'01/01/2020','22:00',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (3,17,1,6,8,'01/01/2020','22:00',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (4,1,1,10,7,'05/01/2020','20:00',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (4,3,1,10,7,'05/01/2020','20:00',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (4,2,1,10,7,'05/01/2020','20:00',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (4,6,1,10,7,'05/01/2020','20:00',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (4,8,1,10,7,'05/01/2020','20:00',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (4,21,1,10,7,'05/01/2020','20:00',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (4,20,1,10,7,'05/01/2020','20:00',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (4,19,2,10,7,'05/01/2020','20:00',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (5,4,1,4,3,'05/01/2020','21:00',1)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (5,7,1,4,3,'05/01/2020','21:00',1)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (5,17,1,4,3,'05/01/2020','21:00',1)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (6,8,1,6,2,'04/05/2020','22:30',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (6,15,1,6,2,'04/05/2020','22:30',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (6,16,1,6,2,'04/05/2020','22:30',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (7,1,1,4,4,'06/05/2020','20:30',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (7,2,1,4,4,'06/05/2020','20:30',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (7,9,1,4,4,'06/05/2020','20:30',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (7,7,1,4,4,'06/05/2020','20:30',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (7,16,1,4,4,'06/05/2020','20:30',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (7,17,1,4,4,'06/05/2020','20:30',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (8,1,1,4,4,'09/09/2020','20:30',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (8,1,1,4,4,'09/09/2020','20:30',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (8,9,2,4,4,'09/09/2020','20:30',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (8,16,1,4,4,'09/09/2020','20:30',0)
Insert into Platos_X_Pedido (numPedido,IDCarta, cantidad, IDEmpleado,NumeroMesa,Fecha,hora,Estado) values (8,17,1,4,4,'09/09/2020','20:30',0)


go
--Ingreso Comanda--select * from Pedido
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (1,1,1,560)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (1,6,1,420)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (1,8,1,560)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (1,11,1,120)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (1,18,1,98)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (1,17,1,95)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (2,5,1,390)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (2,6,1,420)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (2,16,1,100)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (3,10,1,490)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (3,9,1,500)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (3,8,1,560)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (3,17,1,95)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (4,1,1,560)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (4,3,1,620)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (4,2,1,260)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (4,6,1,420)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (4,8,1,560)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (4,21,1,220)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (4,20,1,180)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (4,19,2,220)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (5,4,1,320)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (5,7,1,330)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (5,17,1,95)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (6,8,1,560)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (6,15,1,60)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (6,16,1,100)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (7,1,1,560)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (7,2,1,260)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (7,9,1,500)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (7,7,1,330)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (7,16,1,100)
Insert Into Pedido (NumPedido,IDCarta,cantidad,precioUnitario) values (7,17,1,95)

