-- Tabela de Produtos
CREATE TABLE Produtos (
    ProdutoID INT AUTO_INCREMENT PRIMARY KEY,
    NomeProduto VARCHAR(100) NOT NULL,
    Quantidade INT NOT NULL,
    Preco DECIMAL(10, 2) NOT NULL
);

-- Tabela de Fornecedores
CREATE TABLE Fornecedores (
    FornecedorID INT AUTO_INCREMENT PRIMARY KEY,
    NomeFornecedor VARCHAR(100) NOT NULL,
    Cidade VARCHAR(100)
);
