INSERT INTO `CLIENTS` (Address, ContactNumber, Email) VALUES 
('Rua das Flores, 123', '11999990001', 'joao.silva@email.com'),
('Av. Paulista, 1000', '11999990002', 'maria.santos@email.com'),
('Rua Augusta, 500', '11999990003', 'pedro.oliveira@email.com'),
('Rua da Mooca, 88', '11999990004', 'ana.costa@email.com'),
('Alameda Santos, 200', '11999990005', 'carlos.pereira@email.com'),
('Rua Oscar Freire, 10', '11999990006', 'lucia.souza@email.com'),
('Av. Faria Lima, 400', '11999990007', 'contato@techsolutions.com'),
('Rua Vergueiro, 900', '11999990008', 'logistica@rapido.com.br'),
('Av. Ibirapuera, 22', '11999990009', 'marcos.rocha@email.com'),
('Rua Pamplona, 123', '11999990010', 'julia.mendes@email.com'),
('Av. Brasil, 500', '11999990011', 'frota@supermercados.com'),
('Rua Tutia, 45', '11999990012', 'roberto.almeida@email.com'),
('Av. 23 de Maio, 100', '11999990013', 'transporte@viagens.com'),
('Rua Cubatão, 99', '11999990014', 'fernanda.lima@email.com'),
('Rua Domingos, 12', '11999990015', 'ricardo.gomes@email.com'),
('Av. Rebouças, 300', '11999990016', 'admin@construcao.com.br'),
('Rua Bela Cintra, 44', '11999990017', 'patricia.dias@email.com'),
('Av. Europa, 77', '11999990018', 'suporte@ti.com.br'),
('Rua Haddock Lobo, 11', '11999990019', 'lucas.nunes@email.com'),
('Av. Estado, 4000', '11999990020', 'logistica@express.com');

INSERT INTO `INDIVIDUAL_CLIENTS` (CLIENTS_idClients, CPF, Name, BirthDate) VALUES
(1, '11122233301', 'João Silva', '1985-05-10'),
(2, '11122233302', 'Maria Santos', '1990-08-20'),
(3, '11122233303', 'Pedro Oliveira', '1978-12-15'),
(4, '11122233304', 'Ana Costa', '1995-02-28'),
(5, '11122233305', 'Carlos Pereira', '1982-06-30'),
(6, '11122233306', 'Lucia Souza', '1988-11-11'),
(9, '11122233309', 'Marcos Rocha', '1992-04-05'),
(10, '11122233310', 'Julia Mendes', '1998-09-09'),
(12, '11122233312', 'Roberto Almeida', '1980-01-25'),
(14, '11122233314', 'Fernanda Lima', '1987-07-07'),
(15, '11122233315', 'Ricardo Gomes', '1993-03-15'),
(17, '11122233317', 'Patricia Dias', '1984-10-10'),
(19, '11122233319', 'Lucas Nunes', '1996-12-01');

INSERT INTO `CORPORATE_CLIENTS` (CLIENTS_idClients, CNPJ, TradeName, Industry) VALUES
(7, '99000111000107', 'Tech Solutions', 'Technology'),
(8, '99000111000108', 'Rápido Logística', 'Logistics'),
(11, '99000111000111', 'Supermercados Big', 'Retail'),
(13, '99000111000113', 'Viagens Brasil', 'Tourism'),
(16, '99000111000116', 'Construtora Forte', 'Construction'),
(18, '99000111000118', 'TI Inovação', 'Technology'),
(20, '99000111000120', 'Express Entregas', 'Logistics');

INSERT INTO `VEHICLES` (LicensePlate, Brand, Model, Year, CLIENTS_idClients) VALUES
('ABC1234', 'Toyota', 'Corolla', 2020, 1),
('DEF5678', 'Honda', 'Civic', 2019, 2),
('GHI9012', 'Ford', 'Fiesta', 2015, 3),
('JKL3456', 'Chevrolet', 'Onix', 2021, 4),
('MNO7890', 'Volkswagen', 'Golf', 2018, 5),
('PQR1234', 'Hyundai', 'HB20', 2022, 6),
('STU5678', 'Fiat', 'Ducato', 2021, 8),
('VWX9012', 'Fiat', 'Fiorino', 2020, 8),
('YZA3456', 'Renault', 'Kwid', 2019, 9),
('BCD7890', 'Jeep', 'Compass', 2021, 10),
('EFG1234', 'Mercedes', 'Sprinter', 2019, 11),
('HIJ5678', 'Nissan', 'Kicks', 2020, 12),
('KLM9012', 'Marcopolo', 'Volare', 2018, 13),
('NOP3456', 'Peugeot', '208', 2022, 14),
('QRS7890', 'Chevrolet', 'Tracker', 2021, 15),
('TUV1234', 'Ford', 'Ranger', 2020, 16),
('WXY5678', 'Honda', 'HR-V', 2019, 17),
('ZAB9012', 'Volkswagen', 'Saveiro', 2018, 18),
('CDE3456', 'Fiat', 'Mobi', 2020, 19),
('FGH7890', 'Scania', 'R450', 2021, 20);

INSERT INTO `SERVICE_TEAMS` (TeamName, AverageRating, PerformanceScore) VALUES
('Alpha Team (Engine)', 4.85, 9.5),
('Beta Team (Brakes)', 4.20, 8.0),
('Gamma Team (General)', 3.90, 7.5),
('Delta Team (Eletrics)', 4.95, 9.8);

