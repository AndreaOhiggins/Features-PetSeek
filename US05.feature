Feature: Publicación de mascota perdida del dueño

    Como usuario, quiero compartir información relevante sobre mi mascota, junto con la oferta
    de una recompensa, para difundir de manera efectiva la búsqueda.

Scenario:  El usuario ingresa al formulario de reporte de mascota
    Given el <usuario> inició sesión y se encuentra en la <pantalla de inicio>
    When seleccione el botón <Reportar> que está en el lado inferior de la pantalla 
    Then la aplicación mostrará un <formulario> en donde el usuario debe ingresar los datos de su mascota.
Examples:
    | usuario | pantalla de inicio | Reportar |      formulario       |
    |  Carlos |         sí         |   sí     |   datos de la mascota |

Scenario: El usuario ingresa los datos de su mascota
    Given que el <usuario> se encuentra en el <formulario> para ingresar los datos de su mascota perdida
    And completa los datos como el <nombre>, <características físicas>, <vestimenta>, indica su <raza> 
        y <sexo>, <lugar> y <hora que se perdió>, <recompensa> a ofrecer y <comentarios adicionales>
    When seleccione el botón <Publicar>
    Then los datos de su mascota se publicará y se mostrará la pantalla de inicio
Examples:
    | usuario| nombre |          características físicas   |  vestimenta |   raza  |   sexo |         lugar      |   hora | recompensa | comentarios | publicado |
    | Carlos | Perlita| marrón, ojos verdes, orejas largas | collar rojo | mestiza | macho  | Av.Canta Callao 123| 8:00 pm|  100.00    |       -     |    sí     |
    |  Ana   |  Mika  |blanca, ojos marrones, orejas cortas| ropa morada |chihuahua| hembra | Av. Arequipa 456   | 9:00 am|   200.00   |       -     |    sí     |
    

