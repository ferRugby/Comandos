
1. Llamar a git 
    git 

2. Clonar repositorio github
git clone

3. Muestra el estado de nuestro repositorio
        git status

-- Un fichero trapeado es un fichero que es nuevo --

4. Añadir el fichero al stage(añadir ficheros para ser comiteados)
    git add . (o ponemos el nombre del fichero)

5. Enviar el fichero del stage al repositorio
    git commit -m "Nuevo fichero1"

6. Le decimos a Git quien somos:
    Email
    git config --global user.email "fernandox75x@gmail.com"
    Nombre perfil
    git config --global user.name "ferRugby"

7. Subir el fichero a github
    git push

    git config -l

Nos muestra los commit
git log

https://www.youtube.com/watch?v=HiXLkL42tMU&list=RDCMUCX9NJ471o7Wie1DQe94RVIg&start_radio=1&rv=HiXLkL42tMU&t=0
Minuto: 44:12



repositorio que sea publico y readme

Revertir los cambios de los archvos y posicionarte en una rama
git checkout -- 
git checkout <nombre_rama>

Para ver las fiferencias hechas en los archivos 
git diff (nombre_archivo)

Listar ramas 
Git branch

Crear nuevas ramas 
Git branch <nombre_archivo>

Sube la rama al repositorio remoto:
 git push -u origin <nombreRama>