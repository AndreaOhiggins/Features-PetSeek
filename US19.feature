Feature: Visualización de sección de contáctanos
   Como usuario quiero poder comunicarme fácilmente con el equipo o empresa de la aplicación 
   para obtener respuestas a mis preguntas, compartir comentarios o informar sobre cualquier problema. 

Scenario: Visualización del botón de contáctanos
    Given que el usuario está en la <landing page>
    When se dirija hacia el <footer>,
    Then se visualiza de manera clara y accesible el enlace o botón que lleva a la sección <Contáctanos>
Examples:
    | usuario | landing page | footer |               resultado                |
    |  María  |     sí       |   sí   | visualización del botón de contáctanos |

Scenario: Visualización de la sección de contáctanos
    Given que el usuario hace clic en el enlace o botón de <Contáctanos>
    When es redirigido a la página o <sección> correspondiente
    Then encontrará un <formulario> de contacto intuitivo y fácil de entender
Examples:
    | usuario | landing page | Contáctanos | formulario |  
    |  Pedro  |     sí       |    sí       |    sí      |


    
