Feature: Verificar mascota similar encontrada

    Como usuario quiero verificar los reportes para validar por mi propia cuenta
    la mascota con más similitud.

Scenario: Recepción de una notificación
    Given el <usuario> ha recibido la <notificación> de mascotas parecidas a la suya
    When seleccione la opción de <ver más información>
    Then podrá revisar una o varias casillas de reportes para validar la similitud.
Examples:
    | usuario | notificación | ver más información |    resultado |
    |  Juan   |     sí       |       sí            |   2 reportes | 
    |  Silvia |     sí       |       sí            |   1 reporte  |

Scenario: Verifica que la mascota es encontrada
    Given el <usuario> se encuentra verificando los reportes
    When la encuentre, seleccionará el botón de <Sí es>
    Then deberá de establecer contacto con el usuario del reporte
Examples:
    | usuario | Sí es |             resultado               |
    |  Juan   |  sí   | contacto con el usuario del reporte |

Scenario: Verifica que la mascota no es encontrada
    Given el <usuario> se encuentra verificando los reportes
    When no la encuentre, seleccionará el botón de <No es>
    Then deberá de seguir esperando por más notificaciones
Examples:
    | usuario | No es | resultado |
    |  Juan   |  sí   |  espera   |

