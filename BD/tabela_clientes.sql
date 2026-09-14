-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/09/2026 às 21:27
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
-- Banco de dados: `tabela_clientes`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `CPF` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes_tab`
--

CREATE TABLE `clientes_tab` (
  `ID` int(10) NOT NULL,
  `CPF` int(15) NOT NULL,
  `Endereço` int(200) NOT NULL,
  `Telefone` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes_tabb`
--

CREATE TABLE `clientes_tabb` (
  `ID` int(10) NOT NULL,
  `CPF` int(15) NOT NULL,
  `Endereço` int(200) NOT NULL,
  `Telefone` int(15) NOT NULL,
  `E-mail` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes_tabel`
--

CREATE TABLE `clientes_tabel` (
  `id_cliente` int(11) NOT NULL,
  `CPF` varchar(15) NOT NULL,
  `Endereço` varchar(200) NOT NULL,
  `Telefone` varchar(15) NOT NULL,
  `E-mail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes_tabela`
--

CREATE TABLE `clientes_tabela` (
  `ID` varchar(10) NOT NULL,
  `CPF` varchar(15) NOT NULL,
  `Endereço` text NOT NULL,
  `Telefone` varchar(15) NOT NULL,
  `E-mail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes_tab`
--
ALTER TABLE `clientes_tab`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `clientes_tabb`
--
ALTER TABLE `clientes_tabb`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `clientes_tabel`
--
ALTER TABLE `clientes_tabel`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `CPF` (`CPF`),
  ADD UNIQUE KEY `E-mail` (`E-mail`);

--
-- Índices de tabela `clientes_tabela`
--
ALTER TABLE `clientes_tabela`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
