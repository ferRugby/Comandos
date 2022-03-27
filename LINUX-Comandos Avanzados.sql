
- INICIO ARCHIVO SHELL
    #! /bin/bash
    -- nuestros comandos


- COMANDOS SHELL DE LINUX 

    1. Echo:
        El comando echo muestra información por pantalla.

        OPCIONES:
            \c Evita el salto de línea al finalizar el echo.
            \n Inserta un salto de línea.
            \t Inserta una tabulación.
            \ desactiva el significado “especial” de algunos caracteres.
            -n : sin salto línea.
            -e : activa el \
        
        /* EJEMPLOS:

            echo “Hola soy una frase”
            echo –n “Hola soy una frase sin salto de línea”
            echo -e “Soy una frase \t con tabulador”

           
            ‘cadena’ valor literal de una cadena.
            “cadena” valor literal de una cadena, excepto $ ` \
        */

    2. Read:
        El comando read permite leer información escrita en el terminal de forma interactiva y guardarla en una variable.
            read <variable>
        /* EJEMPLO:
            $cat sh_read
            # la opción –n se utiliza para evitar el salto de línea en el echo
            echo -n “Introduce tu nombre”
            read nombre
            echo “Tu nombre es: $nombre”
        
        */
    3. Expr:
        El comando expr permite realizar operaciones aritméticas o lógicas sobre sus argumentos.
        expr arg1 op arg2 [op arg3 ...]

        OPERADORES:
            + : Suma
            - : Resta
            \* : Multiplicación.
            / : División.
            % : Modulo.

        /* EJEMPLO:
            X=`expr 5 + 6`
            X=`expr $X + 1`
            X=`expr 8 \* 2`
            X=`expr $a + $b / $c + $d`
            X=`expr \( $a + $b \) / \( $c + $d \)`
        */
        La expresiones deben ir delimitadas entre dos acentros graves (`<expresiones>`)
    
    4. if:
        Permite tomar decisiones a partir del código de retorno resultante de evaluar una condición. 

        SINTAXIS: 
        if condición
            then orden
        [else orden]
        fi


        /*
            echo ¿Cuál es la contraseña?
            read clave
            if [ $clave = “1234” ]
            then
            echo “puedes pasar”
            else
            echo “no puedes pasar”
            fi
        
        */
    5. Sleep: 
        Comando para hacer pausas de tiempo. Por defecto esta en segundo
        Sleep 5s 
    7. Case:
        El comando permite tomar multiples decisiones a partir del código de retorno resultante de evaular una expresion.

        /*Ejemplo:
        echo -n "introduce un texto"
        read variable 

        case $variable in 
        alumno) echo "hola alumno"
        profesor) echo "hola profe"
        *) echo "no eres nadie"
        esac */
    8. While
        Bucle que se repite miestras se cumpla la condición
        /*Ejemplo: 
        a=43
        while [ $a -le 53 ]
        do 
            echo "contador = $a"
            a=`expr $a +1`
        done
        */
    9. Until
        Bucle que se repita hasta que se cumpla la condición
        /*Ejemplo:
        util [ $clave = "hola" ]
        do 
        echo -n "introducir la clave"
        read clave
        done 
        */
    10. For 
        Repite un numero determinado de veces la ejecución de un conjunto de intrucciones.
        /*Ejemplo
        for variable in pepito ana carlos miguel
        do
        echo "hola don $variable"
        done
        Es una lista de cadenas separadas por blanos o tabuladores
        */  
    


        
- PARAMETROS Y VARIABLES ESPECIALES

    1. Parametros: 
        $0 Nombre del programa (Shell).
        $1 Primer parámetro de entrada.
        …
        $9 Noveno parámetro de entrada

        /* EJEMPLO:
            $ cat parametros (EJ: cat 58 69)
            echo “El parámetro1 vale: $1”
            echo “El parámetro2 vale: $2”
            shift 1
            echo “Ahora el parámetro1 vale: $1”
            echo “Ahora el parámetro2 vale: $2”
        */
    2. Variables especiales:

        $# Número de argumentos o parámetros.
        $* Cadena de parámetros
        $@ Cadena de parámetros como lista
        $? Código de retorno de la última orden ejecutada.

        /*
            $ echo “El valor de \$# es: $#”
            $ echo “El valor de \$* es: $*”
            $ echo “El valor de \$@ es: $@”
            $ echo “El valor de \$? es: $?”
            $ cp
            $ echo “El valor de \$? es: $?”
        */

- OPERADORES

    1. Operadores con ficheros: 
        -f: El fichero existe
        -d: Es un directorio
        -s: No está vacío
        -r: Tiene permisos de lectura
        -w: Tiene permisos de escritura
        -x: Tiene permisos de ejecución
        /*EJEMPLO: 
        if [ -f /etc/passwd ]
            then
            echo "El fichero existe"
            else 
            echo "El fichero no existe"
        fi
        */
    
    2. Operadores con números
        -lt: Menor que.
        -le: Menor o igual que.
        -gt: Mayor que.
        -ge: Mayor o igual que.
        -eq: Igual a.
        -ne: Distinto a. 

        /*EJEMPLO:
        a =23
        if [ $a -eq 23 ]
        then
            echo "iguales"
        else 
            echo"distintos"
        fi
        */
    3. Operadores con cadenas
        -n: cadena no vacía.
        -z: cadena vacía
        c1 = c2: Igual a
        c1 != c2: Distinto a

        /* EJEMPLO: 
        echo -n "introduce un texto"
        read variable
        if [ -n $variable]
        then 
        echo "variable vacía"
        fi




