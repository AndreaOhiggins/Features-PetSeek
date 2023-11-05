Feature: Visualización de enlaces de contacto
    Como usuario quiero que la aplicación contenga enlaces a las cuentas oficiales 
    de redes sociales de la empresa para poder conectarme y  seguir las actualizaciones
    y noticias de la empresa en mis plataformas de redes sociales favoritas.
    
Scenario: Filtrar Mascotas por Gatos
    Given que soy un <usuario> dentro de la aplicación
    When acceda a la <sección de contactos>
    Then debería poder encontrar <enlaces> visibles a las redes sociales de la empresa
Examples: 
    | usuario | sección de contactos |            enlaces           |
    |  María  |           sí         | redes sociales de la empresa | 
