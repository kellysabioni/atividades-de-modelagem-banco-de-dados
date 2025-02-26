# Comandos para operações CRUD no Banco de Dados

## Resumo 

- C -> **C**reate   -> **INSERT**: inserir dados/registros na tabela 
- R -> **R**ead     -> **SELECT**: consultar/ler dados/registros na tabela
- U -> **U**pdate   -> **UPDATE**: atualizar dados/registros na tabela 
- D -> **D**elete   -> **DELETE**: excluir dados/registros na tabela 

--- 

## INSERT (Fabricantes)

``` sql
INSERT INTO fabricantes (nome) VALUES('Asus');
INSERT INTO fabricantes (nome) VALUES('Dell');
INSERT INTO fabricantes (nome) VALUES('Apple');

INSERT INTO fabricantes (nome) VALUES('LG'), ('Samsung'), ('Brastemp');
```

## SELECT (Fabricantes)
``` sql
SELECT * FROM fabricantes;
```

---

## INSERT (Produtos) 
``` sql
INSERT INTO produtos(nome, descricao, preco, qtde, fabricante_id) 
VALUES ('Ultrabook', 'Equipamento de última geração...', 3999.45, 7, 2)
```

``` sql
INSERT INTO produtos(nome, descricao, preco, qtde, fabricante_id)
VALUES('Tablet Android', 'Tablet com a versão do sistema operacional Android, possui tela de 10 polegadas e armazenamento de 128GB....', 900, 12, 5 )
```

``` sql
INSERT INTO produtos(nome, descricao, preco, qtde, fabricante_id)
VALUES
('Geladeira', 'Refrigerador frsot-free com acesso à internet', 5000, 12, 6 ), 
('iPhone 18 Pro Max Ferradão', 'Smartphone Apple cheio das frescuras e caro pra caramba... coisa de rico', 9666.66, 3, 3 ), 
('iPad Mini', 'Tablet Apple com tela retina display e blablabla e mó bunitinha', 4999.12, 5 , 3)
```

---

---

## EXERCÍCIO 03

Insira mais dois fabricantes em seu banco de dados vendas:

``` sql
INSERT INTO fabricantes (nome) VALUES('Positivo'), ('Microsoft');
```

Adicione mais dois produtos na tabela produtos conforme indicado:
``` sql
INSERT INTO produtos(nome, descricao, preco, qtde, fabricante_id)
VALUES
('Xbox Series S', 'Velocidade e desempenho de última geração.', 1997, 5 , 8),
('Notebook Motion', 'Intel Dual Core 4GB de RAM, 128GB SSD e Tela 14,1 polegadas.', 1213.65, 8, 7 ),
```

---

## SELECT (Produtos)

``` sql
-- Lendo TODAS as colunas de TODOS os registros
SELECT * FROM produtos; 

-- Lendo somente nome e preço de todo os registros 
SELECT nome, preco FROM produtos;
SELECT preco, nome FROM produtos;

-- Mostrar nome, preço e quantidade SOMENTE dos produtos que custam abaixo de 5000
SELECT nome, preco, qtde FROM produtos WHERE preco <5000 ;

-- Mini-exercício: mostre o nome e descrição somente dos produtos da Apple 
SELECT nome, descricao FROM produtos WHERE fabricante_id = 3 ;
```

### Operadores Lógicos: E, OU e NÃO

---
---

#### E (AND)

``` sql
-- Exibir nome e preço dos produtos que custam entre 2000 e 6000
SELECT nome, preco FROM produtos WHERE preco >=2000 AND preco <=6000;
```

---
---

#### OU (OR)

``` sql
- Mini-exercício: exibir nome, descrição dos produtos da Apple e da Samsung 
SELECT nome, descricao FROM produtos WHERE fabricante_id = 3 OR fabricante_id = 5 ;

-- Versão usando a função SQL IN()
SELECT nome, descricao FROM produtos WHERE fabricante_id IN(3,5);
```

---
---
#### NÃO (NOT)
``` sql
-- Nome, descrição e preço de todos os produtos EXCETO da Positivo
SELECT nome, descricao, preco FROM produtos WHERE NOT fabricante_id = 8;

-- Versão usando o operador relacional de "diferença/diferente"
SELECT nome, descricao, preco FROM produtos WHERE fabricante_id != 8;
```

---
---

