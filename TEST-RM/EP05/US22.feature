Feature: US22: Como personal de salud 
    quiero enviar prescripciones médicas a mis pacientes de forma digital
    para gestionar mis recetas médicas

Scenario: Doctor envía prescripciones médicas a pacientes
    Given el doctor se encuentre en la interfaz de la aplicación
    Then seleccione la opción "Buscar pacientes"
    And la opción "enviar mensaje"
    And tendrá que escribir y/o tomar foto a la prescripción médica
    And selecciona la opción "Cofirmar mensaje"
    Then el software enviará el mensaje = "Mensaje"
Examples: 
        | Buscar pacientes | Enviar mensaje |                        Mensaje                                  | Confirmar mensaje |
        |   Liliana Arco   |      True      |    Mediante este mensaje le estoy enviando su receta          |       True        |

Scenario: Doctor envóa las recetas médicas a paciente que se olvidó cuáles eran sus medicamentos
    Given  el doctor se encuentre en la interfaz de la aplicación
    Then seleccione la opción "Buscar pacientes”
    And busque al paciente por su nombre
    And seleccione la opción “enviar mensaje”
    And escriba el mensaje = "Mensaje"
    And mande la foto la prescripción médica 
    Then selecciona la opción “confirmar mensaje” para confirmar la información anterior 
Examples: 
        | Buscar pacientes  | Enviar mensaje |              Mensaje            | Confirmar mensaje |    
        |     Liam Ramos    |      True      |  Envíe foto de su prescripción  |       True        |

Scenario: Doctor se confunde de paciente al enviar prescripciones médicas
    Given el doctor se encuentre en la pantalla principal de la aplicación
    Then seleccione la opción "Buscar paciente"
    And seleccione al paciente incorrecto
    And seleccione la opción "enviar mensaje" con la prescripción médica
    And presione "cancelar mensaje"
    And vuelve a presionar "Buscar paciente" al paciente correcto con todo su nombre
    And presione la opción "enviar mensaje"
    And presiona "confirmar mensaje"
    Then el doctor habrá enviado la receta
Examples: 
        |   Buscar paciente   | Enviar mensaje | Cancelar mensaje |       Buscar paciente     | Enviar mensaje |    Confirmar mensaje |
        |   Fabrizio Pineda   |     True       |        True      |       Fabricio Pineda     |      True      |          True        |


