/*
Listar os usu�rios que fazem anivers�rio no dia de hoje e que a quantidade de
vendas realizadas em Janeiro/2020 sejam superiores a 1500;
*/

DECLARE @diaAtual INT
DECLARE @mesAtual INT

--Vari�vel Mes atual
Set @mesAtual = MONTH(GETDATE())
--Vari�vel dia Atual
Set @diaAtual = DAY(GETDATE())

Select 
	C.nome,
	C.sobrenome,
	qteItem*valorItem ValorVendido,
	year(getdate())-year(dtNascimento) idade
From 
	Customer C left join [Order] O on C.idCustomer = O.idCustomerVendedor
Where 
	day(dtNascimento) = @diaAtual 
	and MONTH(dtNascimento) = @mesAtual
	and (qteItem*valorItem) > 1500
	and year(dataVenda)= 2020
	and month(datavenda) = 1
	and dataFinalizada is not null
	and ehVendedor = 1