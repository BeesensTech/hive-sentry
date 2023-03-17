-- Criando banco de dados Hive_Sentry
CREATE DATABASE Hive_Sentry;

-- Selecionando o banco de dados Hive_Sentry
USE Hive_Sentry;

-- Criando a tabela tbCadastro, para armazenar os dados do usuário
CREATE TABLE tbCadastro(
idCadastro INT PRIMARY KEY AUTO_INCREMENT,
nomeEmpresa VARCHAR(100) NOT NULL,
cnpj CHAR(14) NOT NULL,
nomeResponsavel VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL,
senha VARCHAR(20) NOT NULL,
telefoneResposavel CHAR(11) NOT NULL
);

-- Criando a tabela tbSensor, para identificar os sensores utilizados
CREATE TABLE tbSensor(
idSensor INT PRIMARY KEY AUTO_INCREMENT,
tipoSensor VARCHAR(20) NOT NULL,
statusSensor CHAR(10) NOT NULL, 
CONSTRAINT chk_status CHECK(statusSensor IN ('Ativo', 'Inativo', 'Manutenção')),
localSensor CHAR(8) NOT NULL,
CONSTRAINT chk_local CHECK(localSensor IN('Interior', 'Exterior'))
);

-- Criando a tabela tbRegistroColmeia, para armazenar os dados coletados da colméia
CREATE TABLE tbRegistroColmeia(
idRegistro INT PRIMARY KEY AUTO_INCREMENT,
dataRegistro DATE NOT NULL,
horaRegistro TIME NOT NULL,
temperaturaInterna DECIMAL (4,2) NOT NULL,
temperaturaExterna DECIMAL (4,2) NOT NULL,
idCadastro INT NOT NULL
);

-- Inserts nas tabela tbCadastro
INSERT INTO tbCadastro VALUES
    (null,'Bayer','19285647823486','Junior Santos','santosjunior@bayer.com','e4576bgdfgd','11967859873'),
    (null,'MaisMel LTDA','28639751904723','Maria Sanchez','atendimento@maismel.com.br','sgedryhe4','11956123487'),
    (null,'Pensamento Verde','65742867591045','Lissandra Camargo','camargo.lissandra@pensamentoverde.net','gdfgdfgse','11978965783'),
    (null,'Apiário São Judas','78695473871298','Rodrigo Almeida','atendimento@apiariosaojudas.com','hrthr5h4e','21976548902'),
    (null,'Caravelas Mel','87624567981234','Helena Silva','helena_silva@caravelasmel.com.br','4t5eyhhb','21967589456'),
    (null,'Agrimel','89065789345213','Guilherme Torres','gui.torres@agrimel.com','rh65ujqr3se5','51967834512'),
    (null,'Apiário Zumbee','78695678123945','Bruno Schneider','atendimento@apiariozumbee.com.br','e4yaeye5ay','43967548234'),
    (null,'São Gabriel Armazém','09763561387654','Aria Vales','sgarmazem@gmail.com','hrtu5yqtf','11965472875'),
    (null,'Mel Holanda','87346543871296','Diana Borges','atendimentomelholanda@outlook.com','dcq2e2354','44992365437'),
    (null,'Agrilandia','87543765890123','Jorge Fernandes','fern.jorge@agrilandia.net','gaw4y45iui','11956347823');
    
-- Exibindo todos os dados da tabela tbCadastro
SELECT * FROM tbCadastro;

-- Inserts da tabela tbSensor
INSERT INTO tbSensor VALUES
	(null,'Temperatura','Inativo','Interior'),
	(null,'Temperatura','Inativo','Exterior'),
    (null,'Temperatura','Manutenção','Interior');
    
-- Exibindo todos os dados da tabela tbSensor
SELECT * FROM tbSensor;
    
-- Inserts na tabela tbRegistroColmeia
INSERT INTO tbRegistroColmeia VALUES
	(null,'2023-01-24','06:00:00','31.1','20',7),
	(null,'2023-01-24','06:30:00','31.2','20',7),
	(null,'2023-01-24','07:00:00','31.3','21',7),
	(null,'2023-01-24','07:30:00','31.1','20',7),
	(null,'2023-01-24','08:00:00','31','20',7),
	(null,'2023-01-24','08:30:00','31.2','20',7),
	(null,'2023-01-24','09:00:00','31.2','20',7),
	(null,'2023-01-24','09:30:00','31.5','21',7),
	(null,'2023-01-24','10:00:00','31.7','22',7),
	(null,'2023-01-24','10:30:00','31.6','22',7),
	(null,'2023-01-24','11:00:00','31.6','22',7),
	(null,'2023-01-24','11:30:00','31.4','21.5',7),
	(null,'2023-01-24','12:00:00','31.4','21',7),
	(null,'2023-01-24','12:30:00','31.6','21.5',7),
	(null,'2023-01-24','13:00:00','31.7','22',7),
	(null,'2023-01-24','13:30:00','33','23.5',7),
	(null,'2023-01-24','14:00:00','33.5','25',7),
	(null,'2023-01-24','14:30:00','33.8','25.5',7),
	(null,'2023-01-24','15:00:00','33.8','26',7),
	(null,'2023-01-24','15:30:00','34','27',7),
	(null,'2023-01-24','16:00:00','34.5','28',7),
	(null,'2023-01-24','16:30:00','34.7','28.5',7),
	(null,'2023-01-24','17:00:00','35','29',7),
	(null,'2023-01-24','17:30:00','34.9','28.5',7),
	(null,'2023-01-24','18:00:00','34.8','28',7);

-- Exibindo todos os dados da tabela tbRegistroColmeia
SELECT * FROM tbRegistroColmeia;

    