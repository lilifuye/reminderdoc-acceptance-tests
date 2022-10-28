Feature: US05: Como paciente quiero editar y eliminar los recordatorios registrados para dejar de recibir notificaciones de recordatorios seleccionados
    Scenario: Editar recordatorios registrados
    Given que el usuario se encuentre en la lista de recordatorios registrados
    Cuando el usuario escoja "Recordatorio a modificar"
    And escoja la opción para editar recordatorio
    And realice cambios en el recordatorio seleccionado
    And confirme los cambios realizados
    Then el recordatorio seleccionado es editado con las nuevas configuraciones
    And aparece un mensaje = "Mensaje"
Examples:
|   Recordatorio a modificar  |    Mensaje    |
|       Paracetamol           |   Modificado  |
|   Recordatorio a modificar  |    Mensaje    |  
|    Cita con doctora Sully   |   Modificado  |


    Scenario: Eliminar recordatorios registrados
    Given que el usuario se encuentre en la lista de recordatorios registrados
    Cuando el usuario escoja "Recordatorio a eliminar"
    And escoja la opción para eliminar recordatorio
    And confirme la eliminación del recordatorio
    Then el recordatorio seleccionado es eliminado del registro de recordatorios
    And aparece un mensaje = "Mensaje"
Examples:
|   Recordatorio a eliminar   |    Mensaje    |
|       Paracetamol           |   Eliminado   |
|   Recordatorio a eliminar   |    Mensaje    |  
|    Cita con doctora Sully   |   Eliminado   |


    Scenario: Cancelar cambios de recordatorios
    Given que el usuario se encuentre en la lista de recordatorios registrados
    Cuando el usuario escoja "Recordatorio a eliminar" o "Recordatorio a modificar"
    And escoja la opción para cancelar cambios
    Then el recordatorio se mantiene con las configuraciones iniciales
    And aparece un mensaje = "Mensaje"
Examples:
|   Recordatorio a eliminar   |    Mensaje   |  
|          Paracetamol        | Sin cambios  |
|   Recordatorio a modificar  |    Mensaje   | 
|     Cita con doctora Sully  | Sin cambios  |