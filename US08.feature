Feature: Búsqueda de mascota por escaneo

    Como usuario quiero poder buscar a mi mascota por medio de escaneo de fotos para 
    detectar la similitud con otras mascotas registradas en la plataforma.

Scenario: Tomar foto de la mascota perdida 
    Given que el <usuario> ha tomado o <subido la foto> en la aplicación
    And colocó el <lugar> en donde lo encontró
    When selecciona <escanear> 
    Then la aplicación verifica si hay alguna coincidencia con otra foto de mascota
Examples:
    | usuario | foto subida |          lugar      | escanear | 
    |  Juan   |    sí       |  Av. Argentina 1234 |   sí     |

