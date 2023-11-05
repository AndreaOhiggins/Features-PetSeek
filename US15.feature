Feature: Visualización de principales funcionalidades 
    Como usuario quiero que la landing page muestre de manera clara las funcionalidades 
    clave de los servicios para que pueda comprender fácilmente cómo podrían resolver problemas específicos.

Scenario: Visualizar las principales funcionalidades del aplicativo en el landing page
    Given que el <usuario> visita la landing page
    When revisa la <sección de servicios>
    Then se visualizan las funcionalidades clave de los servicios ofrecidos en la plataforma
Examples:
    | usuario | sección de servicios |            resultado             |
    |  María  |           sí         | funcionalidades de la plataforma | 
