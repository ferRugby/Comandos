					EXPORTAR - IMPORTAR BASES DE DATOS/TABLA
	

- IMPORTAR TABLAS .

		1. FILEZILLA.
			Copiar el fichero de nuestro escrito Windows a Linux a traves de Filezilla. Connectarnos a nuestro servidor y pasar el fichero. 
			
		2. MySQL:
				Entramos en root, revisamos que NO haya BBDD con el mismo nombre y metemos el comando:
				source (nombre BBDD).sql
				Revisamos con el comando select que se haya importado bien. 

- EXPORTAR BBDD O TABLAS

	mysql -u root -p  


		1. Seleccionar datos. 
			-- Seleccionar la tabla o tablas de la base de datos. (Si no se indica la tabla, se exporta la BBDD  entera) --
				mysqldump -u root -p (Nombre_BBDD) (tabla/s)
				mysqldump -u root -p world country city
			

		
		2. Guardar en memoria.
		
			-- Selecciona las tablas de una BBDD y guarda en memoria los datos seleccionados -- 
				mysqldump -u root -p (Nombre_BBDD) (tabla/s) | grep CREATE
				mysqldump -u root -p world country city | grep CREATE
		
		3. Crear un archivo. 
	
			-- Pasar el archivo creado en root y crear un archivo -- 
				mysqldump -u root -p (Nombre_BBDD) (tabla/s) > (Nombre del fichero).sql
				mysqldump -u root -p world country > world reduced.sql

		4. Comprobar 

			-- Check  los ficheros .sql que tenemos en root --
				ls -l











	
	
	
	
 












