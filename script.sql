--Criando a tabela
create table Produtos
(
	id_produto int primary key not null,
	nome_produto varchar (200) not null,
	valor_custo numeric(10,2) not null,
	valor_venda numeric(10,2) not null,
);

--Exerc�cio 1
insert into Produtos
(id_produto, nome_produto, valor_custo, valor_venda ) values
(1, 'Smartphone', 200, 400);

--Adicionando os produtos
insert into Produtos
(id_produto, nome_produto, valor_custo, valor_venda ) values
(2, 'Caf�', 4.50, 10),
(3, 'Leite', 2.50, 7),
(4, 'Suco', 3.50, 3),
(5, 'Chocolate', 4, 10),
(6, 'P�o', 5, 12),
(7, 'Bolo', 4, 10),
(8, 'Salgado', 3.50, 8),
(9, 'P�o de Queijo', 3, 2.50),
(10, 'Brownie', 3, 8);

--Exerc�cio 2
update Produtos
set valor_venda = 15
where nome_produto = 'Caf�';

--Exerc�cio 3
select top 5 nome_produto, valor_venda
	from Produtos P
	order by p.valor_venda desc; 

--Exerc�cio 4
delete from Produtos
	where valor_custo > valor_venda;