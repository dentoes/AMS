CREATE DATABASE IF NOT EXISTS exercito CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE exercito;

CREATE TABLE IF NOT EXISTS patentes (
    id_patente INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome_patente VARCHAR(80) NOT NULL UNIQUE,
    salario DECIMAL(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS soldados (
    id_soldado INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE,
    id_patente INT UNSIGNED NOT NULL,
    CONSTRAINT fk_soldados_patentes
        FOREIGN KEY (id_patente) REFERENCES patentes(id_patente)
        ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;

INSERT IGNORE INTO patentes (nome_patente, salario) VALUES
('Soldado', 0.00),
('Cabo', 0.00),
('3º Sargento', 0.00),
('2º Sargento', 0.00),
('1º Sargento', 0.00),
('Subtenente', 0.00),
('Aspirante a Oficial', 0.00),
('2º Tenente', 0.00),
('1º Tenente', 0.00),
('Capitão', 0.00),
('Major', 0.00),
('Tenente-Coronel', 0.00),
('Coronel', 0.00);
