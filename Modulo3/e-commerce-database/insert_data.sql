-- ==========================================================
-- CONFIGURAÇÃO INICIAL (Evitar erros de FK durante insert em massa)
-- ==========================================================
SET FOREIGN_KEY_CHECKS = 0;

-- Limpar tabelas antigas (Opcional - Descomente se quiser resetar tudo)
-- TRUNCATE TABLE ORDER_ITEMS; TRUNCATE TABLE ORDERS; TRUNCATE TABLE PO_ITEMS; 
-- TRUNCATE TABLE PURCHASE_ORDER; TRUNCATE TABLE INVENTORY_ITEM; TRUNCATE TABLE INVENTORY;
-- TRUNCATE TABLE SELLER_PRODUCT; TRUNCATE TABLE SELLER; TRUNCATE TABLE PRODUCT_SUPPLIER;
-- TRUNCATE TABLE PRODUCT; TRUNCATE TABLE SUPPLIER; TRUNCATE TABLE CREDIT_CARD; 
-- TRUNCATE TABLE PIX; TRUNCATE TABLE BANK_SLIP; TRUNCATE TABLE WALLET;
-- TRUNCATE TABLE INDIVIDUAL_PERSON; TRUNCATE TABLE LEGAL_ENTITY; TRUNCATE TABLE CUSTOMER;
-- TRUNCATE TABLE DISTRIBUTION_CENTER;

-- ==========================================================
-- 1. CLIENTES (12 Entradas: 7 PF e 5 PJ)
-- ==========================================================
INSERT INTO CUSTOMER (idCustomer, First_Name, Last_Name, Email, Phone, Street, City, State, Zip_Code, Country) VALUES
(1, 'João', 'Silva', 'joao.silva@email.com', '11999990001', 'Rua das Flores, 123', 'São Paulo', 'SP', '01000-000', 'Brasil'),
(2, 'Maria', 'Santos', 'maria.santos@email.com', '21988880002', 'Av. Atlântica, 500', 'Rio de Janeiro', 'RJ', '20000-000', 'Brasil'),
(3, 'Carlos', 'Oliveira', 'carlos.oli@email.com', '31977770003', 'Rua da Bahia, 100', 'Belo Horizonte', 'MG', '30000-000', 'Brasil'),
(4, 'Ana', 'Costa', 'ana.costa@email.com', '41966660004', 'Rua XV de Novembro, 20', 'Curitiba', 'PR', '80000-000', 'Brasil'),
(5, 'Pedro', 'Martins', 'pedro.m@email.com', '71955550005', 'Av. Oceânica, 1000', 'Salvador', 'BA', '40000-000', 'Brasil'),
(6, 'Tech Solutions Ltda', 'Admin', 'contato@techsol.com', '1130001000', 'Av. Paulista, 2000', 'São Paulo', 'SP', '01310-000', 'Brasil'),
(7, 'Lucas', 'Pereira', 'lucas.p@email.com', '81944440006', 'Rua do Sol, 55', 'Recife', 'PE', '50000-000', 'Brasil'),
(8, 'Julia', 'Ferreira', 'julia.f@email.com', '61933330007', 'Asa Norte, Bloco C', 'Brasília', 'DF', '70000-000', 'Brasil'),
(9, 'Comercial Souza SA', 'Compras', 'compras@csouza.com', '5130002000', 'Av. Ipiranga, 500', 'Porto Alegre', 'RS', '90000-000', 'Brasil'),
(10, 'Fernanda', 'Lima', 'fe.lima@email.com', '91922220008', 'Av. Nazaré, 300', 'Belém', 'PA', '66000-000', 'Brasil'),
(11, 'Mercado Rápido Ltda', 'Gerencia', 'gerente@mercadorp.com', '1130003000', 'Rua Augusta, 500', 'São Paulo', 'SP', '01300-000', 'Brasil'),
(12, 'Roberto', 'Almeida', 'beto.al@email.com', '27911110009', 'Rua da Praia, 10', 'Vitória', 'ES', '29000-000', 'Brasil');

