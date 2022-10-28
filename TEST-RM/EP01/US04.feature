Feature: US04: Como paciente quiero recibir notificaciones de recordatorio de las actividades que debo realizar para cumplir mi tratamiento correctamente

    Scenario: Recordatorio por notificaciones de aplicación
    Given que el paciente haya previamente configurado recordatorios para su tratamiento
    And sea la hora para que llegue el recordatorio según el método configurado
    When el paciente reciba y escuche la notificación
    And seleccione listo
    Then el paciente ya realizó sus acciones del tratamiento en el horario indicado
    And se registra "Tratamiento realizado" y "Hora" en el historial de actividades
Examples:
|	    Tratamiento realizado      |    Hora      |
|         Paracetamol 500 mg       |   8:00 am    |
|         Rinadol 200 mg           |   9:31 pm    |
|         Control médico           |   12:40 pm   |

    Scenario: Reconfiguración de método de recordatorio
    Given que el paciente haya previamente configurado recordatorios para su tratamiento
    When el paciente se encuentre en la sección de recordatorios
    And seleccione "Recordatorio a modificar"
    And realice cambios en el método de recordatorio
    Then el recordatorio registrado en la cuenta del paciente es reconfigurado con el nuevo método de recordatorio
    And le aparece mensaje = "Mensaje"
Examples:
|   Recordatorio a modificar   |            Mensaje            |  
|       Paracetamol            |   Notificaciones modificadas  |
|   Tratamiento a modificar    |            Mensaje            |  
|    Cita con doctora Sully    |   Notificaciones modificadas  |


    Scenario: Postergar recordatorio
    Given que el paciente haya previamente configurado recordatorios para su tratamiento
    And sea la hora para que llegue el recordatorio según el método configurado
    When el paciente reciba y escuche la notificación
    And seleccione postergar el tratamiento
    And ingrese "Notificarme en" para volver a notificar sobre el tratamiento que debe realizar
    Then el recordatorio es postergado según el tiempo ingresado
    And se registra la acción en el historial de actividades
    And le aparece mensaje = "Mensaje"
Examples:
|	    Notificarme en  |     Mensaje     |
|        10 mins        |   Postergado    |
|        5 mins         |   Postergado    |


    Scenario: Activar o desactivar notificaciones de recordatorio
    Given que el paciente haya previamente configurado recordatorios para su tratamiento
    When el paciente se encuentre en la sección de recordatorios
    And seleccione su recordatorio a configurar
    And active / desactive las notificaciones de recordatorio
    Then el recordatorio registrado en la cuenta del paciente es configurado con los nuevos cambios
    And le aparece mensaje = "Mensaje"
Examples:
|	  Mensaje   |
|   Modificado  |