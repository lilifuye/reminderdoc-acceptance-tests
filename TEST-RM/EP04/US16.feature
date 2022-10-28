Feature: Como paciente quiero editar mis gastos registrados para corregir datos con errores
	Scenario: Edición de datos de gastos para corregir los errores
        Given el usuario se encuentra en la sección de edición de gastos 
        When el usuario escoge la opción =  “Edición de gastos registrados manualmente”
        Then se mostrará una lista de gastos registrados editables
        And saldrá un mensaje = "Mensaje"
Examples:
|         Mensaje          |
|    “Cambios guardados”   |

Feature: Como paciente quiero editar mis gastos registrados para corregir datos con errores
	Scenario: Cancelar la edición de datos del formulario 
        Given el usuario se encuentra en la sección de edición de gastos 
        When el usuario escoge la opción =  “Edición de gastos registrados manualmente”
        Then  el usuario escoge la opción = “Cancelar la edición de gastos”
        And Los gastos se mantienen sin cambios
        And saldrá un mensaje = "Mensaje"
Examples:
|         Mensaje          |
|    “Edicion cancelada”   |

Feature: Como paciente quiero editar mis gastos registrados para corregir datos con errores
	Scenario: Edición de datos del formulario en grupo
        Given el usuario se encuentra en la sección de edición de gastos 
        When el usuario escoge la opción =  “Edición de gastos registrados manualmente”
        Then se mostrará una lista de gastos registrados editables
        And  se seleccionara gastos que se quiere cambiar
        And  se seleccionará también los otros datos a cambiar
        And El usuario ingresara una nueva "fecha"
        And El usuario ingresara el  "lugar donde se realizo el gasto"
Examples:
|   Fecha    |      lugar donde se realizo el gasto	   |
|  20/04/22  |             Farmacia Inkafarma	           |
|  05/02/22  |               Clinica Delgado   	           |