-- Especialização PF
INSERT INTO INDIVIDUAL_PERSON (CUSTOMER_idCustomer, CPF, Birth_Date) VALUES
(1, '11122233301', '1990-05-15'), (2, '22233344402', '1985-08-20'), (3, '33344455503', '1995-01-10'),
(4, '44455566604', '1988-12-25'), (5, '55566677705', '2000-07-07'), (7, '77788899907', '1992-03-30'),
(8, '88899900008', '1998-11-11'), (10, '00011122210', '1980-06-05'), (12, '12312312312', '1975-09-15');

-- Especialização PJ
INSERT INTO LEGAL_ENTITY (CUSTOMER_IDCUSTOMER, CNPJ, Trade_Name) VALUES
(6, '12345678000101', 'Tech Solutions'), (9, '87654321000102', 'Souza Atacado'),
(11, '11223344000103', 'Mercado Rápido');

-- ==========================================================
-- 2. PRODUTOS E FORNECEDORES (12 Produtos, 5 Fornecedores)
-- ==========================================================
INSERT INTO SUPPLIER (idSupplier, Corporate_Name, CNPJ, Email, Phone, Street, City, State, Zip_Code, Country) VALUES
(1, 'Samsung Eletrônica', '55555000100', 'b2b@samsung.com', '1130004000', 'Av. Industrial', 'Campinas', 'SP', '13000-000', 'Brasil'),
(2, 'Apple Brasil', '44444000100', 'sales@apple.com', '1130005000', 'Rua Leopoldo', 'São Paulo', 'SP', '04500-000', 'Brasil'),
(3, 'Editora Companhia', '33333000100', 'vendas@cia.com', '2130006000', 'Rua dos Livros', 'Rio de Janeiro', 'RJ', '20000-000', 'Brasil'),
(4, 'Móveis Silva', '22222000100', 'contato@msilva.com', '5430007000', 'Rodovia do Móvel', 'Bento Gonçalves', 'RS', '95000-000', 'Brasil'),
(5, 'Brinquedos Estrela', '11111000100', 'sac@estrela.com', '1130008000', 'Av. das Nações', 'São Paulo', 'SP', '01000-000', 'Brasil');

INSERT INTO PRODUCT (idProduct, Name, Description, Category, Package_Height, Package_Width, Package_Length, Package_Weight) VALUES
(1, 'Smartphone Galaxy S24', '256GB Preto', 'Eletrônicos', 15.00, 7.00, 0.80, 0.20),
(2, 'iPhone 15 Pro', '128GB Titânio', 'Eletrônicos', 15.00, 7.00, 0.80, 0.20),
(3, 'Notebook Dell Inspiron', 'i7 16GB RAM', 'Computadores', 2.00, 35.00, 24.00, 1.80),
(4, 'MacBook Air M2', '13 pol 8GB', 'Computadores', 1.50, 30.00, 21.00, 1.20),
(5, 'Livro: O Senhor dos Anéis', 'Box Trilogia', 'Livros', 25.00, 15.00, 10.00, 1.50),
(6, 'Livro: Código Limpo', 'Robert C. Martin', 'Livros', 23.00, 16.00, 3.00, 0.60),
(7, 'Cadeira Gamer XPTO', 'Ergonômica Preta', 'Móveis', 80.00, 60.00, 60.00, 15.00),
(8, 'Mesa de Escritório', '120cm Branca', 'Móveis', 10.00, 120.00, 60.00, 20.00),
(9, 'LEGO Star Wars', 'Millennium Falcon', 'Brinquedos', 40.00, 30.00, 10.00, 2.00),
(10, 'Boneca Barbie', 'Profissões', 'Brinquedos', 30.00, 10.00, 5.00, 0.30),
(11, 'Smart TV 55 4K', 'Samsung Crystal', 'Eletrônicos', 80.00, 120.00, 10.00, 12.00),
(12, 'Fone Bluetooth', 'Cancelamento Ruído', 'Acessórios', 5.00, 5.00, 3.00, 0.10);

