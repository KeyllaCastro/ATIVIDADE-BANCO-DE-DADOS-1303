/* ATIVIDADE BANCO DE DADOS
  No supermercado Pascotto o gerente decidiu que vão contratar um. desenvolvedor para a criação de um software. 
  Esse software será responsável por gerir e controlar o estoque de produtos do mercado.  Você, será o responsável 
  por desenvolver as tabelas necessárias.  Precisamos armazenar os produtos, cada produto tem um código de barras, 
  nome, marca, data validade, fornecedor, quantidade, preço unitário.  temos os fornecedores dos produtos, eles tem
  CNPJ, nome da empresa, endereço, telefone, e-mail.  Não menos importante, precisamos armazenar nossos funcionários,
  possuem cpf, nome, cargo, e-mail, matricula, telefone, salario.*/
  
  /* DDl - Comando de definição de estrutura, CRIANDO BIBBLIOTECA*/
CREATE DATABASE b_supermercado_pascotto;
  
  /* Diz que SGBDR que vamos usar este banco de dados daqui para frente. ESTRUTURA DE UMA TABELA*/
USE b_supermercado_pascotto;
  
CREATE TABLE estoque (
    codigo_barras INT PRIMARY KEY,
    nome VARCHAR(100),
    marca VARCHAR(50),
    data_validade DATE,
    fornecedor VARCHAR(100),
    quantidade INT,
    preco_unitario DECIMAL(10, 2)
);

/* Criando a tabela de fornecedores */
CREATE TABLE fornecedores (
    CNPJ VARCHAR(14) PRIMARY KEY,
    nome_empresa VARCHAR(100),
    endereco VARCHAR(150),
    telefone VARCHAR(15), 
    email VARCHAR(50)
);

/* Criando a tabela de funcionarios */
CREATE TABLE funcionarios (
    CPF VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(255),
    cargo VARCHAR(50),
    email VARCHAR(50),
    matricula INT,
    telefone VARCHAR(15),
    salario DECIMAL(10, 2)
);

/* Consultar todos os registros da tabela de estoque */
SELECT * FROM estoque;
SELECT * FROM fornecedores;
SELECT * FROM funcionarios;

/*inserir multiplos registreos DML*/
INSERT INTO estoque (codigo_barras, nome, marca, data_validade, fornecedor, quantidade, preco_unitario) VALUES
(138462, 'Arroz', 'Camil', '2027-10-02', 'Dist. São João', 10, 10.00),
(229374, 'Azeite', 'Casalberto', '2028-09-02', 'Armazém Norte Sul', 12, 58.80),
(229655, 'Feijão', 'Camil', '2026-09-02', 'Dist. São João', 18, 4.99);

SELECT * FROM estoque;
/*Deleta todos os registros da tabela*/
TRUNCATE TABLE estoque;

INSERT INTO fornecedores (CNPJ, nome_empresa, endereco, telefone, email) VALUES
('16283904529498', 'Dist. São João', 'Av. Paulista', '942938237', 'distsaojoa@email.com'),
('22937423230839', 'Armazém Norte Sul', 'Av. João Toledo', '28374939', 'armazennortesul@email.com');

SELECT * FROM fornecedores;
TRUNCATE TABLE fornecedores;

INSERT INTO funcionarios (CPF, nome, cargo, email, matricula, telefone, salario) VALUES
('12346678901', 'João da Silva', 'Gerente', 'joao.silva@email.com', 101, '11987654321', 3500.50),
('23456785412', 'Maria Oliveira', 'Caixa', 'maria.oliveira@email.com', 102, '11923456789', 2200.00),
('34767890123', 'Carlos Souza', 'Estoque', 'carlos.souza@email.com', 103, '11876543210', 2500.75),
('45678907634', 'Ana Costa', 'Atendente', 'ana.costa@email.com', 104, '11934567890', 2000.00);

SELECT * FROM funcionarios;
TRUNCATE TABLE funcionarios;

