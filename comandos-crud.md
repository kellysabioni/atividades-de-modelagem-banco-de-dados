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