INSERT INTO PRODUCT_SUPPLIER (SUPPLIER_IDSUPPLIER, PRODUCT_idProduct) VALUES
(1, 1), (1, 11), -- Samsung fornece Galaxy e TV
(2, 2), (2, 4), (2, 12), -- Apple fornece iPhone, Mac e Fone (hipotético)
(3, 5), (3, 6), -- Editora fornece livros
(4, 7), (4, 8), -- Móveis Silva fornece móveis
(5, 9), (5, 10); -- Estrela fornece brinquedos (distribuidor)

-- ==========================================================
-- 3. LOGÍSTICA E VENDEDORES (CDs, Sellers e Estoque)
-- ==========================================================
INSERT INTO DISTRIBUTION_CENTER (idDistCenter, Name, Street, City, State, Zip_Code, Contact_Info, Email) VALUES
(1, 'CD Cajamar Full', 'Rod. Anhanguera', 'Cajamar', 'SP', '07750-000', 'Carlos', 'cajamar@ecom.com'),
(2, 'CD Bahia', 'Via Parafuso', 'Salvador', 'BA', '40000-000', 'Ana', 'bahia@ecom.com'),
(3, 'CD Pernambuco', 'BR 101', 'Cabo', 'PE', '54500-000', 'João', 'pe@ecom.com'),
(4, 'CD Sul', 'Av. das Indústrias', 'Curitiba', 'PR', '80000-000', 'Mariana', 'sul@ecom.com'),
(5, 'CD Rio', 'Rod. Dutra', 'Rio de Janeiro', 'RJ', '21000-000', 'Pedro', 'rio@ecom.com');

INSERT INTO SELLER (idSeller, Corporate_Name, CNPJ, Email, Phone) VALUES
(1, 'Loja Oficial Tech', '99000000000199', 'contato@lojatech.com', '11900001111'),
(2, 'Livraria Cultura', '88000000000188', 'sac@cultura.com', '11900002222'),
(3, 'Casa dos Móveis', '77000000000177', 'vendas@casamoveis.com', '51900003333'),
(4, 'Mundo Kids', '66000000000166', 'alo@mundokids.com', '31900004444'),
(5, 'Eletro Fast', '55000000000155', 'sac@eletrofast.com', '21900005555');

-- Vínculo Produto x Vendedor (Quem vende o quê)
INSERT INTO SELLER_PRODUCT (idSeller, idProduct) VALUES
(1, 1), (1, 2), (1, 3), (1, 4), (1, 11), (1, 12), -- Loja Tech vende eletrônicos
(2, 5), (2, 6), -- Livraria vende livros
(3, 7), (3, 8), -- Casa Móveis vende móveis
(4, 9), (4, 10), -- Mundo Kids vende brinquedos
(5, 1), (5, 11); -- Eletro Fast também vende Galaxy e TV

-- Estoque Lógico (Seller X CD)
INSERT INTO INVENTORY (idInventory, SELLER_idSeller, DISTRIBUTION_CENTER_idDistCenter) VALUES
(1, 1, 1), (2, 1, 3), -- Loja Tech tem estoque em SP e PE
(3, 2, 1), -- Livraria tem estoque em SP
(4, 3, 4), -- Casa Móveis tem estoque no Sul
(5, 4, 2), -- Mundo Kids tem estoque na Bahia
(6, 5, 5); -- Eletro Fast tem estoque no Rio

-- Quantidade Física
INSERT INTO INVENTORY_ITEM (idInventory, PRODUCT_idProduct, Quantity) VALUES
(1, 1, 100), (1, 2, 50), (1, 11, 20), -- Tech em SP
(2, 1, 30), -- Tech em PE
(3, 5, 200), (3, 6, 150), -- Livraria em SP
(4, 7, 10), (4, 8, 5), -- Móveis no Sul
(5, 9, 40), (5, 10, 60), -- Brinquedos na BA
(6, 11, 15); -- TV no Rio

