Feature: Ver publicaciones realizadas
    Como usuario quiero poder ver las publicaciones que realicé para ver el estado actual de mis publicaciones
    y mantenerme informado sobre cualquier actualización relevante relacionada con las mascotas perdidas o 
    encontradas que he compartido.

Scenario: El usuario visualiza sus publicaciones realizadas desde la pantalla de inicio 
    Given el <usuario> inicia sesión y se encuentra en la <pantalla de inicio>
    And ha <publicado anteriormente> sobre una mascota perdida
    And selecciona el botón de <Cuenta> en la parte inferior
    When selecciona el botón de <Publicaciones realizadas>
    Then se mostrará una <lista> con las publicaciones realizadas
Examples: 
    | usuario| pantalla de inicio| publicado anteriormente| Cuenta| Publicaciones realizadas|            lista         |
    | Silvia |       sí          |          sí            |  sí   |            sí           | publicaciones realizadas |

Scenario: El usuario visualiza el detalle de sus publicaciones 
    Given el <usuario> ha iniciado sesión 
    When se encuentra en <publicaciones realizadas>
    Then se mostrará los detalles ingresados en la publicación
Examples: 
    | usuario | publicaciones realizadas |               resultado              |
    |  Silvia |           sí             | detalles de publicaciones realizadas |

