CREATE TABLE Calendario (
    Data DATE PRIMARY KEY,
    Ano INT,
    Mes INT,
    MesNome VARCHAR(20),
    MesAno VARCHAR(20)
);

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nome_completo VARCHAR(100),
    cpf VARCHAR(14),
    rg_cnh VARCHAR(20),
    endereco VARCHAR(150),
    cidade VARCHAR(50),
    estado VARCHAR(50),
    comprovante_residencia VARCHAR(10)
);

INSERT INTO Clientes (id_cliente, nome_completo, cpf, rg_cnh, endereco, cidade, estado, comprovante_residencia) VALUES
(1, 'João Silva', '12345678901', 'MG12345678', 'Rua A, 100', 'Belo Horizonte', 'Minas Gerais', 'Sim'),
(2, 'Maria Souza', '98765432109', 'SP98765432', 'Av. B, 200', 'São Paulo', 'São Paulo', 'Não'),
(3, 'Carlos Pereira', '45678912300', 'RJ44556677', 'Rua das Flores, 50', 'Rio de Janeiro', 'Rio de Janeiro', 'Sim'),
(4, 'Ana Beatriz Lima', '78912345688', 'MG11223344', 'Av. Central, 300', 'Contagem', 'Minas Gerais', 'Sim'),
(5, 'Rafael Andrade', '32165498745', 'PR99887766', 'Rua Bahia, 1200', 'Curitiba', 'Paraná', 'Não'),
(6, 'Patrícia Gomes', '15926347801', 'SP44332211', 'Rua Verde, 22', 'Campinas', 'São Paulo', 'Sim'),
(7, 'Bruno Ferreira', '85274196358', 'SC55667788', 'Alameda Azul, 480', 'Florianópolis', 'Santa Catarina', 'Sim'),
(8, 'Larissa Monteiro', '95175384620', 'BA77665544', 'Travessa Norte, 90', 'Salvador', 'Bahia', 'Não'),
(9, 'Diego Araújo', '10293847566', 'MG55443322', 'Rua Goiás, 140', 'Uberlândia', 'Minas Gerais', 'Sim'),
(10, 'Fernanda Ribeiro', '55443322119', 'RJ99887755', 'Rua Vitória, 500', 'Niterói', 'Rio de Janeiro', 'Sim'),
(11, 'Tiago Costa', '66778899001', 'SP66554411', 'Rua Horizonte, 210', 'Santos', 'São Paulo', 'Não'),
(12, 'Juliana Castro', '33221100998', 'RS44552233', 'Av. Jardim, 350', 'Porto Alegre', 'Rio Grande do Sul', 'Sim'),
(13, 'Eduardo Martins', '88990011223', 'MG77889900', 'Rua da Praia, 72', 'Juiz de Fora', 'Minas Gerais', 'Sim'),
(14, 'Sabrina Lopes', '44556677889', 'SP11225544', 'Rua Atlântica, 900', 'Guarulhos', 'São Paulo', 'Não'),
(15, 'Marcelo Farias', '99887766554', 'PR44335566', 'Rua Sol, 300', 'Londrina', 'Paraná', 'Sim'),
(16, 'Camila Aguiar', '11002233445', 'BA88997766', 'Rua Horizonte, 25', 'Feira de Santana', 'Bahia', 'Sim'),
(17, 'Rodrigo Nunes', '22003344556', 'CE66558877', 'Av. Ceará, 19', 'Fortaleza', 'Ceará', 'Não'),
(18, 'Beatriz Santos', '33004455667', 'SC99775522', 'Rua das Laranjeiras, 8', 'Joinville', 'Santa Catarina', 'Sim'),
(19, 'Vinicius Almeida', '44005566778', 'SP22334455', 'Rua Bela Vista, 101', 'Ribeirão Preto', 'São Paulo', 'Sim'),
(20, 'Helena Moraes', '55006677889', 'MG55779933', 'Rua Diamante, 200', 'Betim', 'Minas Gerais', 'Não');


