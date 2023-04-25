-- CREAMOS BASE DE DATOS
CREATE DATABASE Telovendo;

-- EJECUTAMOS BASE DE DATOS
USE Telovendo;

-- CREAMOS TABLAS:
CREATE TABLE cliente (
  codigo VARCHAR(20) NOT NULL UNIQUE,
  nombres VARCHAR(255) NOT NULL,
  apellidos VARCHAR(255) NOT NULL,
  telefono VARCHAR (12),
  direccion VARCHAR(255),
  comuna VARCHAR(100),
  correo_electronico VARCHAR(255),
  fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE producto (
  SKU VARCHAR(255) NOT NULL UNIQUE,
  nombre VARCHAR(255) NOT NULL,
  categoria VARCHAR(255),
  productor VARCHAR(255),
  cantidad_en_stock INT
);
CREATE TABLE vendedor (
  RUN VARCHAR(255) NOT NULL UNIQUE,
  nombre VARCHAR(255) NOT NULL,
  apellidos VARCHAR(255) NOT NULL,
  fecha_nacimiento DATE,
  seccion ENUM('ventas', 'marketing', 'administracion', 'jefatura') NOT NULL
);

-- CREACIÓN DE USUARIO Y PERMISOS
CREATE USER 'admintienda'@'localhost' IDENTIFIED BY 'admintienda';
GRANT ALL PRIVILEGES ON Telovendo.* TO 'admintienda'@'localhost';

-- TABLA PRODUCTOS INFO: 
-- IMPRESORAS
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('45647', 'Impresora EcoTank L121', 'Impresoras', 'Epson', '6')
;
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('38706', 'Impresora EcoTank M1180', 'Impresoras', 'Epson', '30')
;
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('21660', 'Impresosra EcoTank L805', 'Impresoras', 'Epson', '20')
;
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('45387', 'TM-T20IIIL-001 Serial', 'Impresoras', 'Epson', '40')
;
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('46134', 'Impresora Led Color HL-L3270CDW', 'Impresoras', 'Brother', '9')
;
-- MONITORES
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('48357', 'Monitor Gamer 27" UltraGear', 'Monitores', 'LG', '20')
;
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('48356', 'Monitor Gamer 28" Odyssey G7', 'Monitores', 'Samsung', '5')
;
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('48343', 'Monitor 34" Curvo, WQHD', 'Monitores', 'Samsung', '15')
;
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('48342', 'Monitor 27" Full HD', 'Monitores', 'Samsung', '60')
;
INSERT INTO Producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('48019', 'Monitor Gamer 27", Full HD', 'Monitores', 'MSI', '32')
;

-- MOUSE
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('47902', 'Mouse HP 150 Wireless Black', 'Mouse', 'HP', '10')
;
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('14853', 'Mouse Sculpt Ergonomic Wireless', 'Mouse', 'Microsoft', '19')
;
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('21504', 'Mouse For Life Wireless Negro', 'Mouse', 'Kensington', '24')
;
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('20906', 'Mouse DX-110 Óptico USB Negro', 'Mouse', 'Genius', '27')
;
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('21653', 'Mouse USB Retráctil Micro Traveler v2', 'Mouse', 'Genius', '15')
;

-- TORRE
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('47122', 'Desktop Gamer Blue Demon Intel i3-10100F 8GB 1TB NVIDIA PH-GTX 1650 4GB', 'Torre', 'Gear', '8')
;
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('34978', 'Desktop Intel Celeron J4005 4GB 1TB', 'Torre', 'Gear', '16')
;
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('37545', 'Desktop Intel Core i5-10400 8GB 1TB DVDRW', 'Torre', 'Gear', '7')
;
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('46294', 'Desktop Gamer AMD Ryzen 5 5600X 16GB 1TB + 480GB SSD NVIDIA RTX 2060 12GB', 'Torre', 'Gear', '18')
;
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock) 
VALUES ('47144', 'Desktop Gamer AMD Ryzen 5 5600X 8GB 1TB NVIDIA GTX1660S', 'Torre', 'Gear', '4')
;

