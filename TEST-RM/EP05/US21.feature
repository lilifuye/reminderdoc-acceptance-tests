Feature: US21: Como perosnal de salud 
    quiero notificar a mis pacientes sobre próximas citas médicas 
    para poder asegurar sus asistencias

Scenario: El doctor notifica al paciente sobre sus citas
    Given El doctor se encuentre en su cuenta
    Then seleccione la opción "buscar pacientes"
    And presione la opcion "notificacion" 
    And escoja "Seguimientos"
    And el software le pedirá que escriba el mensaje a notificar = "mensaje"
    Then el doctor selecciona la opción "enviar mensaje"
Examples: 
    |      Buscar paciente      |   Notificar  |  Seguimientos   |            mensaje            |  enviar mensaje  |
    |     Gustavo Richetti      |     True     |      True"      |  Tiene dos citas esta semana |      True        |

Scenario: El doctor asegura que el paciente llegará a la cita
    Given el doctor se encuentre en su cuenta
    Then seleccione la opción "buscar paciente"
    And tipee su nombre completo
    And seleccione la opción "notificación"
    And el software pedirá que escriba el mensaje a notificar = "Mensaje"
    And escoja "Confirmar mensaje"
    Then el doctor selecciona la opción "enviar"
Examples: 
    |   Buscar paciente    |    Notificación   |             Mensaje             |     Confirmar mensaje    |    Enviar  |
    |   Harry O'Connor     |        true       |      ¿Asistirá a su cita?     |         True             |     True   |

Scenario: El doctor cancela una cita con un paciente "X"
    Given el doctor se encuentra en la pantalla principal
    Then selecciona "buscar paciente"
    And escribe el nombre del paciente
    And presiona "citas"
    And selecciona la opción "pendientes"
    And presiona "cancelar cita"
    Then la aplicación cancela la cita pendiente con el paciente "X" = "Confirmar"
Examples:
    |    Buscar paciente    |    Citas    |    Pendientes   |    Cancelar cita    |     Confirmar   |
    |   Christian Osorio    |    True     |       True      |          True       |        True     |

