-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/02/2025 às 15:57
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
-- Banco de dados: `catalogo_filmes`
--
CREATE DATABASE IF NOT EXISTS `catalogo_filmes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `catalogo_filmes`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `detalhes`
--

CREATE TABLE `detalhes` (
  `id` int(11) NOT NULL,
  `duracao` int(11) NOT NULL,
  `sinopse` text NOT NULL,
  `bilheteria` decimal(14,2) DEFAULT NULL,
  `orcamento` decimal(12,2) DEFAULT NULL,
  `filme_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `detalhes`
--

INSERT INTO `detalhes` (`id`, `duracao`, `sinopse`, `bilheteria`, `orcamento`, `filme_id`) VALUES
(1, 194, 'Uma jovem aristocrata se apaixona por um artista humilde a bordo do luxuoso, porém amaldiçoado, navio Titanic.', 2245000000.00, 200000000.00, 3),
(2, 138, 'Trinta anos após a derrota do Império, uma nova ameaça surge na forma da Primeira Ordem. Rey, uma catadora de sucata, e Finn, um stormtrooper desertor, juntam-se à Resistência para enfrentar essa nova ameaça.', 2070000000.00, 245000000.00, 4),
(3, 181, 'Após os devastadores eventos de \"Vingadores: Guerra Infinita\", os heróis remanescentes da Terra precisam unir forças para reverter as ações de Thanos e restaurar a ordem no universo.', 2798000000.00, 356000000.00, 1),
(4, 118, 'No coração da savana africana, o jovem leão Simba é o herdeiro do trono de seu pai, o rei Mufasa. No entanto, após uma tragédia causada por seu tio traiçoeiro, Scar, Simba é forçado a fugir e se exilar, acreditando ser o culpado pela morte de seu pai. Longe de casa, ele encontra novos amigos, Timão e Pumba, que o ajudam a crescer e redescobrir seu verdadeiro destino. Quando seu passado volta à tona, Simba deve reunir coragem para enfrentar Scar e reivindicar seu lugar como o legítimo rei das Terras do Reino.', 1662000000.00, NULL, 8),
(5, 148, 'Com a identidade do Homem-Aranha agora revelada, Peter pede ajuda ao Doutor Estranho. Quando um feitiço dá errado, inimigos de outras dimensões começam a aparecer, forçando Peter a descobrir o que realmente significa ser o Homem-Aranha.', 1832000000.00, 200000000.00, 6),
(6, 192, 'Ambientado mais de uma década após os eventos do primeiro filme, \"Avatar: O Caminho da Água\" acompanha a família Sully enquanto enfrentam novos desafios e exploram as regiões aquáticas de Pandora.', 2320000000.00, 250000000.00, 2),
(7, 149, 'Os Vingadores e seus aliados devem estar dispostos a sacrificar tudo para tentar derrotar o poderoso Thanos antes que seu ataque de devastação e ruína acabe com o universo.', 2048000000.00, 400000000.00, 5),
(8, 124, 'Uma nova atração no parque temático Jurassic World, um dinossauro geneticamente modificado, escapa do confinamento e inicia uma caçada sangrenta pela ilha.', NULL, 150000000.00, 7);

-- --------------------------------------------------------

--
-- Estrutura para tabela `filmes`
--

CREATE TABLE `filmes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(60) NOT NULL,
  `lancamento` date NOT NULL,
  `genero_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `filmes`
--

INSERT INTO `filmes` (`id`, `titulo`, `lancamento`, `genero_id`) VALUES
(1, 'Vingadores: Ultimato', '2019-04-25', 1),
(2, 'Avatar: O Caminho da Água', '2022-12-16', 8),
(3, 'Titanic', '1997-12-19', 7),
(4, 'Star Wars: O Despertar da Força', '2015-12-17', 4),
(5, 'Vingadores: Guerra Infinita', '2018-04-16', 1),
(6, 'Homem-Aranha: Sem Volta para Casa', '2021-12-16', 1),
(7, 'Jurassic World: O Mundo dos Dinossauros', '2015-06-11', 8),
(8, 'O Rei Leão', '2019-07-18', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `generos`
--

INSERT INTO `generos` (`id`, `nome`) VALUES
(1, 'Ação'),
(2, 'Comédia'),
(3, 'Drama'),
(4, 'Fantasia'),
(5, 'Terror'),
(6, 'Suspense'),
(7, 'Romance'),
(8, 'Ficção científica'),
(9, 'Musical');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `detalhes`
--
ALTER TABLE `detalhes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_detalhes_filmes` (`filme_id`);

--
-- Índices de tabela `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_filmes_generos` (`genero_id`);

--
-- Índices de tabela `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `detalhes`
--
ALTER TABLE `detalhes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `filmes`
--
ALTER TABLE `filmes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `detalhes`
--
ALTER TABLE `detalhes`
  ADD CONSTRAINT `fk_detalhes_filmes` FOREIGN KEY (`filme_id`) REFERENCES `filmes` (`id`);

--
-- Restrições para tabelas `filmes`
--
ALTER TABLE `filmes`
  ADD CONSTRAINT `fk_filmes_generos` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
