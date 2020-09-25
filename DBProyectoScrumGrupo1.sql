Drop database if exists DBProyectoScrumGrupo1;
Create database DBProyectoScrumGrupo1;
Use DBProyectoScrumGrupo1;

Create table Persona(
	codigoPersona int not null auto_increment,
    DPI varchar (15) not null,
    nombrePersona varchar (200) not null,
    Primary key PK_codigoPersona (codigoPersona)
);

insert into Persona (DPI, nombrePersona) values (2317483521,"José Aguilar");
insert into Persona (DPI, nombrePersona) values (5649284164,"Noel Aguirre");
insert into Persona (DPI, nombrePersona) values (3749123841,"Marcos Bonifasi");
insert into Persona (DPI, nombrePersona) values (3246723421,"Edgar Buch");
insert into Persona (DPI, nombrePersona) values (8420142314,"Diego Canteo");
insert into Persona (DPI, nombrePersona) values (1464245325,"Sonny Castillo");
insert into Persona (DPI, nombrePersona) values (9756745234,"Emanuel Catalán");
insert into Persona (DPI, nombrePersona) values (7524554135,"Óscar Chinchilla");
insert into Persona (DPI, nombrePersona) values (8465451434,"Kevin Chitiquez");
insert into Persona (DPI, nombrePersona) values (7652432143,"Cristian Colindres");
insert into Persona (DPI, nombrePersona) values (2245234546,"Diego Escobedo");
insert into Persona (DPI, nombrePersona) values (7641456789,"José Espinoza");

Select * from persona;