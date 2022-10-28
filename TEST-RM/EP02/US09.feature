Feature: US09: Como paciente quiero registrar las compras realizadas en mi cuenta para controlar mis pedidos y acumular ventajas para compras futuras

    Scenario: Historial de compras
    Given que el paciente se encuentre en la sección de información de su cuenta
    When escoja la sección de historial de compras
    Then se mostrará el "Historial de compras"
    And "Código de compra"
Examples:
| Historial de compras | Código de compra |
| Jarabe               | #146sdf35        |
| Pastilla             | #24la2449        |

    Scenario: Puntos de descuento
    Given que el paciente se encuentre en la sección de información de su cuenta
    When el usuario escoja = "Puntos acumulados"
    Then se mostrará la cantidad de puntos acumulados por compras
Examples:
| Puntos acumulados |
| 12341             |
| 0                 |

    Scenario: Control de pedidos
    Given que el paciente se encuentre en su cuenta
    When seleccione la opción = “Seguir pedidos"
    Then podrá visualizar el tiempo en el que estará listo el pedido
Examples:
| Seguir pedidos        | 
| Ubicación del pedido  |
| Movimiento del pedido |
