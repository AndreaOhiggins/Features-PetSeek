Feature: US02: Inicio y cierre de sesión

  Como usuario, quiero iniciar y cerrar la sesión de mi cuenta para salvaguardar
  la seguridad de mis datos

Scenario: Inicio de sesión (correcto)
  Given que el usuario ingresa a la aplicación
  And quiere acceder a su cuenta
  When ingrese su usuario y contraseña
  And seleccione el botón “Iniciar sesión”
  Then será redirigido al apartado de recursos de la aplicación
Examples:
      | usuario | Iniciar sesión |            Resultado              |
      |  Juan   |       Si       | Ingresara al apartado de recursos |

Scenario: Inicio de sesión (incorrecto)
  Given que el usuario ingresa a la aplicación
  And quiere acceder a su cuenta
  When ingrese su usuario y contraseña
  And uno de los datos sean incorrectos
  Then se mostrará en pantalla el mensaje “Error, ingrese correctamente sus datos”
  And el usuario tendrá que volver a ingresarlos hasta que sean conformes
Examples:
      | usuario | Iniciar sesión |              Resultado               |
      |  Juan   |   Incorrecto   |Error, ingrese correctamente sus datos|
