# Exercício 04 - 26/02/2025

Usando o banco de dados do seu exercício (Catálogo de Filmes), experimente livremente os comandos CRUD para realizar operações nas tabelas: Gêneros, Filmes e Detalhes.

## Sugestões
1. Insira 4 gêneros: Terror, Suspense, Fantasia e Ação
2. Insira 3 filmes, contendo: Título, Data de Lançamento (YYYY-MM-DD) e o Gênero de acordo com a chave estrangeira
3. Insira pelo menos 3 detalhes (ou seja, um para cada filme) contendo: duração, sinopse, bilheteria (opcional), orçamento (opcional) e o Filme ao qual o detalhe pertence de acordo com a chave estrangeira.
 
---
---
### Inserindo dados na tabela GENEROS

``` sql
INSERT INTO generos(nome) VALUES ('Ação
 ('Comédia
 ('Drama'), ('Fantasia'), ('Terror'), ('Suspense'), ('Romance'), ('Ficção científica'), ('Musical');
```
---

### Inserindo dados na tabela FILMES 

``` sql
INSERT INTO filmes (titulo, lancamento, genero_id) VALUES 
('Vingadores: Ultimato', '2019-04-25' , 1 ),
('Avatar: O Caminho da Água', '2022-12-16' , 8),
('Titanic', '1997-12-19' , 7 ),
('Star Wars: O Despertar da Força', '2015-12-17' , 4 ),
('Vingadores: Guerra Infinita', '2018-04-16' , 1),
('Homem-Aranha: Sem Volta para Casa', '2021-12-16' , 1 ),
('Jurassic World: O Mundo dos Dinossauros', '2015-06-11' , 8),
('O Rei Leão', '2019-07-18' , 3 );
```
---

### Inserindo dados tabela DETALHES
``` sql
INSERT INTO detalhes (filme_id, duracao, bilheteria, orcamento, sinopse) values
( 3 , 194 , 2245000000 , 200000000 , 'Uma jovem aristocrata se apaixona por um artista humilde a bordo do luxuoso, porém amaldiçoado, navio Titanic.'),
( 4 , 138 , 2070000000 , 245000000 , 'Trinta anos após a derrota do Império, uma nova ameaça surge na forma da Primeira Ordem. Rey, uma catadora de sucata, e Finn, um stormtrooper desertor, juntam-se à Resistência para enfrentar essa nova ameaça.'),
( 1 , 181 , 2798000000 , 356000000 , 'Após os devastadores eventos de "Vingadores: Guerra Infinita", os heróis remanescentes da Terra precisam unir forças para reverter as ações de Thanos e restaurar a ordem no universo.'),
( 8 , 118 , 1662000000 , null      , 'No coração da savana africana, o jovem leão Simba é o herdeiro do trono de seu pai, o rei Mufasa. No entanto, após uma tragédia causada por seu tio traiçoeiro, Scar, Simba é forçado a fugir e se exilar, acreditando ser o culpado pela morte de seu pai. Longe de casa, ele encontra novos amigos, Timão e Pumba, que o ajudam a crescer e redescobrir seu verdadeiro destino. Quando seu passado volta à tona, Simba deve reunir coragem para enfrentar Scar e reivindicar seu lugar como o legítimo rei das Terras do Reino.'),
( 6 , 148 , 1832000000 , 200000000 , 'Com a identidade do Homem-Aranha agora revelada, Peter pede ajuda ao Doutor Estranho. Quando um feitiço dá errado, inimigos de outras dimensões começam a aparecer, forçando Peter a descobrir o que realmente significa ser o Homem-Aranha.'),
( 2 , 192 , 2320000000 , 250000000 , 'Ambientado mais de uma década após os eventos do primeiro filme, "Avatar: O Caminho da Água" acompanha a família Sully enquanto enfrentam novos desafios e exploram as regiões aquáticas de Pandora.'),
( 5 , 149 , 2048000000 , 400000000 , 'Os Vingadores e seus aliados devem estar dispostos a sacrificar tudo para tentar derrotar o poderoso Thanos antes que seu ataque de devastação e ruína acabe com o universo.'),
( 7 , 124 , null       , 150000000 , 'Uma nova atração no parque temático Jurassic World, um dinossauro geneticamente modificado, escapa do confinamento e inicia uma caçada sangrenta pela ilha.')
```
### Manipulando os dados 


### EXERCICIO LIVRE USANDO JOIN
``` sql
-- Mostrando FILME e GENERO
SELECT 
    filmes.titulo AS Filme,
    generos.nome AS Genero
FROM filmes INNER JOIN generos
ON filmes.genero_id = generos.id;
---
---
-- Mostrar Filme e Detalhe do Filme 
SELECT
    filmes.titulo AS Filme,
    detalhes.sinopse AS Sinopse
FROM detalhes INNER JOIN filmes
ON detalhes.filme_id = filmes.id;
---
---
-- Mostrar Filme, Genero e Detalhe do Filme 
SELECT
    generos.nome AS Genero,
    filmes.titulo AS Filme,
    detalhes.sinopse AS Sinopse
FROM filmes 
    INNER JOIN generos ON filmes.genero_id = generos.id 
    INNER JOIN detalhes ON detalhes.filmes_id = filmes.id ;
---
```