-- TABLA VENDEDOR INFO: 
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion) 
VALUES ('23345678-9', 'Ricardo', 'Pérez González', '1990-05-15', 'ventas')
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion) 
VALUES ('18458206-6', 'Mauricio', 'Morales Veas', '1994-03-17', 'jefatura')
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion) 
VALUES ('9876543-9', 'Jose', 'González Pérez', '1997-07-22', 'administracion')
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion) 
VALUES ('1234567-2', 'Pablo', 'Pérez Pereira', '1991-02-15', 'ventas')
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion) 
VALUES ('22345678-1', 'Karem', 'Ortiz Vergara', '1993-05-27', 'ventas')
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion) 
VALUES ('8765432-1', 'Jason', 'Kruger González', '1960-05-22', 'jefatura')
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion) 
VALUES ('7654321-9', 'Ignacia', 'Pérez González', '1977-02-10', 'marketing')
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion) 
VALUES ('16543789-0', 'Lala', 'Lolo Guerra', '1988-12-11', 'marketing')
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion) 
VALUES ('1234567-9', 'Camila', 'Vergara Plaza', '1977-09-10', 'ventas')
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion) 
VALUES ('22345678-9', 'Juan', 'González Pérez', '1999-05-19', 'ventas')
;

;

-- TABLA CLIENTE INFO: 
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro)
VALUES ( '0000001', 'Magdalena Pilar','Montecino Leal' , 4000400,'los campos 57','Casablanca',' magda@gmail.com',now());
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro)
VALUES ( '0000002', 'Luis Alberto','Martinez Roa' , 56970809090,'avenida los pinos 7','Casablanca',' lluis@gmail.com',now());
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro)
VALUES ( '0000003', 'Maria Luisa','Mantilla Loa' , 5697080708,'aromo 67','Llay-llay',' maria@gmail.com',now());
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro)
VALUES ( '0000004', 'Marcos ','gonzalez Gonzalez' , 4000400,'calle las mantillas 100','Casablanca',' mamarcos@gmail.com',now());
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro)
VALUES ( '0000005', 'Mónica','Lara de Roca' , 4000400,'las pataguas 87','Olmue',' mmomoni@gmail.com',now());
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro)
VALUES ( '0000006', 'Gonzalo Miguel','Matinez Ramo' , 4000400,'rio choa 9090','Casablanca',' gonza@gmail.com',now());
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro)
VALUES ( '0000007', 'Orlando','Montecino Perez' , 56978545403,'avenida principal 78','Quillota',' orlandoO@gmail.com',now());
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro)
VALUES ( '0000008', 'Roberto Francisco','Roa Loreto' , 56978980699,'los aromos 900','Quillota',' robFrco@gmail.com',now());
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro)
VALUES ( '0000009', 'Paola Flor','Amada del Rio' , 568978564545,'calle fuego 1343','Olmue',' delRio@gmail.com',now());
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro)
VALUES ( '0000010', 'Paolo ','Zarate Navarrete' , 56980809765,' rocas grande 230','Llay.llay',' zarate@gmail.com',now());

-- RAMA SIMON IMPORTANTE SUBIR PRIMERO YA QUE AGREGA LAS COLUMNAS NUEVAS (ejercicio grupl 02)
-- CREACION DE COLUMNAS NUEVAS
ALTER TABLE cliente
ADD COLUMN Total_Pagado INT NOT NULL DEFAULT '0';

ALTER TABLE vendedor
ADD COLUMN Salario INT NOT NULL DEFAULT '410000';

ALTER TABLE Producto
ADD COLUMN Precio INT NOT NULL DEFAULT '10000';

