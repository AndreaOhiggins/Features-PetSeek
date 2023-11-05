Feature: US04: Recuperación o restablecimiento de contraseña

  Como usuario que no recuerda su contraseña, quiero recuperarla
  o restablecerla para continuar usando la aplicación.

Scenario: Recuperación de contraseña
  Given que el usuario quiere iniciar sesión
  And la contraseña que ingresa es inválida
  When seleccione la opción de “No recuerdo mi contraseña”
  Then el sistema le enviará un mensaje a su correo con un
  recordatorio de la contraseña con la que se registró 
  And el usuario podrá digitarla para acceder 
Examples:
      | usuario | Opcion "No recuerdo mi contraseña" | Notificacion |           Resultado           |
      |  Juan   |            Selecciona              |      Si      | Recordatorio de la contraseña |

Scenario: Restablecimiento de contraseña
  Given que el usuario quiere cambiar su contraseña
  When eleccione la opción de “No recuerdo mi contraseña”
  And seleccione la opción “Modificar”
  Then el sistema le enviará un mensaje a su correo con un código que
  deberá de ingresar en la aplicación para confirmar su autenticidad 
  And el usuario deberá digitarlo para acceder a la modificación
Examples:
      | usuario | Opcion "No recuerdo mi contraseña" |  Modificar | Mensaje en el correo |        Resultado        |
      |  Juan   |            Selecciona              | Selecciona |         Abre         | Codigo de autenticacion |

Scenario: Confirmar la nueva contraseña
  Given ingresó el código que le fue enviado
  When digite su nueva contraseña
  And seleccione la opción “Confirmar”
  Then el sistema actualizará los cambios realizados y le enviará
  una copia de la contraseña a su correo
Examples:
      | usuario | Ingresa codigo  | Nueva contraseña| Opcion "Confirmar"|                 Resultado                   |
      |  Juan   |        Si       |      digita     |     Selecciona    | Actualiza y envia la copia de la contraseña |