-- ==========================================================
-- 4. PAGAMENTOS E CARTEIRAS (10 Carteiras)
-- ==========================================================
INSERT INTO WALLET (idWallet, Payment_Method_Type, CUSTOMER_idCustomer) VALUES
(1, 'Credit Card', 1), (2, 'Pix', 2), (3, 'Boleto', 3), (4, 'Credit Card', 4),
(5, 'Credit Card', 5), (6, 'Pix', 6), (7, 'Boleto', 7), (8, 'Credit Card', 8),
(9, 'Pix', 9), (10, 'Credit Card', 10);

INSERT INTO CREDIT_CARD (idCard, Tokenized_Card, Last_4_Digits, Brand, Expiration_Date, WALLET_idWallet) VALUES
(1, 'tok_visa_001', '1111', 'Visa', '2028-01-01', 1),
(2, 'tok_master_002', '2222', 'Mastercard', '2027-05-01', 4),
(3, 'tok_visa_003', '3333', 'Visa', '2029-12-01', 5),
(4, 'tok_amex_004', '4444', 'Amex', '2026-08-01', 8),
(5, 'tok_elo_005', '5555', 'Elo', '2030-02-01', 10);

INSERT INTO PIX (idPix, Pix_Key, Bank_Institution, WALLET_idWallet) VALUES
(1, 'maria.santos@email.com', 'Nubank', 2),
(2, '12345678000101', 'Itaú', 6),
(3, 'compras@csouza.com', 'Bradesco', 9);

-- ==========================================================
-- 5. PEDIDOS (15 Pedidos com Status variados)
-- ==========================================================
INSERT INTO ORDERS (idOrder, Created_At, Estimated_Delivery_Date, Status, Shipping_Cost, CUSTOMER_idCustomer) VALUES
(1001, '2024-01-10', '2024-01-15', 'Delivered', 20.00, 1),
(1002, '2024-01-12', '2024-01-18', 'Delivered', 15.50, 2),
(1003, '2024-02-01', '2024-02-05', 'Delivered', 50.00, 3), -- Compra de Móveis
(1004, '2024-02-10', '2024-02-12', 'Shipped', 22.00, 4),
(1005, '2024-02-15', '2024-02-20', 'Processing', 30.00, 5),
(1006, '2024-02-18', '2024-02-22', 'Processing', 10.00, 1), -- Cliente recorrente
(1007, '2024-01-20', '2024-01-25', 'Cancelled', 0.00, 6),
(1008, '2024-02-20', '2024-02-25', 'Shipped', 18.00, 7),
(1009, '2024-02-21', '2024-02-26', 'Processing', 25.00, 8),
(1010, '2024-01-05', '2024-01-10', 'Delivered', 12.00, 9),
(1011, '2024-02-22', '2024-02-28', 'Processing', 40.00, 10),
(1012, '2024-02-22', '2024-02-25', 'Processing', 15.00, 2), -- Cliente recorrente
(1013, '2024-02-23', '2024-03-01', 'Processing', 60.00, 3),
(1014, '2024-01-30', '2024-02-05', 'Delivered', 35.00, 11),
(1015, '2024-02-10', '2024-02-15', 'Shipped', 20.00, 12);

ALTER TABLE ORDER_ITEMS 
   MODIFY COLUMN Shipping_Distance DECIMAL(10,2);

