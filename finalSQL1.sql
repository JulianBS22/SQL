--create schema Prueba_DLL authorization zmqcobtm;



create table prueba_dll.Vehículo (
	idVehículo serial not null,
	idFabricante varchar (10) not null,
	idMarca varchar(10) not null,
	idModelo varchar (10) not null,
	color varchar(10) null default 'white',
	matricular varchar (10) not null,
	añocompra integer not null,
	kilómetros integer not null,
	idAseguradora varchar (20) not null,
	idRevisiones integer null default 0,
	constraint Vehículo_PK primary key (idVehículo)

	
);

alter table prueba_dll.Vehículo add constraint idRevisiones foreign key (idRevisiones)
	references prueba_dll.Revisiones (idrevisiones);

alter table prueba_dll.Vehículo add constraint idModelo foreign key (idModelo)
	references prueba_dll.Modelo (idModelo);

alter table prueba_dll.Vehículo add constraint idMarca foreign key (idMarca)
	references prueba_dll.Marca (idMarca);

alter table prueba_dll.Vehículo add constraint idAseguradora foreign key (idAseguradora)
	references prueba_dll.Aseguradora (idAseguradora);

alter table prueba_dll.Vehículo add constraint idFabricante foreign key (idFabricante)
	references prueba_dll.Fabricante (idFabricante);





---hacerlo con alter table las foreign key que faltan


insert into prueba_dll.Vehículo (idVehículo, idFabricante, idMarca,idModelo,color,matricular, añocompra,kilómetros,idAseguradora,idRevisiones)
values (1,1,1,1, 'blanco', '2350HZG',2015,150000,1,1);

insert into prueba_dll.vehículo (idVehículo, idfabricante, idmarca,idmodelo,color,matricular,añocompra,kilómetros,idaseguradora,idrevisiones)
values (2,1,1,2, 'blanco', '8750HZG',2015,160000,1,2);


insert into prueba_dll.vehículo (idVehículo, idfabricante, idmarca,idmodelo,color,matricular,añocompra,kilómetros,idaseguradora,idrevisiones)
values (3,1,3, 4, 'blanco', '5315jjb',2018,100000,1, 2);


insert into prueba_dll.vehículo (idVehículo, idfabricante, idmarca,idmodelo,color,matricular,añocompra,kilómetros,idaseguradora,idrevisiones)
values (4,1,3,4, 'negro', '2351jjb',2018,110000,1, 2);



insert into prueba_dll.vehículo (idVehículo, idfabricante, idmarca,idmodelo,color,matricular,añocompra,kilómetros,idaseguradora,idrevisiones)
values (5,4,4,4, 'azul', '7500JJL',2018,90000,2, 2);



insert into prueba_dll.vehículo (idVehículo, idfabricante, idmarca,idmodelo,color,matricular,añocompra,kilómetros,idaseguradora,idrevisiones)
values (6,5,5,5, 'negro', '0025KKS',2019,50000,2, 2);


insert into prueba_dll.vehículo (idVehículo, idfabricante, idmarca,idmodelo,color,matricular,añocompra,kilómetros,idaseguradora,idrevisiones)
values (7,5,5,6, 'negro', '1557KKL',2019,57000,2, 2);


insert into prueba_dll.vehículo (idVehículo, idfabricante, idmarca,idmodelo,color,matricular,añocompra,kilómetros,idaseguradora,idrevisiones)
values (8,7,5,7, 'blanco', '9885LTL',2021,100.000,1, 1);



--- creamos tabla fabricante
--drop table prueba_dll.fabricante ;

create table prueba_dll.Fabricante (

	idFabricante varchar (10) not null,
	nombreFabricante varchar (10) not null,
	idMarca varchar (10) not null,
	idModelo varchar (10) not null,
	constraint fabricante_PK primary key (idFabricante),
	constraint idMarca foreign key (idMarca)
	references Marca (idMarca),
	constraint idModelo foreign key (idModelo)
	references Modelo (idModelo)
	
);

alter table prueba_dll.Fabricante add constraint idMarca foreign key (idMarca)
	references prueba_dll.Marca (idMarca);

alter table prueba_dll.Fabricante add constraint idModelo foreign key (idModelo)
	references prueba_dll.Modelo (idModelo);

insert into prueba_dll.fabricante (idFabricante, nombrefabricante,idmarca,idmodelo)
values (1,'Toyota',1,1);

insert into prueba_dll.fabricante (idFabricante, nombrefabricante,idmarca,idmodelo)
values (2,'Toyota',1,2);

insert into prueba_dll.fabricante (idFabricante, nombrefabricante,idmarca,idmodelo)
values (3,'Toyota',3,3);

