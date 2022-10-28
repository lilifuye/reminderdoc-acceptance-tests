Feature: Como paciente quiero editar mis gastos registrados para corregir datos con errores
	Scenario: Eliminar datos de gastos
        Given el usuario se encuentra en la sección de edición de gastos 
        When   el usuario escoge la opción = “Eliminar gastos registrados manualmente”
        Then se mostrará una lista de gastos registrados a eliminar
        And será notificado con una "Notificación"
        And podrá marcar su "Conformidad" 
        And saldrá un mensaje = "Mensaje"
Examples:
|             Notificación          |    Conformidad    |         Mensaje          |
|       Desea eliminar este dato    |       True        |    “Mensaje Eliminado”   |


Feature: Como paciente quiero editar mis gastos registrados para corregir datos con errores
	Scenario: Cancelar la eliminación de datos del formulario 
        Given el usuario se encuentra en la sección de edición de gastos 
        When   el usuario escoge la opción = “Eliminar gastos registrados manualmente”
        Then se mostrará una lista de gastos registrados a eliminar
        And será notificado con una "Notificación"
        And podrá marcar su "Conformidad" 
        And saldrá un mensaje = "Mensaje"
        And Los gastos se mantienen sin cambios

Examples:
|             Notificación          |    Conformidad    |         Mensaje           |
|       Desea eliminar este dato    |       False       |    “Nada fue eliminado”   |

Feature: Como paciente quiero editar mis gastos registrados para corregir datos con errores
	Scenario: Edición de datos del formulario en grupo
        Given el usuario se encuentra en la sección de edición de gastos 
        When   el usuario escoge la opción = “Eliminar gastos registrados manualmente”
        Then se mostrará una lista de gastos registrados a eliminar
        And  se seleccionará también los otros datos a borrar
        And será notificado con una "Notificación"
        And podrá marcar su "Conformidad" 
        And saldrá un mensaje = "Mensaje"

Examples:
|             Notificación            |    Conformidad    |         Mensaje          |
|       Desea eliminar estos datos    |       True        |    “Mensajes Eliminados”   |