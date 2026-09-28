-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28/09/2026 às 21:30
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
-- Banco de dados: `conceitos_de_bd`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes_tabela`
--

CREATE TABLE `clientes_tabela` (
  `ID` varchar(11) NOT NULL,
  `CPF` varchar(15) NOT NULL,
  `Endereço` text NOT NULL,
  `Telefone` varchar(15) NOT NULL,
  `E-mail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `estoque`
--

CREATE TABLE `estoque` (
  `id_estoque` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `quantidade` bigint(20) NOT NULL,
  `estoque_minimo` mediumint(9) NOT NULL,
  `data_atualizacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` varchar(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `descrição` text NOT NULL,
  `preço` decimal(10,0) NOT NULL,
  `marca` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tabela_relacao`
--

CREATE TABLE `tabela_relacao` (
  `ID` varchar(11) NOT NULL,
  `id_estoque` int(11) NOT NULL,
  `id_produto` varchar(11) NOT NULL,
  `id_venda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendas`
--

CREATE TABLE `vendas` (
  `id_venda` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `data_venda` date NOT NULL,
  `valor_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes_tabela`
--
ALTER TABLE `clientes_tabela`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`id_estoque`),
  ADD KEY `id_produto` (`id_produto`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`);

--
-- Índices de tabela `tabela_relacao`
--
ALTER TABLE `tabela_relacao`
  ADD KEY `ID` (`ID`),
  ADD KEY `id_estoque` (`id_estoque`),
  ADD KEY `id_produto` (`id_produto`),
  ADD KEY `id_venda` (`id_venda`);

--
-- Índices de tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id_venda`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_produto` (`id_produto`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tabela_relacao`
--
ALTER TABLE `tabela_relacao`
  ADD CONSTRAINT `tabela_relacao_ibfk_1` FOREIGN KEY (`id_estoque`) REFERENCES `estoque` (`id_estoque`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tabela_relacao_ibfk_2` FOREIGN KEY (`id_venda`) REFERENCES `vendas` (`id_venda`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tabela_relacao_ibfk_3` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tabela_relacao_ibfk_4` FOREIGN KEY (`ID`) REFERENCES `clientes_tabela` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
