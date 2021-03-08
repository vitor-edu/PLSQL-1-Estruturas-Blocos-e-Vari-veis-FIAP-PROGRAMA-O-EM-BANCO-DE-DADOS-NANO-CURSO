-- para garantir que as tabelas que iremos criar não existam em seu ambiente
DROP TABLE departamento PURGE;

-- Criando a tabela departamento 

CREATE TABLE departamento(
  codigodept     NUMBER(2,0), 
  nomedept       VARCHAR2(14),
  localizadept   VARCHAR2(13),
  CONSTRAINT pk_departamento PRIMARY KEY (codigodept)
); 

-- inserindo valores na tabela departamento 

   INSERT INTO departamento VALUES (10,'RH','NEW YORK'); 
   INSERT INTO departamento VALUES (20,'FISCAL', 'DALAS'); 
   INSERT INTO departamento VALUES (30,'VENDAS', 'CHICAGO'); 
   INSERT INTO departamento VALUES (40,'OPERACAO', 'BOSTON');
   
   
-- criando tabela empregado

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
  
-- inserindo valores na tabela empregado

INSERT INTO empregado VALUES (7369, 'VITOR',   'ESCRI',     7902, TO_DATE('17-DEZ-1980', 'DD-MON-YYYY'), 800, NULL, 20); 
INSERT INTO empregado VALUES (7499, 'MARIZA', 'VENDEDORA',  7698, TO_DATE('20-FEV-1981', 'DD-MON-YYYY'), 1600, 300, 30);
INSERT INTO empregado VALUES (7521, 'EDUARDO','VENDEDOR',   7698, TO_DATE('22-FEV-1981', 'DD-MON-YYYY'), 1250, 500, 30);     
INSERT INTO empregado VALUES (7566, 'JOAO',    'GERENTE',   7699, TO_DATE('2-ABR-1982', 'DD-MON-YYYY'), 3000, 700, 10); 
INSERT INTO empregado VALUES (7370, 'VITORIA', 'ESCRI',     7902, TO_DATE('17-DEZ-1980', 'DD-MON-YYYY'), 800, NULL, 20);  
INSERT INTO empregado VALUES (7471, 'MARIA',   'VENDEDORA', 7698, TO_DATE('20-FEV-1981', 'DD-MON-YYYY'), 1600, 300, 30);
INSERT INTO empregado VALUES (7511, 'ROGERIO', 'VENDEDOR',  7698, TO_DATE('22-FEV-1981', 'DD-MON-YYYY'), 1250, 500, 30);     
INSERT INTO empregado VALUES (7719, 'VANUSA',  'ESCRI',     7902, TO_DATE('17-DEZ-1980', 'DD-MON-YYYY'), 800, NULL, 20);  
INSERT INTO empregado VALUES (7488, 'MARLI',   'VENDEDORA', 7698, TO_DATE('22-FEV-1981', 'DD-MON-YYYY'), 1600, 300, 30);
INSERT INTO empregado VALUES (7001, 'CARLOS',  'ANALISTA',  7600, TO_DATE('22-FEV-1981', 'DD-MON-YYYY'), 1250, 500, 30);     
INSERT INTO empregado VALUES (7555, 'JORGE',   'ANALISTA',  7600, TO_DATE('20-ABR-1982', 'DD-MON-YYYY'), 3000,700,30);
INSERT INTO empregado VALUES (7366, 'MIRIAM',  'ENGE',      7566, TO_DATE('17-DEZ-1980', 'DD-MON-YYYY'), 800, 500, 20);  
INSERT INTO empregado VALUES (7455, 'MAGDA',   'ENGE',      7566, TO_DATE('20-FEV-1970', 'DD-MON-YYYY'), 1600, 300, 30);
INSERT INTO empregado VALUES (7534, 'ODAIR',   'SECRE',     7600, TO_DATE('22-FEV-1971', 'DD-MON-YYYY'), 1250, 500, 30);  
INSERT INTO empregado VALUES (7699, 'LORD',    'PRESI',     7699, TO_DATE('17-DEZ-1970', 'DD-MON-YYYY'), 5000, NULL, 30);  
INSERT INTO empregado VALUES (7600, 'CARLOS',  'GERENTE',   7699, TO_DATE('20-FEV-1991', 'DD-MON-YYYY'), 2000, 1000, 40);
INSERT INTO empregado VALUES (7902, 'ARLINDO', 'GERENTE',   7699, TO_DATE('17-DEZ-1999', 'DD-MON-YYYY'), 2000, 1000, 30);  

-- verificar se o conteudo das tabelas foram inseridos corretamente

SELECT * FROM departamento;
SELECT * FROM empregado; 


-- primeiro teste plsql

SET SERVEROUTPUT ON

DECLARE
    v_teste VARCHAR2(30) := 'HELLO WORD';  
BEGIN
    DBMS_OUTPUT.PUT_LINE(v_teste); 
END; 




