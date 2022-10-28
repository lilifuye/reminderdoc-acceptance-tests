Feature: US12: Como paciente quiero consultar un enfermero para realizar preguntas
        Scenario: Obtener un enfermero
        Given el paciente se encuentra en su cuenta
        When el paciente seleccione la opción de consultar con un enfermero
        Then se le asignará "Enfermero Asignado" el cual le ayudará con el "Desarrollo de la consulta"
Examples:
|            Enfermero Asignado            |    Desarrollo de la consulta    |
|    Enfermero Pedro Callens asignado      |             True                |
|    Enfermero David Echenique asignado    |             True                |
|    Enfermera Cynthia Olivera asignado    |             True                |

        Scenario: Redirección a doctor especializado
        Given el paciente haya realizado una consulta con un enfermero
        And haya sido redireccionado con un doctor especializado
        And le saldrá un mensaje = "mensaje"
        When el paciente muestre su "Conformidad"
        And Se mostrará un mensaje de = "mensaje"
        Then se le asignará un doctor especializado con la posibilidad de reservar una cita
Examples:
|               Mensaje               |    Conformidad    |                       Mensaje                               |
|    “Aceptas redirección a doctor”   |        True       |    “Doctor Paul Walker en Línea para realizar reserva”      |
|    “Aceptas redirección a doctor”   |        True       |    “Doctora Elena Valdivia en Línea para realizar reserva”  |
|    “Aceptas redirección a doctor”   |        False      |    “Se le asignará otro dia de reserva                      |
|    “Aceptas redirección a doctor”   |        True       |    “Doctor Christian Smith en Línea para realizar reserva”  |

        Scenario: Pérdida de conexión en el chat
        Given el paciente se encuentra en su cuenta
        When el paciente seleccione la opción de consultar con un enfermero
        And empiece las consultas con el enfermero mediante "Chat"
        And se cierra el chat por la mala conexión
        And sale un mensaje de = "Mensaje"
        And Sale un mensaje = "Mensaje"
        Then se le volverá a redireccionar al chat con el mismo enfermero qué eligió.
Examples:
|                  Chat                     |            Mensaje          |                             Mensaje                                        |
|    Chat con enfermero Mauricio Moscatti   |    “Pérdida de conexión”    |     “En unos instantes estará de nuevo en comunicación con su enfermero”   |
|    Chat con enfermero David Echenique     |    “Pérdida de conexión”    |     “En unos instantes estará de nuevo en comunicación con su enfermero”   |
|    Chat con enfermero Cynthia Olivera     |    “Pérdida de conexión”    |     “En unos instantes estará de nuevo en comunicación con su enfermero”   |
|    Chat con enfermero Pedro Callens       |    “Pérdida de conexión”    |     “En unos instantes estará de nuevo en comunicación con su enfermero”   |
