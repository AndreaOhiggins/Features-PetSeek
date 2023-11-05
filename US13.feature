Feature: US13: Filtrar la búsqueda de gatos, perros u otros.

Como usuario de la aplicación “PetSeek”, quiero tener la capacidad de filtrar la 
búsqueda de mascotas en el mapa de mascotas para ver solo gatos, perros y otros animales acuerdo a mis preferencias. 

  Scenario: E01 - Filtrar Mascotas por Gatos
    Given que estoy en el Mapa de Mascotas
    When selecciono la opción de filtro para "Gatos"
    Then el mapa se actualiza para mostrar solo los marcadores de mascotas que son gatos
    And se excluyen de la vista las mascotas de otros tipos, como perros o conejos
  
  Examples:
  | User   | Filtered Map Display      |
  | Marta  | Cat markers on the map    |
  | Antonio| Cat markers on the map    |
   

  Scenario: E02 - Filtrar Mascotas por Perros
    Given que estoy en el Mapa de Mascotas
    When selecciono la opción de filtro para "Perros"
    Then el mapa se actualiza para mostrar solo los marcadores de mascotas que son perros
    And se excluyen de la vista las mascotas de otros tipos, como gatos o conejos
    
  Examples:
  | User   | Filtered Map Display      |
  | Laura  | Dog markers on the map    |
  | Miguel | Dog markers on the map    |