CREATE TABLE Loja (
    CNPJ_loja VARCHAR(20) PRIMARY KEY,
    nome_loja VARCHAR(100),
    telefone_loja VARCHAR(20),
    endereco_loja VARCHAR(150),
    cidade_loja VARCHAR(50),
    uf_loja VARCHAR(5)
);

INSERT INTO Loja (CNPJ_loja, nome_loja, telefone_loja, endereco_loja, cidade_loja, uf_loja) VALUES
('04.653.902/0001-88', 'Tonetto Veículos', '(19) 993527952', 'Av João Osório, 694 - Centro', 'São João da Boa Vista', 'SP');


CREATE TABLE DespesasMensais (
    CNPJ_loja VARCHAR(20),
    id_despesa INT PRIMARY KEY,
    mes_referencia DATE,
    aluguel DECIMAL(12,2),
    custos_vistoria DECIMAL(12,2),
    pagamento_ipva DECIMAL(12,2),
    taxas_transacao DECIMAL(12,2),
    manutencao DECIMAL(12,2),
    garantias DECIMAL(12,2),
    FOREIGN KEY (CNPJ_loja) REFERENCES Loja(CNPJ_loja),
    FOREIGN KEY (mes_referencia) REFERENCES Calendario(Data)
);

INSERT INTO Despesas_Mensais
(
    CNPJ_loja, id_despesa, mes_referencia, aluguel, custos_vistoria, pagamento_ipva,
    taxas_transacao, manutencao, garantias
)
VALUES
('04.653.902/0001-88', 1, '2023-01-01', 2000, 100, 0, 90, 100, 300),
('04.653.902/0001-88', 2, '2023-02-01', 2000, 120, 0, 110, 120, 300),
('04.653.902/0001-88', 3, '2023-03-01', 2000, 160, 0, 100, 110, 300),
('04.653.902/0001-88', 4, '2023-04-01', 2000, 130, 0, 95, 90, 300),
('04.653.902/0001-88', 5, '2023-05-01', 2000, 110, 0, 110, 150, 300),
('04.653.902/0001-88', 6, '2023-06-01', 2000, 80, 0, 100, 120, 300),
('04.653.902/0001-88', 7, '2023-07-01', 2000, 200, 0, 150, 200, 300),
('04.653.902/0001-88', 8, '2023-08-01', 2000, 90, 0, 120, 100, 300),
('04.653.902/0001-88', 9, '2023-09-01', 2000, 120, 0, 110, 150, 300),
('04.653.902/0001-88', 10, '2023-10-01', 2000, 260, 0, 100, 160, 300),
('04.653.902/0001-88', 11, '2023-11-01', 2000, 100, 500, 120, 300, 300),
('04.653.902/0001-88', 12, '2023-12-01', 2000, 150, 0, 150, 70, 300),
('04.653.902/0001-88', 13, '2024-01-01', 2000, 80, 0, 90, 100, 300),
('04.653.902/0001-88', 14, '2024-02-01', 2000, 120, 0, 100, 120, 300),
('04.653.902/0001-88', 15, '2024-03-01', 2000, 160, 0, 100, 110, 300),
('04.653.902/0001-88', 16, '2024-04-01', 2000, 130, 0, 90, 90, 300),
('04.653.902/0001-88', 17, '2024-05-01', 2000, 110, 0, 110, 150, 300),
('04.653.902/0001-88', 18, '2024-06-01', 2000, 80, 0, 100, 120, 300),
('04.653.902/0001-88', 19, '2024-07-01', 2000, 200, 0, 120, 200, 300),
('04.653.902/0001-88', 20, '2024-08-01', 2000, 90, 0, 110, 100, 300),
('04.653.902/0001-88', 21, '2024-09-01', 2000, 120, 0, 110, 150, 300),
('04.653.902/0001-88', 22, '2024-10-01', 2000, 260, 0, 100, 160, 300),
('04.653.902/0001-88', 23, '2024-11-01', 2000, 100, 500, 120, 300, 300),
('04.653.902/0001-88', 24, '2024-12-01', 2000, 150, 0, 140, 70, 300),
('04.653.902/0001-88', 25, '2025-01-01', 2500, 120, 0, 100, 120, 300),
('04.653.902/0001-88', 26, '2025-02-01', 2500, 130, 0, 110, 100, 300),
('04.653.902/0001-88', 27, '2025-03-01', 2500, 150, 0, 120, 160, 300),
('04.653.902/0001-88', 28, '2025-04-01', 2500, 100, 0, 100, 80, 300),
('04.653.902/0001-88', 29, '2025-05-01', 2500, 120, 0, 120, 170, 300),
('04.653.902/0001-88', 30, '2025-06-01', 2500, 90, 0, 110, 120, 300),
('04.653.902/0001-88', 31, '2025-07-01', 2500, 200, 0, 130, 200, 300),
('04.653.902/0001-88', 32, '2025-08-01', 2500, 80, 0, 120, 90, 300),
('04.653.902/0001-88', 33, '2025-09-01', 2500, 110, 0, 120, 130, 300),
('04.653.902/0001-88', 34, '2025-10-01', 2500, 150, 0, 130, 150, 300),
('04.653.902/0001-88', 35, '2025-11-01', 2500, 100, 0, 110, 120, 300);


