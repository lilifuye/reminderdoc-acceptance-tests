Feature: US20: Como personal de salud 
    deseo ver controles de mis pacientes
    para poder gestionar el avance de mis pacientes

Scenario: El doctor quiere seguir el avance de sus pacientes
    Given el doctor se encuentre en su cuenta dentro de la aplicación
    Then seleccione la opción "buscar pacientes"
    And escoja al paciente que desee
    And selecciona en la opción "notificaciones"
    And seleciona "Seguimientos"
    Then el doctor podrá observar la trayectoria del tratamiento 
Examples: 
        | Buscar pacientes  |  Notificaciones | Seguimientos|
        |       True        |       True      |     True    |

Scenario: El doctor quiere continuar el avance de un paciente "X"
    Given el doctor se encuentre en su cuenta dentro de la aplicación
    Then seleccione la opción "buscar pacientes"
    And escribe el nombre completo de su paciente
    And selecciona en la opción "notificaciones" del paciente preselecionado
    And presiona "seguimientos"
    And escoja "Confirmar" para ver información del paciente 
    Then el doctor podrá observar la trayectoria de un paciente en específico 
Examples: 
        | Buscar pacientes | Notificaciones | Seguimientos  |  Confirmar |
        |    Sofia Enel    |      True      |     True     |    True    | 

Scenario: El doctor no encuentra el avance del paciente "X"
    Given el doctor se encuentre en la pantalla principal de la aplicación
    Then seleccione la opción "buscar pacientes"
    And escribe el nombre paciente
    And selecciona en la opción "notificaciones" del paciente preseleccionado
    And no encuentra el avance
    And regresa a la pantalla principal con el botón "Regresar"
    And selecciona el nombre del paciente
    And escoge la opción "notificaciones"
    And presiona "Enviar mensaje"
    Then presiona "Confirmar" con un mensaje para que mande su avance
Examples: 
| Buscar pacientes  | Notificaciones  |           Regresar              | Buscar pacientes |  Notificaciones  |    Enviar mensaje |   Confirmar|
|      Luffy        |      True       |             True                |  Monkey D. Luffy |       True       |  Enviar avance |      True   | 

