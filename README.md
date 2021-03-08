#### PLSQL 1  FIAP programanção em banco de Dados NANO CURSO

Este curso tem um conteúdo introdutório onde veremos estruturas básicas como:

- constantes e variáveis
- estruturas de controle
- tratamentos de exceção
- Cursores
- Procedimentos
-  Funções    	   	   
- Pacotes    	   	   
- Coleções    	   	   
- Triggers    	   	   
- Objetos do Banco de Dados
- Interação do SQL com o PL/SQL

Iremos trabalhar com o controle transacional usando os comandos COMMIT, ROLLBACK e SAVEPOINT.  Em nossos exemplos, iremos usar duas tabelas  para teste e treinamento. As tabelas são empregado (com 3 colunas e uma chave primária), tabela DEPARTAMENTO (com 8 colunas, uma chave estrangeira e uma chave primaria).  

##### Tabela departamento

CREATE TABLE departamento(
  codigodept     NUMBER(2,0), 
  nomedept       VARCHAR2(14),
  localizadept   VARCHAR2(13),
  CONSTRAINT pk_departamento PRIMARY KEY (codigodept)
);

##### Tabela  empregado

CREATE TABLE empregado(
  codempregado     NUMBER(4,0),
  nomeempregado    VARCHAR2(10),
  cargoempregado   VARCHAR2(9),
  codgerente       NUMBER(4,0),
  dcontratacao     DATE,
  salario          NUMBER(7,2),
  comissao         NUMBER(7,2),
  codigodept       NUMBER(2,0),
  CONSTRAINT pk_empregado PRIMARY KEY (codempregado),
  CONSTRAINT fk_codigodept FOREIGN KEY(codigodept) REFERENCES departamento (codigodept)
  ); 
  
#####PLSQL-1-Estruturas-Blocos-e-Variaveis
