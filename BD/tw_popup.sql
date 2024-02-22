-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 22-Fev-2024 às 16:09
-- Versão do servidor: 10.3.39-MariaDB-0+deb10u1
-- versão do PHP: 7.3.31-1~deb10u5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `c52_tw_website`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tw_popup`
--

CREATE TABLE `tw_popup` (
  `popup_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `value` text NOT NULL,
  `backgroundcolor` text NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `tw_popup`
--

INSERT INTO `tw_popup` (`popup_id`, `name`, `value`, `backgroundcolor`, `status`) VALUES
(2, 'name', '&lt;p&gt;sad&lt;/p&gt;&lt;table class=&quot;table table-bordered&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;td&gt;se&lt;/td&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;asd&amp;nbsp;&lt;/td&gt;&lt;td&gt;ythrgser&lt;/td&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;asd&lt;/td&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;testeasdqeqwe11&lt;/p&gt;&lt;p&gt;yhgt4gqerf&lt;/p&gt;', '', 0),
(3, 'teste', '&lt;p&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;font color=&quot;#ffffff&quot; style=&quot;&quot;&gt;Quanto mais comprar mais pode poupar!&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;p&gt;\r\nDescontos até 35%!\r\n&lt;/p&gt;&lt;p&gt;Descontos para compras a partir de 250€!\r\n&lt;/p&gt;&lt;p&gt;Veja no carrinho quanto irá poupar com a sua compra!&lt;/p&gt;', '#2adbb6', 0),
(4, 'teste2', '&lt;h3&gt;teste&lt;/h3&gt;&lt;h3&gt;&lt;b&gt;qweqeqwe&lt;/b&gt;&lt;/h3&gt;', '#2adbb6', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tw_popup`
--
ALTER TABLE `tw_popup`
  ADD PRIMARY KEY (`popup_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tw_popup`
--
ALTER TABLE `tw_popup`
  MODIFY `popup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
