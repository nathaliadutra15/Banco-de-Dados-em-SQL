CREATE DATABASE BD_Loja1
USE BD_Loja1

CREATE TABLE TB_Cliente(
idClienteTB_Cliente INT NOT NULL,
nomeTB_Cliente VARCHAR (255) NOT NULL,
telefoneTB_Cliente VARCHAR (255) NOT NULL,
datadenascTB_Cliente DATE NOT NULL,
idadeTB_Cliente INT NOT NULL,
cpfTB_Cliente BIGINT NOT NULL,
enderecoTB_Cliente VARCHAR (255) NOT NULL,
ufTB_Cliente CHAR (2) NOT NULL,
CONSTRAINT PKidClienteTB_Cliente PRIMARY KEY (idClienteTB_Cliente)
)
CREATE TABLE TB_Fornecedor(
idFornecedorTB_Fornecedor INT NOT NULL,
empresaTB_Fornecedor VARCHAR (255) NOT NULL,
cnpjTB_Fornecedor BIGINT NOT NULL,
enderecoTB_Fornecedor VARCHAR (255) NOT NULL,
telefoneTB_Fornecedor VARCHAR (255) NOT NULL,
emailTB_Fornecedor VARCHAR (255) NOT NULL,
CONSTRAINT PKidFornecedorTB_Fornecedor PRIMARY KEY (idFornecedorTB_Fornecedor)
)
CREATE TABLE TB_Produtos(
idProdutosTB_Produtos INT NOT NULL,
nomeTB_Produtos VARCHAR (255) NOT NULL,
quantidadeTB_Produtos INT NOT NULL,
idFornecedorTB_Produtos INT NOT NULL,
CONSTRAINT PKidProdutosTB_Produtos PRIMARY KEY (idProdutosTB_Produtos),
CONSTRAINT FKidFornecedorTB_Produtos FOREIGN KEY (idFornecedorTB_Produtos) REFERENCES TB_Fornecedor (idFornecedorTB_Fornecedor)
)

CREATE TABLE TB_Vendas(
idVendasTB_Vendas INT NOT NULL,
idClienteTB_Vendas INT NOT NULL,
idProdutosTB_Vendas INT NOT NULL,
quantidadeTB_Vendas INT NOT NULL,
CONSTRAINT PKidVendasTB_Vendas PRIMARY KEY (idVendasTB_Vendas),
CONSTRAINT FKidClienteTB_Vendas FOREIGN KEY (idClienteTB_Vendas) REFERENCES TB_Cliente (idClienteTB_Cliente),
CONSTRAINT FKidProdutosTB_Vendas FOREIGN KEY (idProdutosTB_Vendas) REFERENCES TB_Produtos (idProdutosTB_Produtos),
)


SELECT * FROM TB_Cliente
INSERT INTO TB_Cliente (idClienteTB_Cliente, nomeTB_Cliente, telefoneTB_Cliente, datadenascTB_Cliente, idadeTB_Cliente, cpfTB_Cliente, enderecoTB_Cliente, ufTB_Cliente)
VALUES (1, 'Marcelo', '4511-5598', '1980-04-25', 39, 36944575982, 'Rua Matriz 60', 'SP')
INSERT INTO TB_Cliente (idClienteTB_Cliente, nomeTB_Cliente, telefoneTB_Cliente, datadenascTB_Cliente, idadeTB_Cliente, cpfTB_Cliente, enderecoTB_Cliente, ufTB_Cliente)
VALUES (2, 'Fátima', '4511-9988', '1990-02-23', 29, 34566312354, 'Rua Florinda 200', 'MG')
INSERT INTO TB_Cliente (idClienteTB_Cliente, nomeTB_Cliente, telefoneTB_Cliente, datadenascTB_Cliente, idadeTB_Cliente, cpfTB_Cliente, enderecoTB_Cliente, ufTB_Cliente)
VALUES (3, 'Lucas', '4511-0203', '2000-04-04', 19, 35523614725, 'Rua Bela 894', 'GO')
INSERT INTO TB_Cliente (idClienteTB_Cliente, nomeTB_Cliente, telefoneTB_Cliente, datadenascTB_Cliente, idadeTB_Cliente, cpfTB_Cliente, enderecoTB_Cliente, ufTB_Cliente)
VALUES (4, 'Alice', '4511-4436', '1999-08-06', 20, 37688945621, 'Rua Manoel da Luz 78', 'MG')
INSERT INTO TB_Cliente (idClienteTB_Cliente, nomeTB_Cliente, telefoneTB_Cliente, datadenascTB_Cliente, idadeTB_Cliente, cpfTB_Cliente, enderecoTB_Cliente, ufTB_Cliente)
VALUES (5, 'Raquel', '4511-7964', '1980-07-15', 39, 34756418924, 'Rua Alemanha 12', 'GO')
INSERT INTO TB_Cliente (idClienteTB_Cliente, nomeTB_Cliente, telefoneTB_Cliente, datadenascTB_Cliente, idadeTB_Cliente, cpfTB_Cliente, enderecoTB_Cliente, ufTB_Cliente)
VALUES (6, 'Ana', '4511-7964', '1980-07-15', 15, 34756418924, 'Rua Alemanha 12', 'GO')
INSERT INTO TB_Cliente (idClienteTB_Cliente, nomeTB_Cliente, telefoneTB_Cliente, datadenascTB_Cliente, idadeTB_Cliente, cpfTB_Cliente, enderecoTB_Cliente, ufTB_Cliente)
VALUES (33, 'João', '4511-7964', '1980-07-15', 15, 34756418924, 'Rua Alemanha 12', 'GO')
INSERT INTO TB_Cliente (idClienteTB_Cliente, nomeTB_Cliente, telefoneTB_Cliente, datadenascTB_Cliente, idadeTB_Cliente, cpfTB_Cliente, enderecoTB_Cliente, ufTB_Cliente)
VALUES (7, 'Douglas', '4511-7964', '1980-07-15', 15, 34756418924, 'Rua Alemanha 12', 'SC')

