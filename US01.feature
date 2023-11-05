Feature: US01: Registro de al cuenta

  Como usuario, quiero registrarme para acceder a todos los recursos
  y beneficios de la aplicación.

Scenario: Registro de cuenta correcto (con cuenta de Google)
  Given que el usuario ingresa a la aplicación
  And quiere crearse una cuenta para poder utilizarla
  When elija entre el botón de “Registrarse con una cuenta de Google“
  Then se mostrará en pantalla un mensaje de “Registro exitoso”
Examples:
      | usuario | Registrarse con una cuenta de Google |     Resultado    |
      |  Juan   |                   Si                 | Registro exitoso |
    

Scenario: Registro de cuenta correcto (sin cuenta de Google)
  Given que el usuario ingresa a la aplicación
  And quiere crearse una cuenta
  When complete todos los campos requeridos que el sistema le solicita
  And seleccione el botón “Registrarse”
  Then el usuario deberá revisar su correo o número de celular para confirmar su autenticidad
  And si todo es conforme, le aparecerá un mensaje de “Registro exitoso”
Examples:
      | usuario | Registrarse |     Resultado    |
      |  Juan   |      Si     | Registro exitoso |

Scenario: Registro de cuenta incorrecto (con o sin cuenta de Google)
  Given que el usuario ingresa a la aplicación
  And desea crearse una cuenta
  When complete todos los campos requeridos que el sistema le solicita
  And uno de ellos sea incorrecto
  Then se mostrará en pantalla el mensaje “Error, ingrese correctamente sus datos”
  And el usuario tendrá que volver a ingresarlos hasta que sean conformes
Examples:
      | usuario | Registrarse |             Resultado                  |
      |  Juan   |      No     | Error, ingrese correctamente sus datos |
