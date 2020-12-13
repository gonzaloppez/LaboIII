use DBlaboIII
--Create view-- Vista de total de pedidos y el plato que se pidio junto con el precio total por cada plato -- se cambio el pxp.cantidad
go
create view total_PlatosPedido as -- select * from total_PlatosPedido
select pxp.id, pxp.NumPedido,pxp.NumeroMesa, pxp.Fecha,pxp.Estado, c.ID as IDCarta, c.Nombre, pxp.cantidad*ped.precioUnitario as total
from Platos_x_Pedido as pxp
inner join carta as c on c.ID = pxp.IDCarta
inner join Pedido as ped on ped.IDCarta = c.ID
group by  pxp.id, pxp.NumPedido,pxp.NumeroMesa, pxp.Fecha,pxp.Estado, c.ID, c.Nombre,pxp.cantidad*ped.precioUnitario
--------------------------------------------------------------------------------
--create procedure--Procedimiento para pasar IDCarta por parametro y saber cuanto se abono por cada plato en todos los pedidos ---Se cambio el SUM(total)
go
create procedure sp_totalPorPlatoXPedido(
	@IDPlato smallint
)
as
begin
	select distinct IDCarta, Nombre, sum(total) from total_Platos
	where IDCarta = @IDPlato
	group by IDCarta, Nombre
end
--Seleccionamos el ID de carta para saber 
--Ejemplo: exec sp_totalPorPlatoXPedido 16
-----------------------------------------------------------------------------
--exec procedure action -- Procedimiento para modificar plato
go
create procedure Agregar_Plato(
	@ID smallint,
	@Nombre varchar(50),
	@precio money,
	@IDTipo_Plato tinyint,
	@Descripcion varchar(100),
	@Calorias smallint
)
as
begin
	update Carta set Nombre=@Nombre, Precio=@Precio, IDTipo_Platos=@IDTipo_Plato, Descripcion=@Descripcion, Calorias=@Calorias
	where ID = @ID
end
select * from carta
--Ejemplo: exec Agregar_Plato 4,'Papas Bravisimas',380, 1,'Papas al roquefort', 180

