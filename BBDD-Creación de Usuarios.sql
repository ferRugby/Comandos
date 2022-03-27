								USUARIOS, PERMISOS Y ROLES
								
-  USUARIOS 

		1. Crear el localhost (servidor local) donde guardar nuestros usuarios. 
		
			create user local@localhost identified by 'Oracle.123';
			-- Crear un sitio donde donde guardar todos los usuarios creados con contraseña: Oracle.123

				/*Identified es la clausula para indicar la password asdf 
					With indica como se va a encriptar la password
					By indica que lo que sigue es la password */
			
		2. Crear usuarios.
		
			create user remoto@'%' identified by 'Oracle.123'; 
			-- Crear un usuario en un servidor NO LOCAL. Password Oracle.123	
			create user remoto@'localhost' identified by 'Oracle.123';
			-- Crea un usuario en nuestro servidor local. Password:Oracle.123
	 
		3. Comprobar, cabiar, listar y eliminar usuarios.  

			a) Comprobar usuario
				select current_user
	
			b) Cambiar  de  usuario
				-u usertest -p
	
			c) Lista  de  usuarios
				select user, host from mysql.user;	

			d) Eliminar usuario (Eliminar desde root)
				drop user (nombre_usuario), (nombre_usuario) local@localhost, basicuser@'%',remoto@'%';
		
		
- PERMISOS
			
		1. Asignar Permisos.
			
			a) Todos los permisos 
				grant all privileges on (Base de datos).* to 'usertest'@'localhost';
				-- Asignar todos los privilegios al usuario creado de una Base de datos
				--	* significa todas las tablas o BBDD.
			b) Solo algunos permisos
				grant (permiso) on (Base de datos).* to 'usertest'@'localhost';
				
				Permisos que podemos dar: 
				
				REGISTROS: SELECT, UPDATE, INSERT, DELETE
				TABLAS: CREATE, DROP, ALTER, CREATE VIEW, CREATE TEMPORALY TABLES  --(consultas temporales)--.
				USUARIOS: CREATE USER --(With grant option)
				--Esta opción permite que el usuario creado puede dar permisos a otro usuario. Se pone al final del comando Create User. Ej: grant create user on *.* (*,* == todas las bases de datos y tablas) to usertest@localhost with grant option; --
				
				
				Más permisos: https://dev.mysql.com/doc/refman/8.0/en/privileges-provided.html
				
		2. Activar Privilegios. 
			flush privileges 
			-- Solo para las versiones de MySQL más antiguas. Para las nuevas no es necesario. 
				
		3. Revisar Permisos.
			show grants for 'usertest'@'localhost';
		
		4. Eliminar Permisos.
			revoke select on (Base de datos).* from 'usertest'@'localhost';

- ROLES 

		1. Crear roles 
			create role (nombre rol);

		2. Asignar permisos a nuestro rol
			grant select on (BBDD).(Tabla) to (rol); 
			-- Asignar solo permiso de select
			grant all on (BBDD).(Tabla) to (rol);  
			-- Asignar todos los permisos. 

		3. Asignar rol a un usuario
			grant (rol) to (usuario);
		
		4. Mostrar roles
			show grants for (nombre_usuario);
		
		5. Activar role en el usuario. 

			set role (nombre_usuario);

		6. Activar rol por defecto
			a) Desde root con el comando: set default role (rol) to (nombre_usuario);
			b) Desde el propio usuario: set role (nombre_usuario);


		7. Visualizar role activo
			Select current_role();

		8. Permisos en caso de activar un role;
			show grants for (usuario) using (role)
			-- Un usuario puede tener varios roles --
		9. Lista de roles creados
			select user, host, authentication_string from mysql.user where authentication_string="";

		


	
				
				
				
		
				
				
			

	
	 
	 
		
		
		
	



