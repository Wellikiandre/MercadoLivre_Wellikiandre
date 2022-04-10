/*
Listar os usuários que fazem aniversário no dia de hoje e que a quantidade de
vendas realizadas em Janeiro/2020 sejam superiores a 1500;
*/

DECLARE @diaAtual INT
DECLARE @mesAtual INT

--Variável Mes atual
Set @mesAtual = MONTH(GETDATE())
--Variável dia Atual
Set @diaAtual = DAY(GETDATE())

select * from (
	Select 
		C.nome,
		C.sobrenome,
		sum(qteItem*valorItem) ValorVendido,
		year(getdate())-year(dtNascimento) idade
	From 
		Customer C left join [Order] O on C.idCustomer = O.idCustomerVendedor
	Where 
		day(dtNascimento) = @diaAtual 
		and MONTH(dtNascimento) = @mesAtual
		and year(dataVenda)= 2020
		and month(datavenda) = 1
		and dataFinalizada is not null
		and ehVendedor = 1
	group by
		nome,
		sobrenome,
		year(getdate())-year(dtNascimento)
) tbl where ValorVendido >= 1500
	