CREATE TABLE Veiculos (
    CNPJ_loja VARCHAR(20),
    id_veiculo INT PRIMARY KEY,
    tipo VARCHAR(20),
    modelo VARCHAR(50),
    valor_venda DECIMAL(12,2),
    valor_compra DECIMAL(12,2),
    vendido VARCHAR(3),
    km INT,
    documentacao VARCHAR(20),
    autorizacao_transferencia VARCHAR(20),
    vistoria VARCHAR(20),
    situacao_ipva VARCHAR(20),
    municipio_venda VARCHAR(50),
    uf_venda VARCHAR(20),
    FOREIGN KEY (CNPJ_loja) REFERENCES Loja(CNPJ_loja)
);


INSERT INTO Veiculos
(
    CNPJ_loja, id_veiculo, tipo, modelo, valor_venda, valor_compra, vendido, km,
    documentacao, autorizacao_transferencia, vistoria, situacao_ipva, municipio_venda, uf_venda
)
VALUES
('04.653.902/0001-88', 101, 'Carro', 'Fiat Argo 1.3', 62000, 51666.67, 'Sim', 45000, 'OK', 'Autorizado', 'Aprovada', 'Pago', 'São João da Boa Vista', 'São Paulo'),
('04.653.902/0001-88', 102, 'Moto', 'Honda CG 160', 14000, 11666.67, 'Sim', 8000, 'Pendente', 'Autorizado', 'Aprovada', 'A Pagar', 'São João da Boa Vista', 'São Paulo'),
('04.653.902/0001-88', 103, 'Carro', 'Toyota Corolla 2.0', 81000, 67500.00, 'Sim', 30000, 'OK', 'Autorizado', 'Aprovada', 'Pago', 'São João da Boa Vista', 'São Paulo'),
('04.653.902/0001-88', 104, 'Carro', 'Chevrolet Onix 1.0', 43000, 35833.33, 'Sim', 90000, 'Pendente', 'Pendente', 'Reprovada', 'A Pagar', 'São João da Boa Vista', 'São Paulo'),
('04.653.902/0001-88', 105, 'Moto', 'Yamaha Factor 150', 11000, 9166.67, 'Sim', 15000, 'OK', 'Autorizado', 'Aprovada', 'Pago', 'São João da Boa Vista', 'São Paulo'),
('04.653.902/0001-88', 106, 'Carro', 'Honda Civic Touring', 100000, 83333.33, 'Sim', 15000, 'OK', 'Autorizado', 'Aprovada', 'Pago', 'São João da Boa Vista', 'São Paulo'),
('04.653.902/0001-88', 107, 'Carro', 'Volkswagen Gol 1.6', 52000, 43333.33, 'Sim', 70000, 'OK', 'Autorizado', 'Aprovada', 'A Pagar', 'São João da Boa Vista', 'São Paulo'),
('04.653.902/0001-88', 108, 'Moto', 'Honda PCX 150', 17000, 14166.67, 'Sim', 5000, 'OK', 'Autorizado', 'Aprovada', 'Pago', 'São João da Boa Vista', 'São Paulo'),
('04.653.902/0001-88', 109, 'Carro', 'Jeep Renegade 1.8', 76000, 63333.33, 'Sim', 40000, 'Pendente', 'Autorizado', 'Aprovada', 'Pago', 'São João da Boa Vista', 'São Paulo'),
('04.653.902/0001-88', 110, 'Carro', 'Ford Ka 1.0', 59000, 49166.67, 'Sim', 55000, 'OK', 'Pendente', 'Aprovada', 'A Pagar', 'São João da Boa Vista', 'São Paulo'),
('04.653.902/0001-88', 111, 'Moto', 'Yamaha Fazer 250', 12500, 10416.67, 'Sim', 9000, 'OK', 'Autorizado', 'Aprovada', 'Pago', 'São João da Boa Vista', 'São Paulo'),
('04.653.902/0001-88', 112, 'Carro', 'Hyundai HB20 1.6', 84000, 70000.00, 'Sim', 26000, 'OK', 'Autorizado', 'Aprovada', 'Pago', 'São João da Boa Vista', 'São Paulo'),
('04.653.902/0001-88', 113, 'Carro', 'Chevrolet Celta 1.0', 46000, 38333.33, 'Sim', 80000, 'Pendente', 'Pendente', 'Reprovada', 'A Pagar', 'São João da Boa Vista', 'São Paulo'),
('04.653.902/0001-88', 114, 'Carro', 'Audi A3 Sedan', 112000, 93333.33, 'Sim', 10000, 'OK', 'Autorizado', 'Aprovada', 'Pago', 'São João da Boa Vista', 'São Paulo'),
('04.653.902/0001-88', 115, 'Moto', 'Honda Bros 160', 15500, 12916.67, 'Sim', 4000, 'OK', 'Autorizado', 'Aprovada', 'Pago', 'São João da Boa Vista', 'São Paulo'),
('04.653.902/0001-88', 116, 'Carro', 'Renault Logan 1.6', 65000, 54166.67, 'Sim', 60000, 'OK', 'Autorizado', 'Aprovada', 'A Pagar', 'São João da Boa Vista', 'São Paulo'),
('04.653.902/0001-88', 117, 'Carro', 'Fiat Uno 1.0', 38000, 31666.67, 'Sim', 95000, 'Pendente', 'Pendente', 'Reprovada', 'A Pagar', 'São João da Boa Vista', 'São Paulo'),
('04.653.902/0001-88', 118, 'Moto', 'Yamaha Lander 250', 16500, 13750.00, 'Sim', 12000, 'OK', 'Autorizado', 'Aprovada', 'Pago', 'São João da Boa Vista', 'São Paulo'),
('04.653.902/0001-88', 119, 'Carro', 'Volkswagen Virtus 1.6', 95000, 79166.67, 'Sim', 20000, 'OK', 'Autorizado', 'Aprovada', 'Pago', 'São João da Boa Vista', 'São Paulo'),
('04.653.902/0001-88', 120, 'Carro', 'Fiat Cronos 1.3', 69000, 57500.00, 'Sim', 65000, 'Pendente', 'Autorizado', 'Aprovada', 'A Pagar', 'São João da Boa Vista', 'São Paulo'),
('04.653.902/0001-88', 121, 'Carro', 'BMW 320i', 125000, 104166.67, 'Sim', 18000, 'OK', 'Autorizado', 'Aprovada', 'Pago', 'São João da Boa Vista', 'São Paulo'),
('04.653.902/0001-88', 122, 'Carro', 'Chevrolet Tracker 1.2 Turbo', 98000, 81666.67, 'Não', 10000, 'OK', 'Pendente', 'Aprovada', NULL, NULL),
('04.653.902/0001-88', 123, 'Carro', 'Renault Kwid 1.0', 42000, 35000.00, 'Não', 30000, 'OK', 'Pendente', 'Aprovada', 'A Pagar', NULL, NULL),
('04.653.902/0001-88', 124, 'Moto', 'Honda XRE 300', 26000, 21666.67, 'Não', 7000, 'OK', 'Pendente', 'Aprovada', 'Pago', NULL, NULL),
('04.653.902/0001-88', 125, 'Carro', 'Volkswagen T-Cross 1.0', 115000, 95833.33, 'Não', 15000, 'OK', 'Pendente', 'Aprovada', 'Pago', NULL, NULL),
('04.653.902/0001-88', 126, 'Carro', 'Fiat Pulse Drive 1.3', 93000, 77500.00, 'Não', 20000, 'OK', 'Pendente', 'Aprovada', 'A Pagar', NULL, NULL);


