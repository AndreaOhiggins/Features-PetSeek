Feature: Implementación responsive de la landing page
   Como usuario quiero una landing page que sea fácil de visualizar y utilizar 
   en diferentes dispositivos para que pueda acceder a la información de manera 
   conveniente desde una computadora de escritorio o teléfono móvil.

Scenario: Visualización de la landing page en formato desktop
     Given que el <usuario> está en la <landing page>
     When la visite desde una computadora de escritorio
     Then la <página> debe mostrarse de manera óptima y adaptarse al tamaño de la pantalla
Examples:
    | usuario | landing page |   resultado     |
    |  María  |     sí       | formato desktop | 

Scenario: Visualización de la landing page en formato mobile
    Given que el usuario está en la <landing page>
    When la visite desde un teléfono móvil
    Then la página debe adaptarse al tamaño de la pantalla
Examples:
    | usuario | landing page |   resultado    |  
    |  Pedro  |     sí       | formato mobile | 