-- CREACION DE PRODUCTOS NUEVOS SSD
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('45565', 'Unidad SSD 500GB Sata3 2.5" CS900', 'SSD', 'PNY', '12', '42000');
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('27163', 'Unidad SSD 480GB Sata3 2.5" A400" CS900', 'SSD', 'KINGSTON', '14', '32000');
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('27162', 'Unidad SSD 240GB Sata3 2.5" A400" CS900', 'SSD', 'KINGSTON', '11', '22000');
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('28150', 'Unidad SSD 500GB Sata3 2.5" MX500', 'SSD', 'CRUCIAL', '27', '62000');
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('30966', 'Unidad SSD 240GB Sata3 2.5" BX500', 'SSD', 'CRUCIAL', '36', '21000');
-- CREACION DE PRODUCTOS NUEVOS RAM
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('33918', 'DDR4 4GB 2666MHz Value RAM', 'RAM', 'CRUCIAL', '33', '22000');
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('43964', 'DDR4 8GB 2666MHz Beast', 'RAM', 'KINGSTON', '28', '30000');
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('37117', 'DDR4 8GB 2666MHz Vengeance LPX', 'RAM', 'CORSAIR', '10', '31000');
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('46613', 'DDR4 8GB 3600MHz Vengeance LPX', 'RAM', 'CORSAIR', '27', '42000');
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('47666', 'DDR5 8GB 4800MHz Value RAM', 'RAM', 'CRUCIAL', '17', '48000');
-- CREACION DE PRODUCTOS NUEVOS PARLANTES (DE SONIDO)
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('48131', 'Parlante Bose Soundlink Revolve II Plateado', 'PARLANTES', 'BOSE', '40', '213390');
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('48130', 'Bose Portable Home Speaker Negro', 'PARLANTES', 'BOSE', '9', '397690');
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('48336', 'Parlante Pc DHS-2101 Gamer', 'PARLANTES', 'HP', '3', '14190');
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('48340', 'Parlante Pc DHS-2111 2.1 Gamer', 'PARLANTES', 'HP', '34', '7590');
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('48339', 'Parlante Pc SP-HF180 2.0 USB Negro', 'PARLANTES', 'Genius', '20', '8490');
-- CREACION DE PRODUCTOS NUEVOS CELULARES
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('47059', 'iPhone 14 Pro Max 512GB - Morado oscuro', 'CELULARES', 'Apple', '10', '1679990');
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('45456', 'iPhone 13 Pro Max 1TB - Verde alpino', 'CELULARES', 'Apple', '8', '1644990');
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('46882', 'Smartphone Galaxy Z Fold4 256GB/12GB 5G Beige Liberado', 'CELULARES', 'Samsung', '10', '1842990');
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('47921', 'Smartphone Galaxy S23 Ultra 512GB/12GB 5G Misty Lilac', 'CELULARES', 'Samsung', '5', '1599990');
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES ('43014', 'Smartphone Redmi 9C 32GB/2GB Gris Wom', 'CELULARES', 'Xiaomi', '18', '84990');


