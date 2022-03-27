									 BASE DE DATOS
									
									
- NAVEGAR POR MYSQL
		show databases; -- monstrar todas las bases de datos -- 
		use world;		-- usar una tabla especifica --
		show tables;	-- muestra las tablas (por ejemplo de la BDD World) --
		desc city; 		-- muestra los campos y su tipo en una tabla --
		
- CONSULTAS 
			
	1. Condiciones 

		-- Mostrar todo el contenido
			SELECT * FROM city;
		-- Mostrar solo determinados campos --
			SELECT Name,Population FROM city;
		-- Mostrar los campos que cumplan una condición --
			SELECT * FROM city WHERE Population > 3000000;
		-- Combinación de las dos --
			SELECT Name,Population FROM city WHERE Population > 3000000;
			<-->[Otro Ej: select name,distric,population from city where contry code="usa";]</-->
			
		-- Limitar la salida --
			SELECT Name, Population FROM city WHERE Population > 30000000 LIMIT 3;
			
		-- Selecion la tabla BDD WORLD y la tabla CITY. (Comando Nivel Dios para cambiar de una tabla a otra) --	
			select * from world.city where countrycode="ESP";
		
		
	2. Rangos 
			
		-- Mostras países  con una  población  entre  5 y  10  Millones --		
			SELECT  Name , Population from country where Population between 5000000  and  10000000; 
		
		-- Películas  con  un  precio  entre  2  y  3  euros.  Ambos  incluidos --
			SELECT Title, Price from film_list where price >=2 and price <=3;
		-- Entre una fecha y otra incluyendo la hora
			select payment_id , customer_id , amount , payment_date
			from payment
			where payment_date > “2005-08-02 12:00:00” and payment_date < “2005-08-03”;
			
		-- Comprobar/revisar tablas de otras bases de datos más rapido --
				desc world.country;

	3. Ordenación	
		-- Realizar una consulta y odernar los resultados de la forma que queramos. --

		select city.name, city.distric, city.population,
		from city
		order by name desc, district desc, population asc;


	4. Funciones y Agrupaciones

		- Funciones:
			a)count(): Cuenta el número de registros en cada agrupación.
			b)max(): Valor maximo de una agrupación.
			c)min(): Valor minimo de una agrupación.
			d)sum(): Suma de los valores en cada agrupación. 
		
			Select countrycode, count(*) from city group by countrycode;

			Select countrycode, sum(population) from city group by countrycode;
			
			e) Combinación de funciones:
			Select countrycode , sum(population)/count(population) from city group by countrycode;
		
		- Clausula HAVING:
			Se utiliza de una mnaera similar a la clausula WHERE pero aplica a campos en los que se ha aplicado una función.

			select countrycode, count(name)
			from city
			group by countrycode
			having count(name)>10;
		
	5. Subconsultas
		Las subconsultas se utiliza cuando necesitamos realizar una consulta pero necesitamos el resultado de otra consulta.

		select name,population
		from city
		where countrycode in (
			select countrycode
			from city
			where population > 8000000);

		a) Subconsulta utilizando un rango:

		select employees.name, departments.name, employees.salary
		from employees, departments
		where employees.department_id = departments.id
		and employees.salary > (select 0.8*avg(salary) from employees)
		and employees.salary < (select 1.2*avg(salary) from employees);

		



		