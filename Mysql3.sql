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


CREATE TABLE Estoque (
    EstoqueID INT AUTO_INCREMENT PRIMARY KEY,
    ProdutoID INT,
    FornecedorID INT,
    Quantidade INT NOT NULL,
    DataEntrada DATE NOT NULL,
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID),
    FOREIGN KEY (FornecedorID) REFERENCES Fornecedores(FornecedorID)
);

SELECT *
FROM Estoque e
LEFT JOIN Produtos p ON e.ProdutoID = p.ProdutoID
LEFT JOIN Fornecedores f ON e.FornecedorID = f.FornecedorID

UNION

SELECT *
FROM Estoque e
RIGHT JOIN Produtos p ON e.ProdutoID = p.ProdutoID
RIGHT JOIN Fornecedores f ON e.FornecedorID = f.FornecedorID;

SELECT ProdutoID, SUM(Quantidade) AS QuantidadeTotal
FROM Estoque
GROUP BY ProdutoID;

SELECT ProdutoID, SUM(Quantidade) AS QuantidadeTotal
FROM Estoque
GROUP BY ProdutoID;

ALTER TABLE Estoque
ADD COLUMN LocalArmazenamento VARCHAR(100);
