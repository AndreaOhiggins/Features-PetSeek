Feature: Publicación de mascota perdida vista
    Como usuario quiero poder subir la foto y descripción del perro perdido para que su dueño pueda 
    encontrarlo y también permitir que otras personas lo vean y consideren ofrecerle un hogar.

Scenario: El usuario ingresa al formulario para publicar mascota vista
    Given el <usuario> inició sesión y se encuentra en la <pantalla de inicio>
    When seleccione el botón <Subir foto> que está en el lado inferior de la pantalla 
    Then la aplicación mostrará un <formulario> en donde el usuario debe ingresar los datos de la mascota.
Examples:
    | usuario | pantalla de inicio | Subir foto |      formulario       |
    |  Carlos |         sí         |   sí       |   datos de su mascota |
    |  Silvia |         sí         |   sí       |   datos de su mascota |

Scenario: El usuario ingresa los datos de la mascota
    Given el <usuario> se encuentra en el formulario para ingresar los datos de su mascota perdida
    And completa los datos como el <nombre>, <características físicas>, <vestimenta>, indica su <raza> 
        y <sexo>, <lugar> y <hora> que se perdió, y <comentarios adicionales>, en donde lugar es un campo obligatorio
    When seleccione el botón <Publicar>
    Then los datos de su mascota se publicará y se mostrará la pantalla de inicio
Examples:
    | usuario | nombre |   características físicas | vestimenta |       raza           |  sexo |          lugar     | hora | comentarios | Publicar |
    | Silvia  | Toby   | blanco con marrón, pequeño|       -    | Jack russell terrier | macho | Av. Argentina 1234 | 18:00|       -     |   sí     |
    |  Juan   | Copito |      tamaño mediano       |collar verde|    Siamés            | hembra| Av. San Martín 1234| 20:00|       -     |   sí     |

Scenario: El usuario decide no publicar 
    Given el usuario se encuentra en el formulario para ingresar los datos de la mascota vista
    When seleccione el botón <Cancelar>
    Then no se publicará ningún dato completado en el formulario y se mostrará la pantalla de inicio
Examples:
    | usuario| nombre|   características físicas | vestimenta|       raza          |  sexo |          lugar    | hora | comentarios| Cancelar| publicado|
    | Silvia | Toby  | blanco con marrón, pequeño|       -   | Jack russell terrier| macho | Av. Argentina 1234| 18:00|       -    |   sí    |   no     |
    |   Juan | Miski | gris oscuro, pequeño      |cinta roja | conejo rex estándar | hembra| Av. Arequipa  1234| 20:00|       -    |   sí    |   no     |

