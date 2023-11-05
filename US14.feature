Feature: Creación de la presentación inicial de la landing page
    Como usuario quiero una primera sección atractiva y bien diseñada en la landing 
    page que capte mi atención y presente la aplicación para que pueda comprender
    rápidamente el propósito de la plataforma.

Scenario: Visualizar el principal propósito de la plataforma
    Given que el <usuario> está en la landing page
    When visualiza la <primera sección> de la página
    Then encontrará una <sección informativa> del aplicativo como el logo, 
         enlaces principales de la landing page e imágenes referentes a sus funcionalidades
Examples:
    | usuario | primera sección | sección informativa del aplicativo |
    |  María  |       sí        | logo, enlaces principales, imagenes| 
