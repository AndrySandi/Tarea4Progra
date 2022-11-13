
--Create Database Hospital

Create table Pacientes
(
	IdPaciente varchar(25) primary key not null,
	Nombre varchar(25) not null,
	Genero char(1) constraint check_ check (genero = 'F' or genero = 'M') not null,
	Seguro bit not null,
	Telefono varchar(15) not null,
	Edad int not null,
	Calle varchar(25), 
	Numero varchar(25),
	Ciudad varchar(25)
	
) 

--Insertar pacientes

insert into Pacientes values ('1', 'Andry Sand�', 'M', 1, '85858585', 18, 'La Rambla', '105', 'R�o Fr�o')
insert into Pacientes values ('2', 'Mar�a Orellana', 'F', 0, '65656565', 24, 'La Colonia', '300', 'Puerto Viejo')
insert into Pacientes values ('3', 'Jose Parra', 'M', 0, '7878', 24, 'La Rita', '211', 'Viejo')

--A�adir pacientes en visual studio

--insert into Pacientes values (@id, @nombre, @genero, @seguro, @telefono, @edad, @calle, @numero, @ciudad)

--Consultar pacientes

select * from Pacientes