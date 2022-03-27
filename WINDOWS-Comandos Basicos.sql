
-COMANDOS BASICOS:

    1. ATTRIB: muestra o cambia los atributos de un archivo
        - ATTRIB [+R | -R] [+A | -A ] [+S | -S] [+H | -H] [+I | -I][unidad:][ruta][nombreDeArchivo] [/S [/D] [/L]
        -- attrib /? Para conocer todas las opciones. 
    2. ECHO [Mensaje]: repite en pantalla el mensaje
    3. CLS: sirve para limpiar la pantalla(Clear Screen)
    4. VER: sirve para ver la versión de Windows que estamos utilizando
    5. DATE: [dd-mm-aa| T]: sin opciones, muestra la fecha actual y pregunta la nueva.
        /* EJEMPLO:
        DATE dd-mm-aa => Modifica la fecha directamente
        DATE /T => Muestra la fecha y devuelve el promptdirectamente
        */
    6. TIME [dd-mm-aa| T] Igual que DATE, pero para la hora.
    7. LABEL [unidad:]: permite crear la etiqueta a una partición.
    8. CD [nombredeldirectorio]:Sirve para cambiar de directorio activo

    9. DIR [unidad:][/s][/p]:Visualiza los directorios y ficheros que contiene el directorio solicitado.
        - /s: Muestra la información de los subdirectorios.
        - /p: Realiza una pausa cada vez que se llena la pantalla.
    10. MKDIR: Crea un directorio nuevo. Se puede utilizar mkdir o md.
    11. RMDIR: Nombre del directorio [/s][/q]:Borra un directorio. Se puede utilizar rmdir o rm. El directorio tiene que estar vacío.
        - /s: Borrar el directorio y subdirectorios aunque no esté vacío.
        - /q: Borrar sin pedir confirmación en cada archivo.

    12. COPY origen destino: Copiar ficheros,no subdirectorios.
    13. XCOPY [/E] origen destino: Copiar un directorio y sus ficheros.
        - /E: Copia todos los subdirectorios, incluso los vacíos (copia idéntica).
    14. DEL [ruta] [/S]: Borrar ficheros. Viene de DELETE.
        - /S Borrar los ficheros de los subdirectorios.No borra carpetas.
    15. REN [Camino] Nombre_Antiguo Nombre_Nuevo: Renombrar un fichero pero en el mismo directorio. Por lo que en destino, solo se pone el nombre Nuevo (sinruta).

    16. MOVE [Origen] [Destino]: Mover el fichero de un directorio a otro.
    17. TYPE fichero: Muestra el contenido de un fichero de texto plano.



- EJEMPLOS DE COMANDOS


1. Se lista el directorio setup que está dentro de Windows, con ruta relativa
    C:\Windows\system32>dir..\setup

2. Cambia al directorio Userscon ruta relativa
    C:\Windows\system32>cd ..\..\Users
    
3. Crea carpeta en el directorio del usuario Garciacon ruta absoluta
    C:\Users>mkdir C:\Users\Garcia\carpeta

4. Elimina la carpeta creada antes con ruta relativa
    C:\Users>rmdir/S /Q Garcia\carpeta

5. Se lista el escritorio del usuario Garciacon ruta absoluta
    C:\Users>dirC:\Users\Garcia\Desktop

6. Crea una copia idéntica del directorio del usuario Garciaguardándola en el raíz de C (utiliza ruta relativa en el origen y ruta absoluta en el destino)
    C:\Users>xcopy/e GarciaC:\copiaAlumno

7. Se cambia al directorio padre, es decir al directorio del usuario Garcia
    C:\Users\Garcia\carpeta>cd ..

8. Muestra por pantalla el contenido de archivo1.txt con ruta relativa
    C:\Users\Garcia>typecarpeta\archivo1.txt

9. Crea una copia de archivo1.txt, con el nombre archivo2.dat en la misma carpeta,
    C:\Users\Garcia>copycarpeta\archivo1.txt carpeta\archivo2.dat

10. Renombra archivo2.dat a archivo2.txt, fijarse que solo se ha utilizado ruta en el origen.
    C:\Users\Garcia>rencarpeta\archivo2.dat archivo2.txt

11. Mueve el archivo apuntes.docx (se hasupuesto que existía el archivo apuntes.docx) de carpeta del usuario al directorio “carpeta”
    C:\Users\Garcia>moveapuntes.docx carpeta\apuntes.docx

12. Al ejecutar dir, debe devolver 3 archivos listados,2 archivos .txty 1 archivo .dat
    C:\Users\Garcia>dircarpeta

13. Borra todos los archivos txt de carpeta con ruta absoluta
    C:\Users\Garcia>del C:\users\Garcia\carpeta\*.txt



1. Muestra todos los archivos con sus atributos en CC:\>attrib2. Muestra todos los archivos del árbol C con sus atributos.
    C:\>attrib/S

3. Muestra todos los archivos del árbol C con sus atributos parando página a página.
    C:\>attrib/S | more
    
4. Poner al archivo prueba.txt el atributo de lectura.
    C:\>attrib+R prueba.txt5. Intenta borrar el fichero prueba.txt (dará acceso denegado)
    C:\>del prueba.txt6. Pon el fichero como oculto, lista con dir(no se ve el archivo)
    C:\>attrib+H prueba.txt7. Quita el atributo de lectura. Le ponemos oculto y sistema (no se verá, pero el archivo se puede modificar y no se podrá borrar)
    C:\>attrib-R +H +S prueba.txt

1. Muestra todos los archivos con sus atributos del árbol C, pero pantalla a pantalla
    C:\>attrib/s | more3. Lista el contenido de un directorio, ordenado por el primer carácter
    C:\>dirC:\sistemas | sort4. Muestra en pantalla el archivo config.sys ordenado por primer carácter
    C:\>sortconfig.sys5. Muestra en pantalla el archivo config.sys ordenadas las líneas por 2º carácter.
    C:\>typeconfig.sys | sort+26. Ordena fichero1.txt por orden descendente por columna 20 y lo guarda en fichero2.txt
    C:\>typefichero1.txt| sort/R /+20 > fichero2.txt
7. Devuelve tantas líneas como número de archivos que se llamen exactamente practica.docx
    C:\>dir/s | find"practica.docx"
8. ¿Cuántos archivos hay en C con el nombre de practica.docx? Devolver solo númeroC:\>dir/s | find"practica.docx" /c