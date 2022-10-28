Feature: US03: Como paciente deseo configurar el método de recordatorio para recordar mi tratamiento correctamente

    Scenario: Recordatorio por notificaciones de aplicación
    Given que el paciente se encuentre en el formulario para agregar método de recordatorio
    When escoge notificaciones de recordatorio por aplicación
    And escoja "Hora" y "Frecuencia" del recordatorio
    Then el recordatorio con notificación de tipo recordatorio por aplicación se registra en la cuenta del paciente 
    And se muestra un mensaje = "Mensaje"
Examples:
|	    Frecuencia      |    Hora      |       Mensaje             |
|         8 horas       |   8:00 am    | Recordatorio registrado   | 
|         2 horas       |   9:00 am    | Recordatorio registrado   | 
|        10 horas       |   11:00 pm   | Recordatorio registrado   | 

    Scenario: Recordatorio por mensaje de WhatsApp
    Given que el paciente se encuentre en el formulario para agregar método de recordatorio
    And esté registrado con cuenta Pro
    When escoge notificaciones de recordatorio por mensajes de WhatsApp
    And ingrese "Número de WhatsApp"
    And reciba un código de autenticación al número de WhatsApp ingresado
    And ingrese el "Código de confirmación" recibido
    And escoja "Hora" y "Frecuencia" del recordatorio
    Then el recordatorio con notificación de tipo recordatorio por WhatsApp se registra en la cuenta del paciente 
    And se muestra un mensaje = "Mensaje"
Examples:
|    Número de WhatsApp      |	    Código de confirmación      |	  Frecuencia   |    Hora      |      Mensaje                  |      
|        9212312333          |              02131               |       8 horas    |  10:00 am    |     Recordatorio registrado   |
|        9123234213          |              91422               |       10 horas   |   5:30 pm    |     Recordatorio registrado   |
|        9297453453          |              12932               |      24 horas    |   7:45 pm    |     Recordatorio registrado   |
|        9281392133          |              23781               |       21 horas   |  12:00 pm    |     Recordatorio registrado   |

    Scenario: Recordatorio por mensaje de Messenger
    Given que el paciente se encuentre en el formulario para agregar método de recordatorio
    And esté registrado con cuenta Pro
    When escoge notificaciones de recordatorio por mensajes de Messenger
    And ingrese "Número de Messenger"
    And reciba un código de autenticación al número de Messenger ingresado
    And ingrese el "Código de confirmación" recibido
    And escoja "Hora" y "Frecuencia" del recordatorio
    Then el recordatorio con notificación de tipo recordatorio por Messenger se registra en la cuenta del paciente 
    And se muestra un mensaje = "Mensaje"
Examples:
|    Número de Messenger     |	    Código de confirmación      |	  Frecuencia   |    Hora      |      Mensaje                  |      
|        0000123012          |              03423               |      12 horas    |  12:00 am    |     Recordatorio registrado   |
|        8192371298          |              84543               |       8 horas    |   5:00 am    |     Recordatorio registrado   |
|        9213892139          |              12334               |      10 horas    |   4:45 pm    |     Recordatorio registrado   |
|        1238129378          |              09238               |      21 horas    |   2:00 pm    |     Recordatorio registrado   |

    Scenario: Recordatorio por mensajería de operador
    Given que el paciente se encuentre en el formulario para agregar método de recordatorio
    And esté registrado con cuenta Pro
    When escoge notificaciones de recordatorio por mensajes desde operador
    And ingrese "Número de móvil"
    And ingrese "Operador"
    And reciba un código de autenticación al número de móvil ingresado
    And ingrese el "Código de confirmación" recibido
    And escoja "Hora" y "Frecuencia" del recordatorio
    Then el recordatorio con notificación de tipo recordatorio por operador se registra en la cuenta del paciente
    And se muestra un mensaje = "Mensaje" 
Examples:
|    Número de móvil        |      Operador 	|    Código de confirmación      |	  Frecuencia    |    Hora      |      Mensaje                  |      
|        923045788          |      Movistar 	|              03423             |      5 horas     |   1:30 pm    |     Recordatorio registrado   |
|        924238123          |       Entel       |              12346             |      12 horas    |   6:00 pm    |     Recordatorio registrado   |


    Scenario: Recordatorio por métodos Pro
    Given que el paciente se encuentre en el formulario para agregar método de recordatorio
    And el usuario "Pro" = "False"
    When escoge recordatorio por WhatsApp, Messenger u operador
    Then aparece un mensaje = “Mensaje”
    And el recordatorio no se registra en la cuenta del paciente
Examples:
|        Pro          |     Mensaje                     |
|       False         |     ¡Esta es una función Pro!   |

    Scenario: El paciente no desea notificaciones de recordatorio
    Given que el paciente se encuentre en el formulario para agregar método de recordatorio
    When no escoge notificaciones por ningún medio
    And escoja "Hora" y "Frecuencia" del recordatorio
    Then el recordatorio es registrado en la cuenta del paciente con configuración de notificaciones deshabilitada
    And se muestra un mensaje = "Mensaje" 
Examples:
|	  Frecuencia   |    Hora      |      Mensaje                                    |      
|      8 horas     |  12:00 pm    |     Recordatorio registrado sin notificaciones  |
|      12 horas    |   6:00 am    |     Recordatorio registrado sin notificaciones  |

