Feature: US12: Ver detalles de mascota en el mapa

Como usuario registrado de la aplicación “PetSeek”, quiero poder ver los 
detalles de una mascota en el mapa para obtener más información sobre ella. 

  Scenario: E01 - Visualización de Detalles Básicos
    Given que estoy en el Mapa de Mascotas
    And he seleccionado un marcador de mascota en el mapa
    When hago clic en el marcador de mascota
    Then se abre una ventana emergente que muestra los detalles básicos de la mascota, como su nombre, tipo y ubicación
    
  Examples:
  | User    | Popup Displayed            |
  | Eduardo | Details displayed in popup |
  | Ana     | Details displayed in popup |

  Scenario: E02 - Ver Foto de la Mascota
    Given que estoy en la ventana emergente de detalles de una mascota
    And la mascota tiene una foto asociada
    When visualizo los detalles de la mascota
    Then veo la foto de la mascota en la ventana emergente

  Examples:
  | User    | Photo Displayed in Popup  |
  | Claudia | Photo is visible          |
  | Luis    | Photo is visible          |
