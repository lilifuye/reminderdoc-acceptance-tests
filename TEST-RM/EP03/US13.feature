Feature: US13: Como paciente quiero reservar una cita de seguimiento médico para verificar el avance de mi tratamiento
         Scenario: E01: El paciente es notificado por su doctor
         Given el paciente se encuentra registrado con un doctor
         When el paciente sea notificado con una "Notificación"
         Then será notificado con otra "Notificación"
         And podrá marcar su "Conformidad" para el control médico con el doctor
         And saldrá un mensaje = "Mensaje"
Examples:
|                         Notificación                     |                   Notificación                     |    Conformidad    |         Mensaje          |
|    El doctor te ha asignado una sesión de seguimiento    |    Realiza lo siguiente: acepta la notificación    |       True        |    “Control agendado”    |

         Scenario: El paciente solicita control médico
         Given el paciente se encuentra en su cuenta
         When el paciente seleccione Solicitar control médico
         And seleccione el "Doctor" disponible
         And seleccione el "Horario" disponible
         Then se le reservará un control médico que se registrará en su cuenta
         And saltará un mensaje = "Mensaje"
Examples:
|        Doctor       |    Horario     |         Mensaje          |
|    Brian Chavez     |    10:00 am    |    “Control agendado”    |
|    Elena Valdivia   |    17:00 pm    |    “Control agendado”    |
|    Christian Smith  |    07:00 am    |    “Control agendado”    |

         Scenario: El paciente elige una fecha no disponible
         Given el paciente se encuentra en su cuenta
         When el paciente seleccione Solicitar control médico
         And seleccione el "Doctor" disponible
         And seleccione un "Horario" qué no este disponible
         Then le saldrá un mensaje = "Mensaje"
         And tendrá qué elegir otro horario disponible
Examples:
|        Doctor       |    Horario     |            Mensaje            |
|    Brian Chavez     |    23:00 pm    |    “Horario no disponible”    |
|    Elena Valdivia   |    04:00 am    |    “Horario no disponible”    |
|    Christian Smith  |    02:00 am    |    “Horario no disponible”    |