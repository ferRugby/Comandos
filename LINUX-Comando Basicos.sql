
/* Contraseña usuario:Alumno */
/* fernandoRodriguez */



- PRIMEROS COMANDOS                                       

    1. Listado Ficheros 
        ls [opciones] [ficheros] 
            -a: Ficheros ocultos
            -d: Listar solo el directorio
            -F: Agrega un código al final de cada codigo 
            -R: Mostrará el contenido del directorio y subdirectorios. 
            -i: Ver los i-nodos

        Comodines:
        * Representa una combinación cualquiera de caracteres
        ? Representa un carácter individual
        [] Encuentra cualquier ca´racter o rango de caracteres incluido en la lista 
    
        EJEMPLOS: 
            ls d?t01.mp3
            ls tty* -- listar archivos que comienzen por tty
            ls d?t0[1234] -- ls


    2. Copiar ficheros
        cp [opciones]origen[destino]
            -p: Para conservar la propiedad y los permisos
            -R o -r: copia todo el contenido de origen incluidas subcarpetas y opciones
            -a: Conserva los enlaces simbolicos
            -u: copia ficheros que no exista y si existen, el más reciente. 
                --  Copiar con rutas relativas:   cp/-f ../../etc/password ./copias
                
    3. Mover o renombrar ficheros/directorios
        mv[opciones]origen[destino]
        /*   Al igual que cp, este comando puede:
                •Forzar la sobrescritura y modo interactivo
                •Realizar una copia de los archivos
                •Realizar una copia incremental
                El comando también permite renombrar ficheros, 
                
                Ejemplo:  $ mv documento.odtdocumento-antiguo.odt

          Este comando permite mover directorios completos dentro de un mismo ficheros. */
    4. Borrar ficheros
        rm[opciones] ficheros
            -- Acepta muchas opciones de cp y mv. Mirar la ayuda (man rm)
            -r: Borrar directorios. 

    5. Crear ficheros
        touch[opciones]ficheros

        Opciones:
        Para cambiar sólo hora de acceso: -a o --time=hora
        No crear ficheros si no existen: -c o --no-create
    
    6. passwd [usuario]: Cambia contraseñas de usuario
    
    7. Cambiar usuario
        a) Sudo: Cambiar usuario root
        b) Sudo su: Cambiar usuario root temporalmente. Exit para  salir
        c) su: Cambiar a otro usuario. 
    8. who: Muestra usuarios concectados. 
    9. echo: Devuelve un mensaje por pantalla
    10.neofetch: Datos del sistema operativo. 
    






- VISUALIZAR FICHEROS

    1. HEAD
        head[opciones]ficheros  
          Muestra las 10 primeras líneas de un fichero. Opciones:
            •-c [num] o --nbytes=num: Muestra numbytes en lugar de las 10 líneas por defecto
            •-n num o --lines=num: Muestra n primeras líneas.  (head -3 <nombre_fichero>)
    2. TAIL
        tail[opciones]ficheros
         Muestra las 10 últimas líneas de un fichero. Opciones
            •-f o -follow: indican a tail que mantenga el fichero abierto y que muestra las nuevas líneas que se añadan.
            •-n[num] o --lines=num: Muestra n últimas líneas.

            /* EJEMPLOS:
            	Muestra todo el fichero alumnos.txt menos las 3 primeras líneas.
                Tail +4 alumnos.txt       
            */
    3. CAT
        Muestra el contenido del archivo en el directorio actual. Tambien puede ser útil para unir ficheros. 
        -- Cat [archivo]
    4. FILE 
        Nos indica el tipo de archivo que es
        -- file [archivo]
    5. DIFF
        Muestra las diferencias entre dos archivos
        -- diff [archivo] [archivo]
    6. NANO
        Permite editar ficheros desde la terminal
        -- nano [archivo]
        /* Editor de texto integrado en la terminal. Utilizar gedit */
    7. LESS o MORE
        Permite leer un fichero de pantalla a pantalla
        -- less [archivo] o more [archivo]

    
- COMANDOS DE DIRECTORIO 
    1. PWD: Muestra la ruta del directorio actual
    2. MKDIR: Crea un directorio -- mkdir<ruta>/nombreDirectorio
    3. MV: Cambia el nombre del primer directorio por el segundo
        -- mv <rutaorigen>/nomDirrutadestino/NuevonomDir
    4. RMDIR: Elimina el directorio si está vacío
                -- rmdir<ruta>/nombreDirectorio
        /* -p Elimina un árbol de directorios vacío */
    5. RM -R: Elimina el directorio si está lleno (directorio y subdirectorios)
    6. RM: Borra ficheros
            -- rm-r <ruta>/nombreDirectorio
    7. TREE: Muestra información jerárquica de un directorio. 

