Feature: US10: Chat privado

   Como usuario quiero establecer el contacto con el usuario para 
   acordar cuando y donde reunirnos para que me haga entrega de mi mascota.

  Scenario: E01 - Comunicacion con el usuario de la publicacion
    Given que el usuario encuentra a su mascota por medio de los reportes
    When seleccione la opcion de "Contacto" en el mismo reporte
    Then podra comunicarse directamente con el, ya sea por via telefonica o por correo

  Examples:
  | User    | Communication Method     |
  | Juan    | Phone and Email          |
  | Silvia  | Email                    |