INSERT INTO `MECHANICS` (Name, Address, Specialty, BirthDate, SERVICE_TEAMS_idSERVICE_TEAMS) VALUES
('Carlos "Motor" Silva', 'Rua das Bielas, 45 - Mooca', 'Heavy Engines', '1975-03-12', 1),
('Roberto "Graxa"', 'Av. dos Pistões, 890 - Ipiranga', 'Transmission', '1982-07-24', 1),
('Jorge "Freio"', 'Travessa da Pastilha, 12 - Centro', 'Brakes & Suspension', '1988-11-05', 2),
('Amanda Souza', 'Rua da Injeção Eletrônica, 300 - Vila Mariana', 'General Maintenance', '1995-02-18', 2),
('Estagiário Junior', 'Alameda do Aprendiz, 10 - Tatuapé', 'Oil & Filters', '2004-06-01', 3),
('Dr. Paulo Eletro', 'Av. Voltagem Alta, 220 - Brooklin', 'Advanced Electronics', '1980-09-30', 4);

INSERT INTO `PARTS` (PartName, PartDescription, UnitPrice, StockQuantity) VALUES
('Óleo Sintético 5W30', 'Óleo de alta performance para motores modernos', 50.00, 100),
('Filtro de Óleo', 'Filtro padrão universal', 25.00, 200),
('Pastilha de Freio (Par)', 'Pastilhas de cerâmica dianteiras', 120.00, 50),
('Disco de Freio', 'Disco ventilado', 180.00, 30),
('Bateria 60Ah', 'Bateria livre de manutenção', 450.00, 15),
('Alternador', 'Alternador 12V 90A', 800.00, 5),
('Amortecedor Dianteiro', 'Amortecedor a gás', 350.00, 20),
('Correia Dentada', 'Kit correia + tensor', 200.00, 40),
('Vela de Ignição (Jogo)', 'Jogo com 4 velas Iridium', 150.00, 60),
('Pneu 175/65 R14', 'Pneu para carros compactos', 300.00, 80);

INSERT INTO `SERVICES` (Description, StandardLaborPrice, StandardLaborTime) VALUES
('Troca de Óleo Completa', 80.00, 0.50),
('Substituição de Pastilhas', 150.00, 1.00),
('Troca de Bateria', 50.00, 0.25),
('Alinhamento e Balanceamento', 120.00, 1.00),
('Retífica de Motor', 2500.00, 16.00),
('Diagnóstico Eletrônico', 200.00, 1.50),
('Troca de Amortecedores', 300.00, 2.00),
('Revisão Geral 10k', 400.00, 3.00);

INSERT INTO `WORK_ORDERS` (Status, IssueDate, Deadline, TotalValue, SERVICE_TEAMS_idSERVICE_TEAMS, VEHICLES_idVehicles) VALUES
('Finished', '2023-01-10', '2023-01-10', 255.00, 3, 1),
('Finished', '2023-02-15', '2023-02-15', 500.00, 2, 2),
('Finished', '2023-03-20', '2023-03-22', 1200.00, 1, 7),
('Finished', '2023-04-05', '2023-04-05', 130.00, 3, 4),
('Finished', '2023-05-10', '2023-05-12', 3500.00, 1, 20),
('Finished', '2023-06-15', '2023-06-15', 200.00, 4, 10),
('Finished', '2023-07-20', '2023-07-21', 650.00, 2, 3),
('Finished', '2023-08-01', '2023-08-01', 500.00, 3, 9),
('In_Progress', '2023-09-10', '2023-09-12', 0.00, 1, 16),
('Waiting_Parts', '2023-09-11', '2023-09-15', 0.00, 4, 6),
('Open', '2023-09-12', NULL, 0.00, 3, 5),
('Finished', '2023-01-15', '2023-01-15', 180.00, 3, 12),
('Finished', '2023-02-20', '2023-02-20', 250.00, 2, 14),
('Finished', '2023-03-25', '2023-03-26', 900.00, 1, 8),
('Finished', '2023-04-10', '2023-04-10', 150.00, 4, 15),
('Finished', '2023-05-15', '2023-05-16', 450.00, 2, 17),
('Finished', '2023-06-20', '2023-06-21', 600.00, 1, 13),
('Finished', '2023-07-25', '2023-07-25', 300.00, 3, 19),
('In_Progress', '2023-09-13', '2023-09-14', 0.00, 2, 18),
('Open', '2023-09-14', NULL, 0.00, 1, 11);

INSERT INTO `WORK_ORDER_PARTS` (WORK_ORDERS_idWORK_ORDERS, PARTS_idPARTS, Quantity, HistoricalPartPrice) VALUES
(1, 1, 4, 50.00),
(1, 2, 1, 25.00),
(2, 3, 1, 120.00),
(3, 6, 1, 800.00),
(3, 5, 1, 400.00),
(5, 1, 20, 50.00),
(5, 8, 1, 200.00),
(6, 9, 1, 150.00),
(7, 4, 2, 180.00),
(12, 1, 3, 50.00),
(14, 7, 2, 350.00),
(17, 5, 2, 450.00);

INSERT INTO `WORK_ORDER_SERVICES` (WORK_ORDERS_idWORK_ORDERS, SERVICES_idSERVICES, Quantity, HistoricalServicePrice, EstimatedServiceDuration) VALUES
(1, 1, 1, 80.00, 0.5),
(2, 2, 1, 150.00, 1.0),
(3, 6, 1, 200.00, 1.5),
(5, 5, 1, 2500.00, 16.0),
(6, 6, 1, 200.00, 1.5),
(7, 4, 1, 120.00, 1.0),
(12, 1, 1, 80.00, 0.5),
(14, 7, 1, 300.00, 2.0),
(17, 3, 1, 50.00, 0.25);