SELECT * FROM TB_Cliente


SELECT * FROM TB_Fornecedor
INSERT INTO TB_Fornecedor (idFornecedorTB_Fornecedor, empresaTB_Fornecedor, cnpjTB_Fornecedor, enderecoTB_Fornecedor, telefoneTB_Fornecedor, emailTB_Fornecedor)
VALUES (1, 'Paraiso LTDA', 00378257000181, 'Rua das Amazonas 1500', '3420-4585', 'paraiso@paraiso.com.br')
INSERT INTO TB_Fornecedor (idFornecedorTB_Fornecedor, empresaTB_Fornecedor, cnpjTB_Fornecedor, enderecoTB_Fornecedor, telefoneTB_Fornecedor, emailTB_Fornecedor)
VALUES (2, 'Galindo LTDA', 00450347000192, 'Rua Palmeiras 350', '3425-7898', 'galindo@galindo.com.br')
INSERT INTO TB_Fornecedor (idFornecedorTB_Fornecedor, empresaTB_Fornecedor, cnpjTB_Fornecedor, enderecoTB_Fornecedor, telefoneTB_Fornecedor, emailTB_Fornecedor)
VALUES (3, 'Salveiro LTDA', 00555098000112, 'Rua Perdizes 480', '3411-2428', 'salveiro@salveiro.com.br')
INSERT INTO TB_Fornecedor (idFornecedorTB_Fornecedor, empresaTB_Fornecedor, cnpjTB_Fornecedor, enderecoTB_Fornecedor, telefoneTB_Fornecedor, emailTB_Fornecedor)
VALUES (4, 'Matriz LTDA', 00345258000120, 'Rua dos Perdidos 100', '3428-7898', 'matriz@matriz.com.br')
INSERT INTO TB_Fornecedor (idFornecedorTB_Fornecedor, empresaTB_Fornecedor, cnpjTB_Fornecedor, enderecoTB_Fornecedor, telefoneTB_Fornecedor, emailTB_Fornecedor)
VALUES (5, 'Ventania LTDA', 00478111000111, 'Rua Ventinho 367', '3466-2222', 'ventania@ventania.com.br')
INSERT INTO TB_Fornecedor (idFornecedorTB_Fornecedor, empresaTB_Fornecedor, cnpjTB_Fornecedor, enderecoTB_Fornecedor, telefoneTB_Fornecedor, emailTB_Fornecedor)
VALUES (6, 'DougPharma LTDA', 00478111000111, 'Rua Ventinho 367', '8799-5478', 'doug@dougfarma.com.br')

SELECT * FROM TB_Fornecedor


