/*Diversas ferramentas podem executar este script como JOB automatizado utilZzando Talend, SSIS, Pentaho etc.. mas com foi solicitado 
StoreProcedure foi utilizado SQLServerAgent*/

/*Solicitamos popular uma nova tabela com o preço e estado dos itens no final do dia.
Considerar que esse processo deve permitir um reprocesso. Vale ressaltar que na
tabela de item, vamos ter unicamente o último estado informado pela PK definida
(esse item pode ser resolvido através de uma store procedure).*/


/*Script para ser executada na tabela item para tabela itemHistorico que sera utilizada para armazenar o estado do dia dos item dia a dia. */
insert into itemHistorico 
	  (dataAtualizacao,idItem, idCategory,itemAtivo, nomeItem, descricaoItem,valorItem)
	  (select GETDATE(),idItem,idCategory,itemAtivo,nomeItem,descriçãoItem,valorItem from Item)
	  