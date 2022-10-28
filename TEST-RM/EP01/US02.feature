Feature: US02: Como paciente quiero ingresar los detalles de las actividades que necesito realizar para cumplir mi tratamiento correctamente

    Scenario: El recordatorio es para medicamentos
    Given que el paciente se encuentre en el formulario para agregar recordatorio de medicamentos
    When agregue "Nombre de medicamento"
    And agregue "Formato de medicamento"
    And agregue "Cantidad"
    And agregue "Detalles"
    And seleccione el botón continuar
    Then el paciente es redirigido al formulario para configurar métodos de recordatorio
Examples:
|   Nombre de medicamento  |  Formato de medicamento |    Cantidad    |            Detalles                    |
|   Paracetamol            |    Pastilla             |      500mg     |    Partir la pastilla de 1g a la mitad |
|   Amlodipina             |    Jarabe               |  1 cucharadita |    Usar medidor de la botella          |
|   Ramipril               |    Pastilla             |      200 mg    |    Sin detalles                        |

    Scenario: El recordatorio es para citas médicas
    Given que el paciente se encuentre en el formulario para agregar recordatorio de citas médicas
    When agregue "Fecha de cita"
    And agregue "Lugar"
    And agregue "Doctor"
    And agregue "Especialidad"
    And agregue "Detalles"
    And seleccione el botón continuar
    Then el paciente es redirigido al formulario para configurar métodos de recordatorio
Examples:
|   Fecha de cita       |        Lugar              |    Doctor          |      Especialidad    |              Detalles                | 
|   15-06-2022          |    Clínica Ricardo Palma  |     Freddy Ortega  |    Endocrinología    |           Sin detalles               |
|   12-08-2022          |    Hospital Loayza        |  Elissa Miranda    |    Sin especificar   |   Ir al segundo piso, oficina 302    |

    Scenario: Falta completar al menos un detalle del recordatorio
    Given que el paciente se encuentre en el formulario para agregar recordatorios
    When seleccione continuar sin algún campo rellenado en el formulario
    Then el paciente es alertado con el mensaje = "Mensaje"
Examples:
|           Mensaje             |  
| Debe llenar al menos un campo |

