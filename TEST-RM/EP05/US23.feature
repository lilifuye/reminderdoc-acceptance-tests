Feature: US23: Como personal de salud 
    quiero poder visualizar las citas médicas pendientes a atender 
    para poder organizarme mucho mejor

Scenario: El doctor quiere visualizar las citas pendientes
    Given El doctor se encuentre en la pantalla principal de la aplicación
    When  ingrese a la opción “citas”
    And  filtre la opción “pendientes”
    Then  la aplicación mostrará las citas pendientes del doctor = "citas"
Examples: 
    |     Citas    |  Pendientes   |
    |     True     |     True      |

Scenario: El doctor quiere observar las citas pendientes de la semana
    Given el doctor esté logueado y en la pantalla principal
    When seleccione la opción "citas"
    And filtre la opción "pendientes"
    And seleccione la opción "esta semana"
    Then  mediante un calendario la aplicación le mostrará las citas pendientes de la semana = "Esta semana"
Examples: 
    |   Citas    |    Pendientes    |   Esta semana    |
    |   True     |       True       |       True       |


    