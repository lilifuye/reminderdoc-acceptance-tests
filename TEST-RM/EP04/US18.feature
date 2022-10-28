Feature: Como paciente quiero visualizar mi historial de gastos por fechas mediante gráficos para gestionar mis gastos de salud
	Scenario: Mostrar historial de datos
        Given el usuario se encuentra en la sección de historial de gastos 
        When    el usuario escoge la opción = “Ver historial de gastos”
        And saldrá un mensaje = "Mensaje"
        Then el usuario es redirigido al interfaz de reporte de gastos realizados
Examples:
|         Mensaje           |
|    “Historial de datos”   |


Feature: Como paciente quiero visualizar mi historial de gastos por fechas mediante gráficos para gestionar mis gastos de salud
	Scenario: Buscar gastos por fechas 
        Given el usuario se encuentra en la sección de historial de gastos 
        When    el usuario escoge la opción = “Ver historial de gastos”
        And saldrá un mensaje = "Mensaje"
        Then el usuario es redirigido al interfaz de reporte de gastos realizados
        And El usuario ingresara una "fecha"
        And será notificado con una "Notificación"
        And se le mostrará el gasto de una fecha específica
Examples:
|             Mensaje              |    Fecha       |             Notificación                |
|      “Historial de datos”        |    20/04/22    |    “Historial de datos del 20/04/22”    |

Feature: Como paciente quiero visualizar mi historial de gastos por fechas mediante gráficos para gestionar mis gastos de salud
	Scenario: Mostrar el total de gasto por fecha
        Given el usuario se encuentra en la sección de historial de gastos 
        When    el usuario escoge la opción = “Ver historial de gastos”
        When el usuario escoge la opción = “calcular gasto mensual”
        And será notificado con una "Notificación"
        And El usuario ingresara un "mes"
        And  se le mostrará el gastos totales realizados en un mes específico

Examples:
|          Notificación            |    mes       |
|      “Elija el mes a calcular”   |    abril     |