-- E) CREACION DE NUEVOS CLIENTES 
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro, Total_Pagado)
VALUES ( '0000011', 'Claudia Pia','Lopex Lopex' , 56987454563,'las canarias 57','Petorca',' pipia@gmail.com', now(), 300.000);
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro,Total_Pagado)
VALUES ( '0000012', 'Nelson Leonr','Lillo Portillo' , 56970809090,'la granja 107','Zapallar',' lillo@gmail.com',now(), 450.000);
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro,Total_Pagado)
VALUES ( '0000013', 'Paulina Mariel','Sierra Sierra' , 5697080708,'huerfanos 3160','Quillota',' sierras@gmail.com',now(), 340.900);
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro, total_pagado)
VALUES ( '0000014','Ricardo Miguel' ,'Canelo Canelo', 56983121234,'la cascada 324','Quilpue',' canelox@gmail.com',now(),500.000);
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro, total_pagado)
VALUES ( '0000015', 'Luis Ariel','Zaes Zaes' , 56987887654,'avenida la luz 01','Petorca',' zaesza@gmail.com',now(), 320.900);
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro, total_pagado)
VALUES ( '0000016', ' Ariel','Sanchez Lira' , 5698788760,'las rosas 230','Llay-llay',' Liraa@gmail.com',now(), 150.900);
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro, total_pagado)
VALUES ( '0000017', 'Luisa Andrea','lopez Roa' , 56987887740,'las docas 43','Olmue',' roaaxa@gmail.com',now(), 80.900);
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro, total_pagado)
VALUES ( '0000018', 'Martina ','Navarro Zarate' , 56987884355,'matlazincas 786','Olmue',' zamartinaa@gmail.com',now(), 320.900);
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro, total_pagado)
VALUES ( '0000019', 'Hugo Antonio','Romero Morales' , 56987543454,'bromelias 43','Llay-llay',' huguito@gmail.com',now(), 20.900);
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro, total_pagado)
VALUES ( '0000020', 'Federico ','Hidalgo Zapata' , 5698774254,'montañas del sur 6743','Catemu',' fedex@gmail.com',now(), 87.900);
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro, total_pagado)
VALUES ( '0000021', 'Manuela ','Casanova Casanova' , 56976545432,'monito del monte 0943','Catemu',' novacasa@gmail.com',now(), 23.000);
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro, total_pagado)
VALUES ( '0000022', 'Lucía ','Canelo Bahamontes' , 56976764536,'achupallas 200','Catemu', 'luciaB@gmail.com',now(), 10.000);
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro, total_pagado)
VALUES ( '0000023', 'Sofía Antonia ','Careiro Cea' , 56977654343,'las ciela 544','Llay-llay', 'ceaCareiroB@gmail.com',now(), 110.000);
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro, total_pagado)
VALUES ( '0000024', 'Felipe Antonio ','Morales Canelo' , 56977694340,'las heras 4044','Olmue', 'moralesCaneloB@gmail.com',now(), 48.000);
INSERT INTO cliente ( codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro, total_pagado)
VALUES ( '0000025', 'Samuel Reno ',' Canelo Morales' , 56910232341,'mermelada mora 432','Olmue', 'samuRenoB@gmail.com',now(), 98.900);

-- 10 venedores mas
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('23345678-0', 'Rodrigo', 'Pérez González', '1990-06-15', 'ventas', 510000)
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('18458209-6', 'Ignacio', 'Morales Veas', '1992-03-17', 'jefatura', 520000)
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('10876543-9', 'Luis', 'González Pérez', '1990-07-22', 'administracion', 530000)
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('1254567-2', 'Pedro', 'Pérez Pereira', '1998-02-15', 'ventas', 643000)
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('22745668-1', 'Karola', 'Ortiz Vergara', '1980-05-27', 'ventas', 750000)
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('8778432-6', 'Jackson', 'Pérez González', '1967-05-22', 'jefatura', 890000)
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('8954321-2', 'Francisca', 'González González', '1967-03-10', 'marketing', 650000)
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('19543989-4', 'Alvara', 'Flores Guerra', '1985-12-11', 'marketing', 760000)
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('1234598-9', 'Camilo', 'Plaza Plaza', '1970-09-10', 'ventas', 890334)
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('22545678-0', 'Ricardo', 'Plaza Pérez', '1998-05-12', 'ventas', 19540345)

-- EJERCICIO GRUPAL 03 - MODULO 03
-- A) 5 VENDORES NUEVOS MAURICIO
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('22367678-0', 'Ricardo', 'Molina Molina', '1990-10-23', 'ventas', 510000)
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('23498206-0', 'David', 'Beckham Rodriguez', '1990-02-17', 'jefatura', 520000)
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('19845543-0', 'WisinYandel', 'González Pérez', '1995-05-22', 'administracion', 5130000)
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('11098567-0', 'Eustakio', 'Londra Rauli', '1992-03-15', 'ventas', 530000)
;
INSERT INTO Vendedor (run, nombre, apellidos, fecha_nacimiento, seccion, salario) 
VALUES ('22746678-0', 'Carola', 'Altamirano Vergara', '1993-05-27', 'ventas', 5140000)
;

