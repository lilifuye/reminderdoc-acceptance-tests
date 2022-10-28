Feature: US11: Como paciente quiero elegir a mi doctor de atención para realizar una reserva médica
         Scenario: E01: El paciente elige su doctor de cabecera
         Given el paciente se encuentre en su cuenta
         When seleccione Reservar cita
         And presione = "Elegir doctor"
         And seleccione = "Doctores recientes"
         Then podrá reservar una cita con su anterior doctor
         And saltara un mensaje = "Mensaje"
Examples:
|    Elegir doctor     |    Doctores recientes    |         Mensaje         |
|    Brian Chavez      |    Elena Valdivia        |     “Cita reservada”    |
|    Elena Valdivia    |    Elena Valdivia        |     “Cita reservada”    |
|    Christian Smith   |    Elena Valdivia        |     “Cita reservada”    |
|    Raul Rivera       |    Elena Valdivia        |     “Cita reservada”    |

         Scenario: El paciente elige un nuevo doctor
         Given el paciente se encuentre en su cuenta
         When seleccione Reservar cita
         And presione = "Elegir doctor"
         And elija un doctor de la lista
         Then se mostrará el "Doctor Elegido" con el cual podrá reservar una cita con un doctor de su elección
         And saltara un mensaje = "Mensaje"
Examples:
|    Elegir doctor     |        Doctor Elegido    |         Mensaje         |
|    Brian Chavez      |    Christian Smith       |     “Cita reservada”    |
|    Elena Valdivia    |    Raul Rivera           |     “Cita reservada”    |
|    Christian Smith   |    Brian Chavez          |     “Cita reservada”    |
|    Raul Rivera       |    Elena Valdivia        |     “Cita reservada”    |

         Scenario: El paciente escoge un doctor no disponible
         Given el paciente se encuentre en su cuenta
         When seleccione "Reservar cita"
         And elija un doctor de la lista qué no esté disponible
         And le sale un mensaje = "Doctor no disponible"
         Then tendrá que elegir otro doctor con disponibilidad
Examples:
|    Elegir doctor     |        Doctor Elegido    |          Mensaje          |
|    Brian Chavez      |    Augusto Ramos         |  “Doctor no disponible”   |
|    Elena Valdivia    |    Edgar Gomez           |  “Doctor no disponible”   |
|    Christian Smith   |    Nicolle Devian        |  “Doctor no disponible”   |
|    Raul Rivera       |    Beatriz alcantara     |  “Doctor no disponible”   |