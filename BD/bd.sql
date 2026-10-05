-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05/10/2026 às 20:04
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_pets`
--

CREATE TABLE `tb_pets` (
  `ID_pet` int(11) NOT NULL,
  `nome_pet` varchar(50) NOT NULL,
  `especie` varchar(30) NOT NULL,
  `raca` varchar(30) NOT NULL,
  `ID_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_pets`
--

INSERT INTO `tb_pets` (`ID_pet`, `nome_pet`, `especie`, `raca`, `ID_cliente`) VALUES
(1, 'Sara', 'cão', 'pitbull', 1),
(2, 'Victor', 'felino', 'onça', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `td_clientes`
--

CREATE TABLE `td_clientes` (
  `ID_clientes` int(11) NOT NULL,
  `nome_cliente` varchar(100) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `td_clientes`
--

INSERT INTO `td_clientes` (`ID_clientes`, `nome_cliente`, `telefone`, `email`) VALUES
(1, 'Sara', '+55 14 98109=36', 'saraoi@gmail.com'),
(2, 'Victor', '+55 14 99876-46', 'victaoarroba@gmail.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_pets`
--
ALTER TABLE `tb_pets`
  ADD PRIMARY KEY (`ID_pet`),
  ADD KEY `id_cliente` (`ID_cliente`);

--
-- Índices de tabela `td_clientes`
--
ALTER TABLE `td_clientes`
  ADD PRIMARY KEY (`ID_clientes`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_pets`
--
ALTER TABLE `tb_pets`
  MODIFY `ID_pet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `td_clientes`
--
ALTER TABLE `td_clientes`
  MODIFY `ID_clientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tb_pets`
--
ALTER TABLE `tb_pets`
  ADD CONSTRAINT `tb_pets_ibfk_1` FOREIGN KEY (`ID_cliente`) REFERENCES `td_clientes` (`ID_clientes`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