insert into prueba_dll.fabricante (idFabricante, nombrefabricante,idmarca,idmodelo)
values (4,'Mercedes',4,4);

insert into prueba_dll.fabricante (idFabricante, nombrefabricante,idmarca,idmodelo)
values (5,'Mercedes',4,5);

insert into prueba_dll.fabricante (idFabricante, nombrefabricante,idmarca,idmodelo)
values (6,'Mercedes',4,6);

insert into prueba_dll.fabricante (idFabricante, nombrefabricante,idmarca,idmodelo)
values (7,'Renault',5,7);





create table prueba_dll.Marca (

	idMarca varchar (10) not null,
	nombreMarca varchar (10) not null,
	idModelo varchar (10) not null,
	constraint Marca_PK primary key (idMarca),
	constraint idModelo foreign key (idModelo)
	references Modelo (idModelo)

);

insert into prueba_dll.Marca (idMarca, nombremarca,idmodelo)
values (1,'Toyota', 1);

insert into prueba_dll.Marca (idMarca, nombremarca,idmodelo)
values (2,'Toyota', 2);

insert into prueba_dll.Marca (idMarca, nombremarca,idmodelo)
values (3,'Lexus',3);

insert into prueba_dll.Marca (idMarca, nombremarca,idmodelo)
values (4,'Mercedes',4);

insert into prueba_dll.Marca (idMarca, nombremarca,idmodelo)
values (5,'Mercedes',5);

insert into prueba_dll.Marca (idMarca, nombremarca,idmodelo)
values (6,'Mercedes',5);

insert into prueba_dll.Marca (idMarca, nombremarca,idmodelo)
values (7,'Mercedes',6);

insert into prueba_dll.Marca (idMarca, nombremarca,idmodelo)
values (8,'Renault',7);

alter table prueba_dll.Marca add constraint idModelo foreign key (idModelo)
	references prueba_dll.Modelo (idModelo);


create table prueba_dll.Modelo (

	idModelo varchar (10) not null,
	nombreModelo varchar (10) not null,
	constraint Modelo_PK primary key (idModelo)
);

insert into prueba_dll.modelo (idModelo,nombremodelo)
values (1,'Rav4');

insert into prueba_dll.modelo (idModelo,nombremodelo)
values (2,'Corola');

insert into prueba_dll.modelo (idModelo,nombremodelo)
values (3,'UX205H');

insert into prueba_dll.modelo (idModelo,nombremodelo)
values (4,'GLA');

insert into prueba_dll.modelo (idModelo,nombremodelo)
values (5,'Clase E');

insert into prueba_dll.modelo (idModelo,nombremodelo)
values (6,'Clase S');

insert into prueba_dll.modelo (idModelo,nombremodelo)
values (7,'Kangoo');

insert into prueba_dll.modelo (idModelo,nombremodelo)
values (8,'Rav4');





create table prueba_dll.Revisiones (

	idRevisiones integer null default 0,
	idVehículo serial not null,
	fechaRevisión date null default '4000-01-01',
	kmCuandoRevisión integer not null,
	idimporteRevision integer not null,
	constraint revisiones_PK primary key (idRevisiones),
	constraint idimporteRevision foreign key (idimporteRevision)
	references prueba_dll.importeRevision (idimporteRevision)
	
);

insert into prueba_dll.revisiones (idRevisiones, idvehículo,fecharevisión,kmcuandorevisión,idimporterevision)
values (1,1,'2019-10-10',20000,500)

insert into prueba_dll.revisiones (idRevisiones, idvehículo,fecharevisión,kmcuandorevisión,idimporterevision)
values (2,2,'2019-08-10',20000,700)

alter table prueba_dll.Revisiones add constraint idimporteRevision foreign key (idimporteRevision)
	references prueba_dll.importeRevision (idimporteRevision);



create table prueba_dll.Aseguradora (

	idAseguradora varchar (10) not null,
	nombreAseguradora varchar (10) not null,
	numeroPoliza integer not null,
	constraint aseguradora_PK primary key (idAseguradora)

);

insert into prueba_dll.aseguradora (idAseguradora, nombreaseguradora, numeropoliza)
values (1,'Allianz', 500014);

insert into prueba_dll.aseguradora (idAseguradora, nombreaseguradora, numeropoliza)
values (2,'MMadrileña', 0015142);





create table prueba_dll.importeRevision (

	idImporteRevision numeric not null,
	nombreMoneda varchar (10) not null,
	constraint importeRevision_PK primary key (idImporteRevision)

);

insert into prueba_dll.importerevision (idImporteRevision, nombremoneda)
values (500, 'Euros')

insert into prueba_dll.importerevision (idImporteRevision, nombremoneda)
values (700, 'Euros')



