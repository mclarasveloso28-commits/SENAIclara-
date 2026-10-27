-- Exemplo de estrutura DDL e DCL no MySQL
CREATE DATABASE IF NOT EXISTS omnichannel_db;
USE omnichannel_db;

CREATE TABLE produtos (
id_produto INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
preco DECIMAL(10,2) NOT NULL,
estoque_atual INT NOT NULL DEFAULT 0
);

-- Criacao de usuario e concessao de acesso (DCL)
CREATE USER IF NOT EXISTS 'atendente_omni'@'localhost' IDENTIFIED BY 'Senha123!';
GRANT SELECT ON omnichannel_db.produtos TO 'atendente_omni'@'localhost';
FLUSH PRIVILEGES;