-- B) 5 CLIENTES NUEVOS ARACILY
insert into cliente (codigo, nombres, apellidos, telefono, direccion, comuna, correo_electronico, fecha_registro, Total_Pagado)
values ('0000026', 'Jorge Alberto', 'Zamora Roco', 56870906767, 'manpato 98', 'Quilpue','jorgeqhotmail.com', now(), 200.000),
('0000027', 'Amada de Jesus', 'Rosales Rosales', 9567316405, 'san francisco 86', 'Quillota','amadaqhotmail.com', now(), 250.000),
('0000028', 'Victor Hugo', 'Zapata Matus',95634543454, 'reyes martin 2345', 'Quilpue','vichu@hotmail.com', now(), 170.000 ),
('0000029', 'Sonia Gla', 'Rosales Navarro', 95687785643, 'la conquista 3321', 'Petorca','glas@hotmail.com', now(), 230.000 ),
('0000030', 'Guillermo felipe','Ayala Garcia',9562343243, 'Nos de mali  78','Lay-llay','guille@hotmail.com',now(), 380.000);

-- C) 5 PRODUCTOS NUEVOS RICARDO 
INSERT INTO producto (SKU, nombre, categoria, productor, cantidad_en_stock, Precio) 
VALUES 	('39568', 'Silla Gamer Wanku V2 Black/Red', 'Sillas Gamer', 'Gear Gamer', '25', '79990'),
		('39567', 'Silla Gamer Omilen V2 Black/Blue', 'Sillas Gamer', 'Gear Gamer', '10', '116990'),
		('39574', 'Silla Gamer Beigman V2 Black/Orange', 'Sillas Gamer', 'Gear Gamer', '5', '142990'),
		('37644', 'Silla Gamer ROG Chariot Core', 'Sillas Gamer', 'Asus', '12', '345990'),
		('37645', 'Silla Gamer ROG Chariot (RGB)', 'Sillas Gamer', 'Asus', '4', '404990');
 
/* MANIPULACION DE DATOS
D) Identifique cual es el salario mínimo entre vendedores.
SELECT RUN, MIN(SALARIO) SALARIO_MINIMO
FROM VENDEDOR
GROUP BY RUN
ORDER BY SALARIO_MINIMO ASC;
E) Identifique cual es el salario máximo entre vendedores.
SELECT RUN, MAX(SALARIO) SALARIO_MAXIMO
FROM VENDEDOR
GROUP BY RUN
ORDER BY SALARIO_MAXIMO ASC;
F) Súmele el salario mínimo identificado al salario de todos los vendedores.
SELECT RUN, SALARIO + SUBQUERY.SALARIO_MINIMO AS SALARIO_TOTAL
FROM VENDEDOR
JOIN (
  SELECT RUN, MIN(SALARIO) AS SALARIO_MINIMO
  FROM VENDEDOR
  GROUP BY RUN
) AS SUBQUERY ON VENDEDOR.RUN = SUBQUERY.RUN;
G)
UPDATE producto
SET cantidad_en_stock = 0
WHERE precio = (SELECT MAX(precio) FROM producto);
H) Cree una tabla que contenga solo los clientes que han pagado más que el promedio.
select codigo, nombres, apellidos ,Total_Pagado from cliente
where Total_Pagado > (select avg(Total_Pagado) from cliente) ;
I) ACTUALIZAMOS DATOS DE 3 PRODUCTOS:
UPDATE Producto
SET nombre = 
    CASE 
        WHEN SKU = '14853' THEN 'MOUSE ROJO DIABLITO'
        WHEN SKU = '20906' THEN 'MOUSE AZUL BALLENA'
        WHEN SKU = '21504' THEN 'MOUSE NARANJO SOL'
        ELSE nombre
    END,
    productor = 'Gatitos',
    precio = 
    CASE 
        WHEN SKU = '14853' THEN 4000
        WHEN SKU = '20906' THEN 3000
        WHEN SKU = '21504' THEN 3500
        ELSE precio
    END
WHERE SKU IN ('14853', '20906', '21504');
J) Actualice los datos de tres vendedores.
UPDATE VENDEDOR SET NOMBRE = 'Ramazzoti' WHERE RUN = '19845543-0';
UPDATE VENDEDOR SET APELLIDOS = 'Ali Balenciaga' WHERE RUN = '11098567-0';
UPDATE VENDEDOR SET NOMBRE = 'Brayatan' WHERE RUN = '22746678-0';
K) Actualice los datos de 1 cliente.
update cliente 
set nombres = 'Magda', apellidos = 'Leal Montecino', telefono=56976545463, direccion ='los alerces 57', Total_Pagado = 355.000
where codigo = '0000001';
L) Seleccione el nombre y el apellido de los vendedores que tienen un salario superior al promedio.
SELECT NOMBRE, APELLIDOS
FROM VENDEDOR
WHERE SALARIO > (SELECT AVG(SALARIO) FROM VENDEDOR);
M) Indique cuál es el cliente con mayor gasto.
select codigo, nombres, MAX(Total_Pagado) from cliente;
*/

