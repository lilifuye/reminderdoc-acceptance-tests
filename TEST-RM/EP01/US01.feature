Feature: US01: Como paciente quiero escoger el tipo de actividad necesaria de mi tratamiento para acordarme de realizarlo

    Scenario: Elige el recordatorio de administración de medicamentos
    Given que el paciente se encuentra en el formulario para agregar recordatorio
    When el paciente escoge "Tipo de recordatorio"
    Then el paciente es redirigido al formulario para agregar recordatorios de medicamentos
Examples:
|	    Tipo de recordatorio     |
|         Medicamentos           |


    Scenario: Elige el recordatorio de citas médicas
    Given que el paciente se encuentra en el formulario para agregar recordatorio
    When el paciente escoge "Tipo de recordatorio"
    Then el paciente es redirigido al formulario para agregar recordatorios de medicamentos
Examples:
|	    Tipo de recordatorio     |
|           Cita médica          |

    Scenario: No elige el tipo de recordatorio
    Given que el paciente se encuentra en el formulario para agregar recordatorio
    When el paciente no escoge "Tipo de recordatorio"
    Then el paciente es alertado con mensaje = "Mensaje"
Examples:
|	    Tipo de recordatorio     |                  Mensaje                     |
|                                |  Debe seleccionar un tipo de recordatorio    |