- ENLACES

    1. Enlace simbolicos.
        ln [opciones] ficheros
        -s: Crea un enlace simbólico similar a un acceso directon en Windows 10. 

    2. Enlace duro. 
        ln <rutaOrigen> <rutaDestino>(Nombre del enlace)>
        /* El enlace duro y el archivo origen se convierte en nombre distintos con los mismos permisos */

        /* Un archivo fisico solo se elimina si no tiene más enlaces duros. Si los tuviese, solo se elimina el nombre y no el archivo fisico*/

        /* Si tenemos un enlace simbólico y borramos el archivo original perderemos los datos, mientras que si tenemos un enlace duro los datos no se borrarán hasta que se hayan borrado todos los enlaces duras que existen hacia esos datos en el sistema de ficheros. */
- REDIRECCIÓN 
    En linux es posible redireccionar la entrada, salida o error en un archivo en ver de mostrar en la terminal. 

    > Redireccionamiento de salida (Crea un archvo)
    < Redireccionamiento de la entreda
    >> Añade la salida al archivo indicado. (Añade a una archivo ya creado)
    2> Envía los mensajes de error al archivo indicado. (Crea un archivo con los errores)
    2>> Añade mensajes de error al archivo indicado. 

    /* Ejemplos: 
        ls -l > listado.txt
        ps -ef >> listado.txt
        mail user < texto.txt
        cp 2> errores.txt
        find -size +1500 $HOME 2>>errores.txt
    */
- TUBERIAS |
    Permite unir la salida de un comando con la entrada de otro. 
    /* Ejemplo:
        ps | sort
    
    */

- COMANDOS DE SISTEMA

    1. FIND 
        Permite buscar un fichero en el arbol de directorios por diferentes criterios: (nombre, tamaño, fecha, etc...)
        
        find [criterio][expresión]
        EXPRESIONES:
            -name
            -user -group
            -mtime -n -mtime +n
            -size -n -size +n
            -type x        
         
         Tipos de archivos 
            - Archivos => f
            - Directorio => d
            - Enlace => l
         



         /* EJEMPLO:
            find / -name ifconfig
            find $HOME -size +1500
            find $HOME -size +1500 -mtime -5

            BUSCAR DIRECTORIOS:
            cd $HOME
            directorio1="$(find -type d -name $1)"
            directorio2="$(find -type d -name $2)"
            echo "$directorio2"
            
         */
    2. SORT
        Permite concatenar y ordenar el contenido de los ficheros.
        
        sort[ficheros] [opciones]
            OPCIONES:
            -n Ordenación numérica.
            -r Ordenación inversa (de mayor a menor).
            -k Ordena por la columnas o campos indicados.
            -t Indica el separador de campo (por defecto espacio).
            -u Suprime todas las líneas repetidas.
            
            /* EJEMPLO: 
                Crea el fichero Edad.txt con las líneas ordenas por el campo edad.
                Sort -n -k4 -t: alumnos.txt > edad.txt



            */

    3. GREP
        Busca las líneas que cumplen un patrón en los ficheros indicados. Busca un patrones dentro de un listado
            grep [opciones] [patrón] [ficheros]

            OPCIONES:
            -c Muestra el número de líneas que cumplen el patrón.
            -i No se diferencian mayúsculas de minúsculas.
            -l Nombres de los ficheros que contienen líneas buscadas en la salida.
            -n Número de líneas en la salida.
            -v Muestra sólo las líneas que no cumplen el patrón.
            -r Búsqueda recursiva.   
            

            PATRONES:
            [.]Cualquier carácter, igual que la interrogación (?)
            [^] Comienza con
            [$] Termina con
            […] Un carácter del conjunto [aeiou] o del rango [a-z]
            [^…] Un carácter que no este en la lista.  
            [.*]  Se repite 0 o más veces cualquier cosa   

            Buscar el simbolor del $
            \$    
            
            
        EJEMPLOS:

        $ ls -l | sort -n -k5 -- Lista el directorio actual ordenado por el tamaño.
        $ ls -l | sort -nr -k5 --Lista el directorio actual ordenado x tamaño en orden inverso
        $ sort fichero -t, -k3 -- Ordena el fichero por la columna 3, utilizando (,) como separador
        $ ls -l | grep ‘^d*’ -- Muestra ficheros que empiecen x (d) en el directorio actual. 
        $ grep -c “hola” fichero.txt -- Muestra el núm de veces que aparece la palabra en el fichero.
        $ grep -lr “hola” * /* Muestra los nombres de los ficheros con la palabra "hola" en el      
                            directorio actual y subdirectorios. */

    4. CUT
        Selecciona o corta una posición (campo) determinado de un fichero de entreda. 
        
        cut [opciones] fichero

            OPCIONES:
            -d:c Establece el carácter delimitador (c) del fichero.
            -f lista Establece la lista de campos a extraer.
            -c lista Establece la lista de caracteres a extraer.

            EJEMPLOS: 
            $ cut -f2 pruebas -- Estrae la segunda columna del fichero pruebas. 
            $ cut -c1-6 pruebas -- Extrae los caracteres del 1 al 6 de cada del fichero pruebas
            $ cut -d: -f1,7 /etc/passwd -- Establece como separador de campo los (:) y extrae los campos 1 y 7 del fichero passwd
            cut -d' ' -f2 fer.txt > fernan.txt -- Delimitador es el espacio 

    5. WC
        Cuenta el número de líneas -l, palabras -w, o caraceteres -c de los ficheros. 

        wc [opciones][ficheros]

            EJEMPLOS: 
            $ wc -l pruebas.txt
            $ wc -w pruebas.txt
            $ wc -c pruebas.txt
            $ wc -lwc pruebas.txt
            $ who | wc -l
    6. DU
        Permite saber el tamaño de un fichero 
        du [options] [file or directory name]

        -- du -b : 
            -- Más opciones: https://conpilar.es/como-usar-du-command-en-linux/
