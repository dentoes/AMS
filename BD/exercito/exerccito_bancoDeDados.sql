CREATE DATABASE IF NOT EXISTS exercito;
USE exercito;

CREATE TABLE IF NOT EXISTS soldados (
    id_soldado INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_soldado)
);

CREATE TABLE IF NOT EXISTS patentes (
    id_patente INT NOT NULL AUTO_INCREMENT,
    nome_patente VARCHAR(100) NOT NULL,
    salario DECIMAL(11,2) NOT NULL,
    PRIMARY KEY (id_patente)
);