SELECT * FROM TB_Produtos
INSERT INTO TB_Produtos (idProdutosTB_Produtos, nomeTB_Produtos, quantidadeTB_Produtos, idFornecedorTB_Produtos)
VALUES (1, 'Game Mortal Kombat 11 Br - PS4',4,1)
INSERT INTO TB_Produtos (idProdutosTB_Produtos, nomeTB_Produtos, quantidadeTB_Produtos, idFornecedorTB_Produtos)
VALUES (2, 'Game Marvels Spider-Man - PS4',2,2)
INSERT INTO TB_Produtos (idProdutosTB_Produtos, nomeTB_Produtos, quantidadeTB_Produtos, idFornecedorTB_Produtos)
VALUES (3, 'Console Playstation 4 Slim 1TB Hits Bundle 5 + Controle Dualchock 4 - PS4',5,3)
INSERT INTO TB_Produtos (idProdutosTB_Produtos, nomeTB_Produtos, quantidadeTB_Produtos, idFornecedorTB_Produtos)
VALUES (4, 'Controle sem Fio PS4 Dualshock Vermelho - Sony',2,4)
INSERT INTO TB_Produtos (idProdutosTB_Produtos, nomeTB_Produtos, quantidadeTB_Produtos, idFornecedorTB_Produtos)
VALUES (5, 'Game God Of War - PS4',4,5)

SELECT * FROM TB_Produtos


SELECT * FROM TB_Vendas
INSERT INTO TB_Vendas (idVendasTB_Vendas, idClienteTB_Vendas, idProdutosTB_Vendas, quantidadeTB_Vendas)
VALUES (1,1,1,4)
INSERT INTO TB_Vendas (idVendasTB_Vendas, idClienteTB_Vendas, idProdutosTB_Vendas, quantidadeTB_Vendas)
VALUES (2,2,2,3)
INSERT INTO TB_Vendas (idVendasTB_Vendas, idClienteTB_Vendas, idProdutosTB_Vendas, quantidadeTB_Vendas)
VALUES (3,3,3,5)
INSERT INTO TB_Vendas (idVendasTB_Vendas, idClienteTB_Vendas, idProdutosTB_Vendas, quantidadeTB_Vendas)
VALUES (4,4,4,1)
INSERT INTO TB_Vendas (idVendasTB_Vendas, idClienteTB_Vendas, idProdutosTB_Vendas, quantidadeTB_Vendas)
VALUES (5,5,5,3)
INSERT INTO TB_Vendas (idVendasTB_Vendas, idClienteTB_Vendas, idProdutosTB_Vendas, quantidadeTB_Vendas)
VALUES (6,5,5,15)

SELECT * FROM TB_Vendas


SELECT nomeTB_Cliente, datadenascTB_Cliente, enderecoTB_Cliente FROM TB_Cliente WHERE ufTB_Cliente ='GO'

SELECT nomeTB_Cliente, ufTB_Cliente FROM TB_Cliente WHERE nomeTB_Cliente < 'Bruno'

SELECT nomeTB_Cliente, telefoneTB_Cliente, enderecoTB_Cliente FROM TB_Cliente WHERE idadeTB_Cliente > 30

SELECT * FROM TB_Cliente WHERE idadeTB_Cliente < 18

SELECT * FROM TB_Cliente WHERE idClienteTB_Cliente > 4

SELECT * FROM TB_Cliente WHERE nomeTB_Cliente <= 'D'

SELECT nomeTB_Cliente, ufTB_Cliente FROM TB_Cliente WHERE nomeTB_Cliente <> 'F'

SELECT * FROM TB_Cliente WHERE idClienteTB_Cliente = 33

SELECT * FROM TB_Cliente WHERE ufTB_Cliente ='SC'

SELECT datadenascTB_Cliente, ufTB_Cliente, nomeTB_Cliente 
FROM TB_Cliente 
WHERE nomeTB_Cliente != 'A'




SELECT * FROM TB_Vendas WHERE QuantidadeTB_Vendas BETWEEN '10' AND '19'

SELECT NomeTB_Produtos,QuantidadeTB_Produtos FROM TB_Produtos WHERE QuantidadeTB_Produtos BETWEEN '1' AND '3'

SELECT * FROM TB_Produtos WHERE QuantidadeTB_Produtos NOT BETWEEN '5' AND '10'

SELECT * FROM TB_Vendas WHERE quantidadeTB_Vendas NOT BETWEEN '1' AND '3' 

SELECT * FROM TB_Cliente WHERE datadenascTB_Cliente BETWEEN '1980-01-01' AND '1989-12-31'

SELECT * FROM TB_Fornecedor WHERE idFornecedorTB_Fornecedor NOT BETWEEN '3' AND '5'


SELECT * FROM  TB_Cliente WHERE idClienteTB_Cliente BETWEEN '2' AND '4'


SELECT * FROM TB_Cliente WHERE datadenascTB_Cliente  BETWEEN '1990-01-01' AND '1999-12-31'

SELECT * FROM TB_Fornecedor, TB_Produtos, TB_Cliente, TB_Vendas