- PERMISOS
    chmod [permiso] (nombre_fichero)
    R:Read || W:Write || X:Execute

    MODO NUMÉRICO:
        Opciones:  
        666 ( RW / RW / RW)
        777 ( RWX / RWX /RWX)
        755 (RWX / RW / RW)
        644 (RW / R / R)
        700 (RWX /---)
        
        OWNER   GROUP   OTHER 
        r-w-x   r- -x   r-w-x
        4-2-1   4-0-1   4-2-1
          7       5       1 


    MODO CARÁCTER:
    + añade un modo
    - elimina un modo
        /* EJEMPLOS:    
        chmod a+r fichero.txt -> Agregar permisos de lectura a todos los usuarios
        chmod u+w fichero.txt ->Agrega permisos de escritura al dueño
        chmod ugo-x fichero.txt -> Elimina el permiso de ejecución a todos los usuarios
        */

           




- USUARIOS Y GRUPOS
    1.Añadir usuarios. 
        adduser o useradd [opciones] <usuario>
        /* 
            Ambos comandos realizan la misma acción,se suele utilizar adduser pues realiza mucha más tareas(de forma automática)que useradd,que solo crea el usuario pero no crea ni su $HOME ni password.
        */
    2. Eliminar usuarios.
        userdel[opciones]<usuario>.
        -r: Elimina también su directorio personal (/home) y su contenido.

    3. Modifica usuarios.
        usermod[opciones]<usuario>

        -D: Opciones por defecto
        -c <"texto">: Nombre completos
        -m: Crear directorio principal
        -M: No crear directorio principal
        -g <grupo>: Grupo principal del usuario
        -a -G <grupo>: Grupo principal del usuario
        -u: ID del usuario
        -s: Shell predeterminado
        -N: No crear un grupo privado
        -e <MM/DD/YYYY>: Expirar una fecha el
    
    4. Gestión de grupos. 

        groupadd [opciones]<grupo>
        groupdel [opciones]<grupo>
        groupmod [opciones]<grupo>

        /*
            Añadir usuarios a un grupo:
            #groupadd grupo1 -a -G <Grupo> <usuario>
            Eliminar grupos:
            #groupdel grupo1

            #groupmod nuevo_nombre -n nombre_anterior
        */

    5. Otros comandos:
        id:
        -- Muestra información del usuario que se está utilizando. 
        groups: 
        -- Muestra los grupos a los que pertenece el usuario actual.
        passwd:
        -- Permite cambiar la contraseña de un usuario. 
        chage [opciones] [usuario]
        -- Establece periodos de vigencia de las contraseñas. 
        chown [propietario:grupo]<fichero>:
        -- Cambiar el propietario y/o el grupo de un fichero. 

- INSTALAR PAQUETES
     
    1. Comando para instalar. 
        sudo apt install <nombre_paquete>

    2. Buscar paquetes con nombre parecido
        sudo apt search 7zip










-












































