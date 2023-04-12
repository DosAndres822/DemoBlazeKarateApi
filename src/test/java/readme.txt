Automatización de APIs con Karate.

La automatización de estas APIs (SignUp and Login) sobre la página de “Demo Blaze” es realizada para un reto del Banco Pichincha.

La automatización de estas APIs se realizó sobre el Framework de “Karate” el cual utiliza librerías de Java así como también, Cucumber y Gherkin,
como IDE de desarrollo en sobre el cual realice este proyecto fue Intellij.

Paso a Paso de cómo ejecutar la automatización.

Con el fin de correr la automatización de las APIs (SignUp y Login) sobre el Framework de Karate, esta se puede realizar de las siguientes maneras

Utilizando “DemoBlazeApiRunner” que ha sido una clase que he creado para contener el “Runner” que me permita ejecutar los escenarios de pruebas.
En el cual de igual manera hay contenidas en la función de (testSystemProperty) hay una serie de tags que he asignado a cada uno de los escenarios de pruebas,
para correr de manera específica y manera general, los cuales he dejado con siglas de comentarios, para que sean descomentariados dependiendo de cual se quiere ejecutar respectivamente,
los cuales describiré a continuación.

- @allScenatios: Este tag se encuentra asignado a todos los 5 escenarios que comprende la automatización, el cual al quitar los símbolos de comentario y correr respectivamente,
ejecutará todos los casos, generando al final de la ejecución un reporte de la misma con sus respectivos resultados.

Nota: vale la pena aclarar que este es el único tag que genera un reporte, ya que ejecuta todos los escenarios.

- @sign: este tag solo ejecuta el escenario de creación de un nuevo usuario en el sistema, el cual NO genera reporte.

Nota: También es importante aclarar que en este escenario es necesario ir cambiando por lo menos el nombre del usuario por uno que no esté en el sistema, para que de esa manera se pueda crear uno nuevo.

- @signFail: Este tag correo solamente el escenario negativo cuando se intenta crear un usuario que ya ha sido registrado en el sistema, NO genera reporte.
- @allSign: Con este tag se ejecutarán los dos escenarios creados para el feature de Sign Up, NO genera reporte.
- @login: Este tag ejecuta solamente el test cuando se realiza una autenticación al sistema con un usuario previamente creado en el mismo, NO genera reporte.

Nota: Es importante tener en cuenta que para este escenario se debe utilizar un usuario con su contraseña, que haya sido creado previamente, el cambio se hace de forma manual.

- @loginFail: Al utilizarlo ejecuta el test que se creó para simular un intento de login con unos datos de usuario que no existen en el sistema, NO genera reporte.

- @loginWrongPass: Utilizando este tag se puede ejecutar el escenario donde se simula la autenticación con un usuario que sí existe en el sistema, pero que no se está usando la contraseña correcta, NO genera reporte.

- @allLogin: Con este se ejecutan todos los escenarios que han sido creados para el API de login, NO genera reporte.

Igualmente si se quisiera ejecutar todos los escenarios de otra manera mas simple, en la función de (testSample) que se encuentra inicialmente comentariada,
l quitar los comentarios y comentariar la otra que contiene los tags, podremos ejecutar todos los escenarios creados y generar el reporte al final de la ejecución con los respectivos
resultados.