CREATE TABLE Venda (
    CNPJ_loja VARCHAR(20),
    id_venda INT PRIMARY KEY,
    id_cliente INT,
    id_veiculo INT UNIQUE,
    data_venda DATE,
    forma_pagamento VARCHAR(20),
    valor_venda DECIMAL(12,2),
    lucro DECIMAL(12,2),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_veiculo) REFERENCES Veiculos(id_veiculo),
    FOREIGN KEY (data_venda) REFERENCES Calendario(Data),
    FOREIGN KEY (CNPJ_loja) REFERENCES Loja(CNPJ_loja)
);


INSERT INTO Venda (CNPJ_loja, id_venda, id_cliente, id_veiculo, data_venda, forma_pagamento, valor_venda, lucro) VALUES
('04.653.902/0001-88', 101, 1, 101, '2024-01-10', 'Cartão', 62000, 12400),
('04.653.902/0001-88', 102, 2, 102, '2025-01-18', 'Financiado', 14000, 2800),
('04.653.902/0001-88', 103, 3, 103, '2023-02-05', 'PIX', 81000, 16200),
('04.653.902/0001-88', 104, 4, 104, '2025-02-20', 'Dinheiro', 43000, 8600),
('04.653.902/0001-88', 105, 5, 105, '2025-03-12', 'Cartão', 11000, 2200),
('04.653.902/0001-88', 106, 6, 106, '2023-03-30', 'Financiado', 100000, 20000),
('04.653.902/0001-88', 107, 7, 107, '2025-04-08', 'PIX', 52000, 10400),
('04.653.902/0001-88', 108, 8, 108, '2025-04-25', 'Dinheiro', 17000, 3400),
('04.653.902/0001-88', 109, 9, 109, '2023-05-10', 'PIX', 76000, 15200),
('04.653.902/0001-88', 110, 10, 110, '2025-05-28', 'Financiado', 59000, 11800),
('04.653.902/0001-88', 111, 11, 111, '2025-06-02', 'Cartão', 12500, 2500),
('04.653.902/0001-88', 112, 12, 112, '2024-06-29', 'PIX', 84000, 16800),
('04.653.902/0001-88', 113, 13, 113, '2025-07-06', 'Dinheiro', 46000, 9200),
('04.653.902/0001-88', 114, 14, 114, '2025-07-21', 'Cartão', 112000, 22400),
('04.653.902/0001-88', 115, 15, 115, '2024-08-04', 'PIX', 15500, 3100),
('04.653.902/0001-88', 116, 16, 116, '2025-08-19', 'Financiado', 65000, 13000),
('04.653.902/0001-88', 117, 17, 117, '2025-09-01', 'Dinheiro', 38000, 7600),
('04.653.902/0001-88', 118, 18, 118, '2024-09-17', 'Cartão', 16500, 3300),
('04.653.902/0001-88', 119, 19, 119, '2025-10-12', 'PIX', 95000, 19000),
('04.653.902/0001-88', 120, 20, 120, '2023-10-30', 'Financiado', 69000, 13800),
('04.653.902/0001-88', 121, 3, 121, '2025-11-15', 'PIX', 125000, 25000);


















