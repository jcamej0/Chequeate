Bienvenidos a Chequeate!
===================

Chequeate sera una web al propio estilo de una guía de paginas amarilla,  tendrá referencia e información básica de locales y empresas de todos los estados de Venezuela.



-Para lo siguiente  deben tener instalado en sus maquinas  GIT.-
----------




**Clonar el repositorio**
=====================

1)Abrir GIT BASH y situarse en la carpeta donde se trabajara, para ello se utilizan los siguiente comandos

    cd ../  (Para bajar un nivel)
    cd<Nombre carpeta> (Para entrar a una carpeta)
    Mkdir<nombre carpeta> (Para crear una carpeta en caso de no tenerla)

Entrar a la carpeta:

    cd chequeate

una vez dentro de la carpeta escribir:

    git clone https://<nombre en bi butcket>@bitbucket.org/gustavogelf/chequeate.git
 
 Luego les pedira su clave de bitbucket, la colocan y comenzara la descarga.


**Subir actualizaciones**
=====================


1)Abrir GIT BASH y situarse en la carpeta donde se trabajara, para ello se utilizan los siguiente comandos

    cd ../  (Para bajar un nivel)
    cd<Nombre carpeta> (Para entrar a una carpeta)
    Mkdir<nombre carpeta> (Para crear una carpeta en caso de no tenerla)
Entrar a la carpeta:

    cd chequeate

una vez dentro de la carpeta escribir:

    git add <nombre del archivo>
 
Una vez que se hayan seleccionado todos los archivos que se vayan a actualizar escribir:



    git commit -m https://<nombre usuario>@bitbucket.org/gustavogelf/chequeate.git

    

nota: La bandera -m indica que se debe consolidar el archivo con un mensaje informativo.
nota2: Ignorar el archivo config, no lo suban.