Feature: US03: Edición del perfil del usuario

  Como usuario, quiero editar mi perfil para actualizar mis datos
  personales de contacto cada vez que sea necesario.

Scenario: Editar perfil
  Given que el usuario ingresa a la aplicación 
  And quiere editar el perfil de su cuenta
  When seleccione el ícono de “Cuenta”
  And seleccione la opción “Perfil”
  Then se mostrará el botón “Modificar datos”
Examples:
      | usuario | Icono "Cuenta" |    Resultado    |
      |  Juan   |   Selecciona   | Modificar datos |

Scenario: Modificar datos
  Given seleccionó el botón “Modificar datos”
  When complete todos los campos requeridos que el sistema le solicita,
       ya sea desde publicar una foto, el nombre y el número telefónico
  And seleccione el botón “Guardar cambios”
  Then los datos serán guardados en el sistema
Examples:
      | usuario | Botón “Modificar datos” |   Datos   | Guardar cambios |            Resultado             |
      |  Juan   |       Selecciona        |  Modifica |        Si       |Se guardan los datos en el sistema|
