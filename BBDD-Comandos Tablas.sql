(										INDICES
										
										


- CREAR INDICES (Como si fuera el de un libro)

		create index niaindex on alumno(nia)
		show index from alumno; 		-- muestra el indice --		
		drop index niaindex on alumno; 	-- elimina el indice --
		
---------------------------------------------------------------------------------------------------------------
)
(										TABLAS		
										
										
		show create table matricula;
		-- Muestra la descripción de la Tabla --

- CREAR TABLAS Y AÑADIR SUS CAMPOS

		create table matricula(
		niaalumno varchar(5) not null,
		modulo varchar(20) not null,
		curso YEAR not null);
		
		
- AÑADIR Y MODIFICAR CAMPOS 
		alter table alumno add nia varchar(5);
		
		

		1. Añadir campos de otras TABLAS
		
			create table cityesp as select * from world.city where countrycode="ESP";
			-- Busca datos que cumplas nuestras condiciones y los utiliza para completar la nueva tabla --  
			
		2. Poner campo clave en una tabla
			alter table alumno modify nia varchar(5) primary key;
			--Modifica un campo ya creado y lo convierte en primary key --
			
		3. Poner un segundo campo clave en una tabla
			alter table lideres modify partId(10) unique key;
			
		4. Añadir juego de caracteres UTF-8
			alter table country modify Code char(3) character set utf8;
		

- ELIMINAR TABLAS  		
		drop tables alumno;
		
		

-RELACIONAR CAMPOS 

		1. 	De relaciones de diferentes tablas (Ej campo: DNI, Id, code,etc..)
			alter table cityesp add foreign key (CountryCode) references country(Code);
			
			alter table matricula add foreign key (niaalumno) references alumno(nia);
			-- Modifica el campo niaalumno en foreing key --
			
		2. Eliminar relaciones entere campos
			alter table drop primary key;

			
---------------------------------------------------------------------------------------------------------------		
)
(										DATOS  
										
- AÑADIR DATOS A UNA TABLA										
		insert into alumno -- La tabla --
		(nombre, apellido1, apellido2, nia, nif) -- los campos --
		values
		("Juan","Perez","Gonzalez","15123","3451287G"), -- los datos ordenados igual que los campos --
		("Luis","Marchena","Martinez","15216","23452222G");

- MODIFICAR DATOS 
		1. Eliminar
		delete from matricula where niaalumno="15116"; -- Elimina el registro de un campo en concreto --
		
		2. Actualizar 
		update country set Code="SPA" where Name"Spain";
		
		
		
		
)	

