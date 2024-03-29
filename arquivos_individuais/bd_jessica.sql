create database apicultura;

use apicultura;

create table cadastroUsuario(
idUsuario int primary key auto_increment,
nomeEmpresa varchar(100),
cnpj char(14),
nomeResponsavel varchar(100),
emailResponsavel varchar(100),
senha varchar(20),
telefoneResponsavel char(11)
);
insert into cadastroUsuario values
    (null,'Bayer','19285647823486','Junior Santos','santosjunior@bayer.com','si34da753','11967859873'),
    (null,'MaisMel LTDA','28639751904723','Maria Sanchez','atendimento@maismel.com.br','e4576bgdfgd','11956123487'),
    (null,'Pensamento Verde','65742867591045','Lissandra Camargo','camargo.lissandra@pensamentoverde.net','sgedryhe4','11978965783'),
    (null,'Apiário São Judas','78695473871298','Rodrigo Almeida','atendimento@apiariosaojudas.com','gdfgdfgse','21976548902'),
    (null,'Caravelas Mel','87624567981234','Helena Silva','helena_silva@caravelasmel.com.br','hrthr5h4e','21967589456'),
    (null,'Agrimel','89065789345213','Guilherme Torres','gui.torres@agrimel.com','4t5eyhhb','51967834512'),
    (null,'Apiário Zumbee','78695678123945','Bruno Schneider','atendimento@apiariozumbee.com.br','rh65ujqr3se5','43967548234'),
    (null,'São Gabriel Armazém','09763561387654','Aria Vales','sgarmazem@gmail.com','e4yaeye5ay','11965472875'),
    (null,'Mel Holanda','87346543871296','Diana Borges','atendimentomelholanda@outlook.com','dcq2e2354','44992365437'),
    (null,'Agrilandia','87543765890123','Jorge Fernandes','fern.jorge@agrilandia.net','gaw4y45iui','11956347823');

create table registroColmeia (
idregistro int primary key auto_increment,
dataRegistro date,
horarioRegistro time,
tempInterna decimal(4,2),
tempUsuario int
);
insert into registroColmeia values
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


create table sensores (
idSensor int primary key auto_increment,
tipoSensor varchar(20) not null,
statusSensor varchar(10) not null, constraint chksatussensor check(statusSensor in ('nativo','inativo')),
localSensor varchar(20)
);

insert into sensores values
	(null,'temperatura','inativo','interior'),
	(null,'temperatura','inativo','exterior');
    
select * from cadastroUsuario;
select * from login order by idUsuario;
select * from registroColmeia;
select * from sensores;
    
select * from cadastroUsuario where emailResponsavel like '%.net';
select * from cadastroUsuario where emailResponsavel like '%.com';
select * from cadastroUsuario where emailResponsavel like '%.com.br';