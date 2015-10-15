CREATE DATABASE LaPradera ;
USE LaPradera;


CREATE TABLE tmozo(
	idmozo int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nom_mozo VARCHAR(50),
	ape_mozo VARCHAR(50),
	dni_mozo int,
	tel_mozo int,
	dir_mozo VARCHAR(100)
);

CREATE TABLE tmesa(
	idmesa int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	num_mesa VARCHAR(50),
	idmozo int,
	FOREIGN KEY (idmozo) REFERENCES tmozo(idmozo)
);

CREATE TABLE tcliente(
	idcliente int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nom_cli VARCHAR(50),
	ape_cli VARCHAR(50),
	dni_cli int,
	tel_cli int,
	dir_cli VARCHAR(100)
);
	
CREATE TABLE tcategoria(
	idcate int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nom_cate VARCHAR(50)
);

CREATE TABLE tplato_bebida(
	idplato_bebida int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nom_plato_beb VARCHAR(50),
	prec_uni DOUBLE,
	idcate int,
	FOREIGN KEY (idcate) REFERENCES tcategoria(idcate)
);


CREATE TABLE tpedido(
	idpedido int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	idmesa int,
	idcliente int,
	fecha DATE,
	hora TIME,
	FOREIGN KEY (idmesa) REFERENCES tmesa(idmesa),
	FOREIGN KEY (idcliente) REFERENCES tcliente(idcliente)
);

CREATE TABLE tdetallepedido(
	idpedido int,
	idplato_bebida int,
	cantidad int,
	sub_total DOUBLE,
	descuento DOUBLE,	
	FOREIGN KEY (idplato_bebida) REFERENCES tplato_bebida(idplato_bebida),
	FOREIGN KEY (idpedido) REFERENCES tpedido(idpedido)
);

CREATE TABLE tgastos(
	idgasto int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nom_gasto VARCHAR(50),
	monto DOUBLE,
	cantidad int,
	sub_total DOUBLE,
	fecha DATE
);


CREATE TABLE tflujo_caja(
	idflu_caj int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	monto_ini DOUBLE,
	gastos DOUBLE,
	cierre DOUBLE,
	fecha DATE,
	idgasto int,	
	FOREIGN KEY (idgasto) REFERENCES tgastos(idgasto)
);


CREATE TABLE tboleta(
	idboleta int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	idplato_bebida int,
	idcliente int,
	idmozo int,
	cantidad int,
	prec_u DOUBLE,
	sub_total DOUBLE,
	igv DOUBLE,
	tot_pagar DOUBLE,
	fecha DATE,
	hora TIME,
	idflu_caj int,
	FOREIGN KEY (idplato_bebida) REFERENCES tplato_bebida(idplato_bebida),
	FOREIGN KEY (idcliente) REFERENCES tcliente(idcliente),
	FOREIGN KEY (idmozo) REFERENCES tmozo(idmozo),
	FOREIGN KEY (idflu_caj) REFERENCES tflujo_caja(idflu_caj)
);


INSERT INTO `tmozo`(`nom_mozo`, `ape_mozo`, `dni_mozo`, `tel_mozo`, `dir_mozo`) VALUES ("Kristiam","Jimenez",45612784,964784512,"Av. Siempre Viva 666 - Springfield");
INSERT INTO `tmozo`(`nom_mozo`, `ape_mozo`, `dni_mozo`, `tel_mozo`, `dir_mozo`) VALUES ("Juan","Perez",48642658,98712345,"Av. Mariscal Castilla 222 - El Tambo");
INSERT INTO `tmozo`(`nom_mozo`, `ape_mozo`, `dni_mozo`, `tel_mozo`, `dir_mozo`) VALUES ("Kristiam","Jimenez",35869874,96325874,"Av. Juan Cabral 321 - Chilca");