-- Itens dos Pedidos (Detalhes)
INSERT INTO ORDER_ITEMS (PRODUCT_idProduct, ORDERS_idOrder, Quantity, Unit_Price, Shipping_Price, Shipping_Distance, Shipping_Weight) VALUES
   (1, 1001, 1, 4500.00, 20.00, 100.0, 0.2), -- Galaxy
   (5, 1002, 1, 150.00, 15.50, 50.0, 1.5), -- Livro
   (7, 1003, 2, 800.00, 50.00, 500.0, 30.0), -- 2 Cadeiras
   (2, 1004, 1, 6000.00, 22.00, 200.0, 0.2), -- iPhone
   (9, 1005, 1, 800.00, 30.00, 800.0, 2.0), -- LEGO (BA para BA)
   (12, 1006, 2, 200.00, 10.00, 100.0, 0.2), -- 2 Fones
   (3, 1007, 10, 3500.00, 0.00, 0.0, 0.0), -- Cancelado (Notebooks empresa)
   (6, 1008, 1, 80.00, 18.00, 300.0, 0.6), -- Livro Clean Code
   (4, 1009, 1, 7500.00, 25.00, 600.0, 1.2), -- MacBook
   (11, 1010, 5, 2500.00, 12.00, 50.0, 60.0), -- 5 TVs (Atacado)
   (1, 1011, 1, 4500.00, 40.00, 1000.0, 0.2), -- Galaxy para PA
   (10, 1012, 3, 50.00, 15.00, 50.0, 0.9), -- 3 Barbies
   (8, 1013, 1, 400.00, 60.00, 500.0, 20.0), -- Mesa
   (1, 1014, 2, 4400.00, 35.00, 10.0, 0.4), -- 2 Galaxys
   (3, 1015, 1, 3600.00, 20.00, 150.0, 1.8); -- Notebook

-- ==========================================================
-- 6. SUPPLY CHAIN (Ordens de Compra - Reposição)
-- ==========================================================
INSERT INTO PURCHASE_ORDER (idPurchaseOrder, Created_At, Expected_Delivery_Date, Status, SUPPLIER_idSupplier, DISTRIBUTION_CENTER_idDistCenter) VALUES
(501, '2023-12-01', '2023-12-10', 'Delivered', 1, 1), -- Samsung -> Cajamar
(502, '2023-12-05', '2023-12-15', 'Delivered', 3, 1), -- Editora -> Cajamar
(503, '2024-01-10', '2024-01-20', 'Delivered', 2, 3), -- Apple -> PE
(504, '2024-02-01', '2024-02-10', 'Shipped', 4, 4), -- Móveis -> Sul
(505, '2024-02-15', '2024-02-25', 'Pending', 5, 2), -- Estrela -> BA
(506, '2024-01-20', '2024-01-30', 'Delivered', 1, 5), -- Samsung -> Rio
(507, '2024-02-20', '2024-03-01', 'Pending', 2, 1), -- Apple -> Cajamar
(508, '2023-11-20', '2023-11-30', 'Delivered', 5, 2), -- Estrela -> BA (Natal)
(509, '2024-02-10', '2024-02-20', 'Shipped', 3, 1), -- Editora -> Cajamar
(510, '2024-01-15', '2024-01-25', 'Delivered', 4, 4); -- Móveis -> Sul

INSERT INTO PO_ITEMS (idItem, Quantity, Unit_Cost, PRODUCT_idProduct, PURCHASE_ORDER_idPurchaseOrder) VALUES
(1, 100, 3000.00, 1, 501), (2, 50, 1800.00, 11, 501), -- Samsung
(3, 500, 80.00, 5, 502), -- Livros
(4, 30, 5000.00, 2, 503), -- iPhones
(5, 50, 200.00, 7, 504), -- Cadeiras
(6, 200, 500.00, 9, 505), -- LEGOs
(7, 40, 1800.00, 11, 506), -- TVs Rio
(8, 20, 6000.00, 4, 507), -- MacBooks
(9, 300, 20.00, 10, 508), -- Barbies
(10, 100, 40.00, 6, 509), -- Livros Clean Code
(11, 20, 150.00, 8, 510); -- Mesas

-- Reativar checagem de FK
SET FOREIGN_KEY_CHECKS = 1;
