Feature: US14: Como paciente quiero tener comunicación con un doctor para hacer mis consultas cuando lo requiera
         Scenario: E01: Paciente solicita comunicación con su doctor designado
         Given el paciente se encuentre en su cuenta
         When el paciente seleccione = “Comunicarme con mi doctor”
         And escriba su "Mensaje a enviar"
         And seleccione la opcion enviar para realizar el "Envío"
         Then el mensaje será enviado al doctor especializado
         And saldrá un mensaje = "Mensaje"
Examples:
|                        Mensaje a enviar                        |       Envío       |                  Mensaje                |
|    "¿Qué es lo que debo evitar hacer?"                         |        True       |    "Enviado al doctor especializado"    |
|    "¿Cuándo será nuestra próxima cita?"                        |        True       |    "Enviado al doctor especializado"    |
|    "Me empzó a doler muy fuerte el pecho, ¿Qué debo hacer?"    |        True       |    "Enviado al doctor especializado"    |

         Scenario: Paciente recibe mensajes
         Given el paciente reciba mensajes del doctor
         When el paciente seleccione Ver mis mensajes
         Then podrá visualizar los "Mensajes del doctor"
Examples:
|                    Mensajes del doctor                 |
|    "Tienes que mantener reposo durante los 15 días"    |
|    "Nos veremos en 20 días para ver el avance"         |
|    "Toma la pastilla que te mande por receta"          |

         Scenario: Paciente no puede comunicarse con su doctor
         Given el paciente se encuentre en su cuenta
         When el paciente seleccione Comunicarme con mi doctor
         And escriba su "Mensaje a enviar"
         And seleccione Enviar para realizar su "Envío"
         And no se logre enviar
         Then saldrá un mensaje = “Mensaje”
Examples:
|                        Mensaje a enviar                        |       Envío       |                             Mensaje                              |
|    "¿Qué es lo que debo evitar hacer?"                         |       False       |    "Error en enviar, verifique conexión o intentelo de nuevo"    |
|    "¿Cuándo será nuestra próxima cita?"                        |       False       |    "Error en enviar, verifique conexión o intentelo de nuevo"    |
|    "Me empzó a doler muy fuerte el pecho, ¿Qué debo hacer?"    |       False       |    "Error en enviar, verifique conexión o intentelo de nuevo"    |
