Feature: Visualización de testimonios
    Como usuario quiero que en la landing page se muestre testimonios o comentarios
    de otros clientes para poder confiar en la calidad de los servicios ofrecidos por la empresa.

Scenario: Visualización de testimonios en la landing page
    Given que el <usuario> está en la landing page
    When visualiza la <sección de testimonios>
    Then verá <testimonios> relevantes de clientes anteriores que respalden la calidad y
         confiabilidad de los servicios ofrecidos por la empresa
Examples:
    | usuario | sección de testimonios |       testimonios      |
    |  María  |           sí           | opiniones de clientes  | 