-- EJERCICIO 04 - MODULO 03
-- CREACION DE TABLA Y ENLACE A LA TABLA CLIENTES

CREATE TABLE Cuentas (
  codigo VARCHAR(20) NOT NULL UNIQUE,
  saldo INT DEFAULT 0,
  PRIMARY KEY (codigo),
  FOREIGN KEY (codigo) REFERENCES cliente (codigo)
);
-- CARGA DE DATOS

INSERT INTO Cuentas (codigo, saldo) VALUES ('0000001', '8500');
INSERT INTO Cuentas (codigo, saldo)	VALUES ('0000002', '4400');
INSERT INTO Cuentas (codigo, saldo) VALUES ('0000003', '7700');
INSERT INTO Cuentas (codigo, saldo) VALUES ('0000004', '8890');
INSERT INTO Cuentas (codigo, saldo) VALUES ('0000005', '2400');
INSERT INTO Cuentas (codigo, saldo) VALUES ('0000006', '8700');
INSERT INTO Cuentas (codigo, saldo) VALUES ('0000007', '1200');
INSERT INTO Cuentas (codigo, saldo) VALUES ('0000008', '9900');

-- TRANSACCION PARA CADA TRANSFERENCIA CON VALIDACION
START TRANSACTION;

-- Seleccionar el saldo actual de la cuenta de origen y de destino
SELECT saldo INTO @saldo_origen FROM cuentas WHERE cliente = 'cliente_origen';
SELECT saldo INTO @saldo_destino FROM cuentas WHERE cliente = 'cliente_destino';

-- Verificar que la cuenta de origen tenga suficiente saldo
IF @saldo_origen >= cantidad_a_transferir THEN
    -- Actualizar los saldos de la cuenta de origen y de destino
    UPDATE cuentas SET saldo = @saldo_origen - cantidad_a_transferir WHERE cliente = 'cliente_origen';
    UPDATE cuentas SET saldo = @saldo_destino + cantidad_a_transferir WHERE cliente = 'cliente_destino';
    -- Confirmar la transacción
    COMMIT;
ELSE
    -- Si no hay suficiente saldo en la cuenta de origen, cancelar la transacción
    ALERT 'Sin Saldo Suficiente para transferir'
    ROLLBACK;
END IF;
-- DEFINICION DE LOS EJERCICIOS

-- SET transferencia = 100;
-- SET codigo_origen = 001;
-- SET codigo_destino = 002;
