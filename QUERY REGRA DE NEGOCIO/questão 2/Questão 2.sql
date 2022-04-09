/*
Para cada m�s de 2020, solicitamos que seja exibido um top 5 dos usu�rios que
mais venderam ($) na categoria Celulares. Solicitamos o m�s e ano da an�lise,
nome e sobrenome do vendedor, quantidade de vendas realizadas, quantidade de
produtos vendidos e o total vendido;
*/

DECLARE @anoVenda INT
DECLARE @topUsuarios INT

--Vari�vel Ano Venda
Set @anoVenda = 2020
--Vari�vel Que defini o top de usu�rios por m�s
Set @topUsuarios = 5

select 
	*
from(
	select 
		*, rank() over (PARTITION BY mesVenda order by mesVenda,totalVendas desc) Posi��o_Mes
	from (
		Select
			month(datavenda) mesVenda,
			year(datavenda) anoVenda,
			nome,
			sobrenome,
			count(*) qteVendaRealizada,
			sum(qteItem) qteProdutosvendidos,
			sum(qteItem*valorItem) totalVendas
		From 
			Customer C right join [Order] O on C.idCustomer = O.idCustomerVendedor
		Where 
			year(dataVenda) = @anoVenda
			and dataFinalizada is not null
			and ehVendedor = 1
		Group By	
			month(datavenda),
			year(datavenda),
			nome,
			sobrenome
		) orders
	)rankeamento 
where 
	@topUsuarios <=5


