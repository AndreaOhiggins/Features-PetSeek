Feature: US11: Notificación de posible mascota  

   Como usuario quiero recibir notificaciones para obtener todas 
   las similitudes posibles y verificarlas.

  Scenario: E01 - Notificación de similitudes
    Given que el usuario ha publicado la foto y descripción de su mascota perdida
    And el sistema ha buscado todas las similitudes posibles
    When aparezca en su pantalla una notificación
    Then podrá acceder a ella directamente haciéndole clic o seleccionando la bandeja de entrada para visualizar toda la lista de reportes encontrados

  Examples:
  | User    | Notification Access Method   |
  | Ricardo | Clicking on the notification |
  | Carmen  | Selecting it from the inbox  |
