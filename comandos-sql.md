# Comandos SQL - Documentação

## Modelagem Física
Neste arquivo está a referência de comandos visando a estruturação do banco de dados MySQL/MariaDB.

### Criar banco de dados 

``` sql
CREATE DATABASE vendas CHARACTER SET utf8mb4;
```

### Criar tabela Fabricante
``` sql
CREATE TABLE fabricantes (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(50) NOT NULL
);
```

### Visualizar detalhes estruturais da tabela 
``` sql
DESC fabricantes;
```

### Criar tabela Produtos
``` sql
## Forma de Comentário válido no SQL
CREATE TABLE produtos (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(45) NOT NULL,
    descricao TEXT(500) NULL,
    preco DECIMAL(6,2),
    fabricante_id INT NOT NULL -- Será chave estrangeira
);
```
